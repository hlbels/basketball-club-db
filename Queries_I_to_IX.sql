-- CBCS: all nine required tasks.
-- Target: MySQL

USE cbcs;
SET @LocationID = 82002;
SET @MemberNo = 85021;

-- I: All locations, including locations with no members or NBA players.
SELECT l.LocationID, l.Name AS LocationName,
       l.Street AS Address, l.City, l.Province, l.PostalCode,
       (SELECT GROUP_CONCAT(lp.PhoneNumber SEPARATOR ', ')
        FROM LocationPhone lp WHERE lp.LocationID = l.LocationID) AS PhoneNumbers,
       l.WebAddress, l.Type, l.MaxCapacity,
       (SELECT GROUP_CONCAT(CONCAT(p.FirstName, ' ', p.LastName) SEPARATOR ', ')
        FROM PersonnelAssignment pa
        JOIN Person p ON p.PersonID = pa.PersonID
        WHERE pa.LocationID = l.LocationID
          AND pa.Position IN ('General Manager', 'Manager')
          AND pa.StartDate <= CURDATE()
          AND (pa.EndDate IS NULL OR pa.EndDate >= CURDATE())) AS GeneralManagerName,
       (SELECT COUNT(DISTINCT pa.PersonID)
        FROM PersonnelAssignment pa
        WHERE pa.LocationID = l.LocationID
          AND pa.StartDate <= CURDATE()
          AND (pa.EndDate IS NULL OR pa.EndDate >= CURDATE())) AS NumberOfPersonnel,
       (SELECT COUNT(DISTINCT ml.MemberNo)
        FROM MemberLocation ml
        JOIN ClubMember cm ON cm.MemberNo = ml.MemberNo
        WHERE ml.LocationID = l.LocationID
          AND cm.DateJoined <= CURDATE()
          AND ml.StartDate <= CURDATE()
          AND (ml.EndDate IS NULL OR ml.EndDate >= CURDATE())) AS NumberOfClubMembers,
       (SELECT COUNT(DISTINCT ml.MemberNo)
        FROM MemberLocation ml
        JOIN ClubMember cm ON cm.MemberNo = ml.MemberNo
        WHERE ml.LocationID = l.LocationID
          AND cm.DateJoined <= CURDATE()
          AND ml.StartDate <= CURDATE()
          AND (ml.EndDate IS NULL OR ml.EndDate >= CURDATE())
          AND EXISTS (
              SELECT 1 FROM NBAPlay np
              JOIN NBAGame ng ON ng.GameID = np.GameID
              WHERE np.MemberNo = ml.MemberNo
                AND ng.GameDate <= CURDATE()
          )) AS MembersWithNBAExperience
FROM Location l
ORDER BY l.Name ASC, NumberOfClubMembers ASC;


-- II: Major NBA participants, ordered by game count.
WITH CurrentLocations AS (
    SELECT MemberNo, LocationID
    FROM MemberLocation
    WHERE StartDate <= CURDATE()
      AND (EndDate IS NULL OR EndDate >= CURDATE())
), LatestMeasurements AS (
    SELECT mm.MemberNo, mm.Height, mm.Weight
    FROM MemberMeasurement mm
    WHERE mm.MeasureDate = (
        SELECT MAX(m2.MeasureDate)
        FROM MemberMeasurement m2
        WHERE m2.MemberNo = mm.MemberNo
          AND m2.MeasureDate <= CURDATE()
    )
), GameCounts AS (
    SELECT np.MemberNo, COUNT(*) AS TotalNBAGames
    FROM NBAPlay np
    JOIN NBAGame ng ON ng.GameID = np.GameID
    WHERE ng.GameDate <= CURDATE()
    GROUP BY np.MemberNo
), MemberDetails AS (
    SELECT cm.MemberNo, cm.PersonID, cm.DateJoined,
           p.FirstName, p.LastName, p.DOB, p.SSN, p.MedCardNo,
           p.PhoneNumber, p.Street, p.City, p.Province, p.PostalCode,
           TIMESTAMPDIFF(YEAR, p.DOB, CURDATE()) AS Age,
           cl.LocationID, l.Name AS LocationName,
           ms.Status, mm.Height, mm.Weight,
           COALESCE(gc.TotalNBAGames, 0) AS TotalNBAGames
    FROM ClubMember cm
    JOIN Person p ON p.PersonID = cm.PersonID
    JOIN v_MemberStatus ms ON ms.MemberNo = cm.MemberNo
    LEFT JOIN CurrentLocations cl ON cl.MemberNo = cm.MemberNo
    LEFT JOIN Location l ON l.LocationID = cl.LocationID
    LEFT JOIN LatestMeasurements mm ON mm.MemberNo = cm.MemberNo
    LEFT JOIN GameCounts gc ON gc.MemberNo = cm.MemberNo
    WHERE cm.DateJoined <= CURDATE()
)
SELECT LocationName, MemberNo, FirstName, LastName, Age, City, Province,
       Status, TotalNBAGames
FROM MemberDetails
WHERE Age >= 17 AND TotalNBAGames >= 1
ORDER BY TotalNBAGames ASC, MemberNo ASC;


-- III(a): Profile and current family association for a minor.
WITH CurrentLocations AS (
    SELECT MemberNo, LocationID
    FROM MemberLocation
    WHERE StartDate <= CURDATE()
      AND (EndDate IS NULL OR EndDate >= CURDATE())
), LatestMeasurements AS (
    SELECT mm.MemberNo, mm.Height, mm.Weight
    FROM MemberMeasurement mm
    WHERE mm.MeasureDate = (
        SELECT MAX(m2.MeasureDate)
        FROM MemberMeasurement m2
        WHERE m2.MemberNo = mm.MemberNo
          AND m2.MeasureDate <= CURDATE()
    )
), GameCounts AS (
    SELECT np.MemberNo, COUNT(*) AS TotalNBAGames
    FROM NBAPlay np
    JOIN NBAGame ng ON ng.GameID = np.GameID
    WHERE ng.GameDate <= CURDATE()
    GROUP BY np.MemberNo
), MemberDetails AS (
    SELECT cm.MemberNo, cm.PersonID, cm.DateJoined,
           p.FirstName, p.LastName, p.DOB, p.SSN, p.MedCardNo,
           p.PhoneNumber, p.Street, p.City, p.Province, p.PostalCode,
           TIMESTAMPDIFF(YEAR, p.DOB, CURDATE()) AS Age,
           cl.LocationID, l.Name AS LocationName,
           ms.Status, mm.Height, mm.Weight,
           COALESCE(gc.TotalNBAGames, 0) AS TotalNBAGames
    FROM ClubMember cm
    JOIN Person p ON p.PersonID = cm.PersonID
    JOIN v_MemberStatus ms ON ms.MemberNo = cm.MemberNo
    LEFT JOIN CurrentLocations cl ON cl.MemberNo = cm.MemberNo
    LEFT JOIN Location l ON l.LocationID = cl.LocationID
    LEFT JOIN LatestMeasurements mm ON mm.MemberNo = cm.MemberNo
    LEFT JOIN GameCounts gc ON gc.MemberNo = cm.MemberNo
    WHERE cm.DateJoined <= CURDATE()
)
SELECT d.MemberNo, d.FirstName, d.LastName, d.DOB, d.DateJoined,
       d.SSN, d.MedCardNo, d.PhoneNumber, d.Street AS Address,
       d.City, d.Province, d.PostalCode,
       (SELECT GROUP_CONCAT(h.Name SEPARATOR ', ')
        FROM MemberHobby mh JOIN Hobby h ON h.HobbyID = mh.HobbyID
        WHERE mh.MemberNo = d.MemberNo) AS Hobbies,
       d.Status,
       mf.FamilyPersonID,
       fp.FirstName AS FamilyFirstName, fp.LastName AS FamilyLastName,
       mf.RelationshipType
FROM MemberDetails d
LEFT JOIN MemberFamily mf
       ON mf.MemberNo = d.MemberNo AND d.Age BETWEEN 6 AND 16
      AND mf.StartDate <= CURDATE()
      AND (mf.EndDate IS NULL OR mf.EndDate >= CURDATE())
LEFT JOIN Person fp ON fp.PersonID = mf.FamilyPersonID
WHERE d.MemberNo = @MemberNo;


-- III(b): All recorded height/weight history, up to today.
SELECT MemberNo, MeasureDate, Height, Weight
FROM MemberMeasurement
WHERE MemberNo = @MemberNo AND MeasureDate <= CURDATE()
ORDER BY MeasureDate ASC;


-- III(c): Payments made during the rolling last two years.
-- Actual PaymentDate, not MembershipYear.
SELECT PaymentID, MemberNo, PaymentDate, MembershipYear, Amount, Method
FROM Payment
WHERE MemberNo = @MemberNo
  AND PaymentDate >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
  AND PaymentDate <= CURDATE()
ORDER BY PaymentDate ASC, PaymentID ASC;


-- IV: All current members at the selected location, zero counts included
WITH CurrentLocations AS (
    SELECT MemberNo, LocationID
    FROM MemberLocation
    WHERE StartDate <= CURDATE()
      AND (EndDate IS NULL OR EndDate >= CURDATE())
), LatestMeasurements AS (
    SELECT mm.MemberNo, mm.Height, mm.Weight
    FROM MemberMeasurement mm
    WHERE mm.MeasureDate = (
        SELECT MAX(m2.MeasureDate)
        FROM MemberMeasurement m2
        WHERE m2.MemberNo = mm.MemberNo
          AND m2.MeasureDate <= CURDATE()
    )
), GameCounts AS (
    SELECT np.MemberNo, COUNT(*) AS TotalNBAGames
    FROM NBAPlay np
    JOIN NBAGame ng ON ng.GameID = np.GameID
    WHERE ng.GameDate <= CURDATE()
    GROUP BY np.MemberNo
), MemberDetails AS (
    SELECT cm.MemberNo, cm.PersonID, cm.DateJoined,
           p.FirstName, p.LastName, p.DOB, p.SSN, p.MedCardNo,
           p.PhoneNumber, p.Street, p.City, p.Province, p.PostalCode,
           TIMESTAMPDIFF(YEAR, p.DOB, CURDATE()) AS Age,
           cl.LocationID, l.Name AS LocationName,
           ms.Status, mm.Height, mm.Weight,
           COALESCE(gc.TotalNBAGames, 0) AS TotalNBAGames
    FROM ClubMember cm
    JOIN Person p ON p.PersonID = cm.PersonID
    JOIN v_MemberStatus ms ON ms.MemberNo = cm.MemberNo
    LEFT JOIN CurrentLocations cl ON cl.MemberNo = cm.MemberNo
    LEFT JOIN Location l ON l.LocationID = cl.LocationID
    LEFT JOIN LatestMeasurements mm ON mm.MemberNo = cm.MemberNo
    LEFT JOIN GameCounts gc ON gc.MemberNo = cm.MemberNo
    WHERE cm.DateJoined <= CURDATE()
)
SELECT d.MemberNo, d.FirstName, d.LastName, d.Age,
       (SELECT COUNT(*) FROM MemberHobby mh
        WHERE mh.MemberNo = d.MemberNo) AS NumberOfHobbies,
       d.Status, d.Height, d.Weight, d.TotalNBAGames
FROM MemberDetails d
WHERE d.LocationID = @LocationID
ORDER BY d.Age ASC, d.Height ASC, d.Weight ASC, d.MemberNo ASC;


-- V: Major NBA participants with their latest measurements.
WITH CurrentLocations AS (
    SELECT MemberNo, LocationID
    FROM MemberLocation
    WHERE StartDate <= CURDATE()
      AND (EndDate IS NULL OR EndDate >= CURDATE())
), LatestMeasurements AS (
    SELECT mm.MemberNo, mm.Height, mm.Weight
    FROM MemberMeasurement mm
    WHERE mm.MeasureDate = (
        SELECT MAX(m2.MeasureDate)
        FROM MemberMeasurement m2
        WHERE m2.MemberNo = mm.MemberNo
          AND m2.MeasureDate <= CURDATE()
    )
), GameCounts AS (
    SELECT np.MemberNo, COUNT(*) AS TotalNBAGames
    FROM NBAPlay np
    JOIN NBAGame ng ON ng.GameID = np.GameID
    WHERE ng.GameDate <= CURDATE()
    GROUP BY np.MemberNo
), MemberDetails AS (
    SELECT cm.MemberNo, cm.PersonID, cm.DateJoined,
           p.FirstName, p.LastName, p.DOB, p.SSN, p.MedCardNo,
           p.PhoneNumber, p.Street, p.City, p.Province, p.PostalCode,
           TIMESTAMPDIFF(YEAR, p.DOB, CURDATE()) AS Age,
           cl.LocationID, l.Name AS LocationName,
           ms.Status, mm.Height, mm.Weight,
           COALESCE(gc.TotalNBAGames, 0) AS TotalNBAGames
    FROM ClubMember cm
    JOIN Person p ON p.PersonID = cm.PersonID
    JOIN v_MemberStatus ms ON ms.MemberNo = cm.MemberNo
    LEFT JOIN CurrentLocations cl ON cl.MemberNo = cm.MemberNo
    LEFT JOIN Location l ON l.LocationID = cl.LocationID
    LEFT JOIN LatestMeasurements mm ON mm.MemberNo = cm.MemberNo
    LEFT JOIN GameCounts gc ON gc.MemberNo = cm.MemberNo
    WHERE cm.DateJoined <= CURDATE()
)
SELECT LocationName, MemberNo, FirstName, LastName, Age, City, Province,
       Status, Height, Weight, TotalNBAGames
FROM MemberDetails
WHERE Age >= 17 AND TotalNBAGames >= 1
ORDER BY LocationName ASC, Age ASC, MemberNo ASC;


-- VI: Parent-child means current Father/Mother links. No child-age restriction.
WITH CurrentLocations AS (
    SELECT MemberNo, LocationID
    FROM MemberLocation
    WHERE StartDate <= CURDATE()
      AND (EndDate IS NULL OR EndDate >= CURDATE())
), LatestMeasurements AS (
    SELECT mm.MemberNo, mm.Height, mm.Weight
    FROM MemberMeasurement mm
    WHERE mm.MeasureDate = (
        SELECT MAX(m2.MeasureDate)
        FROM MemberMeasurement m2
        WHERE m2.MemberNo = mm.MemberNo
          AND m2.MeasureDate <= CURDATE()
    )
), GameCounts AS (
    SELECT np.MemberNo, COUNT(*) AS TotalNBAGames
    FROM NBAPlay np
    JOIN NBAGame ng ON ng.GameID = np.GameID
    WHERE ng.GameDate <= CURDATE()
    GROUP BY np.MemberNo
), MemberDetails AS (
    SELECT cm.MemberNo, cm.PersonID, cm.DateJoined,
           p.FirstName, p.LastName, p.DOB, p.SSN, p.MedCardNo,
           p.PhoneNumber, p.Street, p.City, p.Province, p.PostalCode,
           TIMESTAMPDIFF(YEAR, p.DOB, CURDATE()) AS Age,
           cl.LocationID, l.Name AS LocationName,
           ms.Status, mm.Height, mm.Weight,
           COALESCE(gc.TotalNBAGames, 0) AS TotalNBAGames
    FROM ClubMember cm
    JOIN Person p ON p.PersonID = cm.PersonID
    JOIN v_MemberStatus ms ON ms.MemberNo = cm.MemberNo
    LEFT JOIN CurrentLocations cl ON cl.MemberNo = cm.MemberNo
    LEFT JOIN Location l ON l.LocationID = cl.LocationID
    LEFT JOIN LatestMeasurements mm ON mm.MemberNo = cm.MemberNo
    LEFT JOIN GameCounts gc ON gc.MemberNo = cm.MemberNo
    WHERE cm.DateJoined <= CURDATE()
)
SELECT d.LocationName, d.MemberNo, d.FirstName, d.LastName, d.Age,
       d.City, d.Province, d.Status, d.Height, d.Weight,
       child_counts.TotalChildren, d.TotalNBAGames
FROM MemberDetails d
JOIN (
    SELECT mf.FamilyPersonID, COUNT(DISTINCT mf.MemberNo) AS TotalChildren
    FROM MemberFamily mf
    JOIN ClubMember child ON child.MemberNo = mf.MemberNo
    WHERE mf.RelationshipType IN ('Father', 'Mother')
      AND mf.StartDate <= CURDATE()
      AND (mf.EndDate IS NULL OR mf.EndDate >= CURDATE())
      AND child.DateJoined <= CURDATE()
    GROUP BY mf.FamilyPersonID
) child_counts ON child_counts.FamilyPersonID = d.PersonID
WHERE d.Age >= 17 AND d.TotalNBAGames >= 1
ORDER BY d.LocationName ASC, d.Age ASC, d.MemberNo ASC;


-- VII: Location is the current PERSONNEL assignment, not the member branch.
WITH CurrentLocations AS (
    SELECT MemberNo, LocationID
    FROM MemberLocation
    WHERE StartDate <= CURDATE()
      AND (EndDate IS NULL OR EndDate >= CURDATE())
), LatestMeasurements AS (
    SELECT mm.MemberNo, mm.Height, mm.Weight
    FROM MemberMeasurement mm
    WHERE mm.MeasureDate = (
        SELECT MAX(m2.MeasureDate)
        FROM MemberMeasurement m2
        WHERE m2.MemberNo = mm.MemberNo
          AND m2.MeasureDate <= CURDATE()
    )
), GameCounts AS (
    SELECT np.MemberNo, COUNT(*) AS TotalNBAGames
    FROM NBAPlay np
    JOIN NBAGame ng ON ng.GameID = np.GameID
    WHERE ng.GameDate <= CURDATE()
    GROUP BY np.MemberNo
), MemberDetails AS (
    SELECT cm.MemberNo, cm.PersonID, cm.DateJoined,
           p.FirstName, p.LastName, p.DOB, p.SSN, p.MedCardNo,
           p.PhoneNumber, p.Street, p.City, p.Province, p.PostalCode,
           TIMESTAMPDIFF(YEAR, p.DOB, CURDATE()) AS Age,
           cl.LocationID, l.Name AS LocationName,
           ms.Status, mm.Height, mm.Weight,
           COALESCE(gc.TotalNBAGames, 0) AS TotalNBAGames
    FROM ClubMember cm
    JOIN Person p ON p.PersonID = cm.PersonID
    JOIN v_MemberStatus ms ON ms.MemberNo = cm.MemberNo
    LEFT JOIN CurrentLocations cl ON cl.MemberNo = cm.MemberNo
    LEFT JOIN Location l ON l.LocationID = cl.LocationID
    LEFT JOIN LatestMeasurements mm ON mm.MemberNo = cm.MemberNo
    LEFT JOIN GameCounts gc ON gc.MemberNo = cm.MemberNo
    WHERE cm.DateJoined <= CURDATE()
)
SELECT l.Name AS LocationName, staff.Role, d.MemberNo,
       d.FirstName, d.LastName, d.Age, d.Height, d.TotalNBAGames
FROM MemberDetails d
JOIN Personnel staff ON staff.PersonID = d.PersonID
JOIN PersonnelAssignment pa ON pa.PersonID = staff.PersonID
JOIN Location l ON l.LocationID = pa.LocationID
WHERE staff.Mandate = 'Volunteer'
  AND d.Status = 'Active'
  AND d.TotalNBAGames >= 1
  AND pa.StartDate <= CURDATE()
  AND (pa.EndDate IS NULL OR pa.EndDate >= CURDATE())
ORDER BY l.Name ASC, staff.Role ASC, d.MemberNo ASC;


-- VIII: Money collected during calendar 2025.
-- Fee category is determined at Dec 31 of the membership year. Location is at payment date.
-- Allocate each payment against its membership-year fee BEFORE filtering 2025.
WITH PaymentRunning AS (
    SELECT pay.PaymentID, pay.MemberNo, pay.PaymentDate, pay.MembershipYear,
           pay.Amount, f.Category, f.Fee,
           COALESCE(SUM(pay.Amount) OVER (
               PARTITION BY pay.MemberNo, pay.MembershipYear
               ORDER BY pay.PaymentDate, pay.PaymentID
               ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
           ), 0) AS PreviouslyPaid
    FROM Payment pay
    JOIN ClubMember cm ON cm.MemberNo = pay.MemberNo
    JOIN Person p ON p.PersonID = cm.PersonID
    JOIN MembershipFee f
      ON TIMESTAMPDIFF(YEAR, p.DOB,
           DATE(CONCAT(pay.MembershipYear, '-12-31')))
         BETWEEN f.MinAge AND f.MaxAge
    WHERE pay.PaymentDate <= CURDATE()
), PaymentParts AS (
    SELECT PaymentID, MemberNo, PaymentDate, MembershipYear, Category,
           LEAST(Amount, GREATEST(Fee - PreviouslyPaid, 0)) AS FeePortion,
           Amount - LEAST(Amount, GREATEST(Fee - PreviouslyPaid, 0)) AS DonationPortion
    FROM PaymentRunning
)
SELECT l.LocationID, l.Name AS LocationName,
       COALESCE(totals.TotalMembershipFees, 0) AS TotalMembershipFees,
       COALESCE(totals.TotalDonations, 0) AS TotalDonations
FROM Location l
LEFT JOIN (
    SELECT ml.LocationID, SUM(pp.FeePortion) AS TotalMembershipFees,
           SUM(pp.DonationPortion) AS TotalDonations
    FROM PaymentParts pp
    JOIN MemberLocation ml
      ON ml.MemberNo = pp.MemberNo
     AND ml.StartDate <= pp.PaymentDate
     AND (ml.EndDate IS NULL OR ml.EndDate >= pp.PaymentDate)
    WHERE pp.Category = 'Minor'
      AND pp.PaymentDate >= '2025-01-01'
      AND pp.PaymentDate < '2026-01-01'
    GROUP BY ml.LocationID
) totals ON totals.LocationID = l.LocationID
ORDER BY l.Name ASC;


-- IX: Active members with no donation in any recorded membership year.
WITH CurrentLocations AS (
    SELECT MemberNo, LocationID
    FROM MemberLocation
    WHERE StartDate <= CURDATE()
      AND (EndDate IS NULL OR EndDate >= CURDATE())
), LatestMeasurements AS (
    SELECT mm.MemberNo, mm.Height, mm.Weight
    FROM MemberMeasurement mm
    WHERE mm.MeasureDate = (
        SELECT MAX(m2.MeasureDate)
        FROM MemberMeasurement m2
        WHERE m2.MemberNo = mm.MemberNo
          AND m2.MeasureDate <= CURDATE()
    )
), GameCounts AS (
    SELECT np.MemberNo, COUNT(*) AS TotalNBAGames
    FROM NBAPlay np
    JOIN NBAGame ng ON ng.GameID = np.GameID
    WHERE ng.GameDate <= CURDATE()
    GROUP BY np.MemberNo
), MemberDetails AS (
    SELECT cm.MemberNo, cm.PersonID, cm.DateJoined,
           p.FirstName, p.LastName, p.DOB, p.SSN, p.MedCardNo,
           p.PhoneNumber, p.Street, p.City, p.Province, p.PostalCode,
           TIMESTAMPDIFF(YEAR, p.DOB, CURDATE()) AS Age,
           cl.LocationID, l.Name AS LocationName,
           ms.Status, mm.Height, mm.Weight,
           COALESCE(gc.TotalNBAGames, 0) AS TotalNBAGames
    FROM ClubMember cm
    JOIN Person p ON p.PersonID = cm.PersonID
    JOIN v_MemberStatus ms ON ms.MemberNo = cm.MemberNo
    LEFT JOIN CurrentLocations cl ON cl.MemberNo = cm.MemberNo
    LEFT JOIN Location l ON l.LocationID = cl.LocationID
    LEFT JOIN LatestMeasurements mm ON mm.MemberNo = cm.MemberNo
    LEFT JOIN GameCounts gc ON gc.MemberNo = cm.MemberNo
    WHERE cm.DateJoined <= CURDATE()
),
PaymentRunning AS (
    SELECT pay.PaymentID, pay.MemberNo, pay.PaymentDate, pay.MembershipYear,
           pay.Amount, f.Category, f.Fee,
           COALESCE(SUM(pay.Amount) OVER (
               PARTITION BY pay.MemberNo, pay.MembershipYear
               ORDER BY pay.PaymentDate, pay.PaymentID
               ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
           ), 0) AS PreviouslyPaid
    FROM Payment pay
    JOIN ClubMember cm ON cm.MemberNo = pay.MemberNo
    JOIN Person p ON p.PersonID = cm.PersonID
    JOIN MembershipFee f
      ON TIMESTAMPDIFF(YEAR, p.DOB,
           DATE(CONCAT(pay.MembershipYear, '-12-31')))
         BETWEEN f.MinAge AND f.MaxAge
    WHERE pay.PaymentDate <= CURDATE()
), PaymentParts AS (
    SELECT PaymentID, MemberNo, PaymentDate, MembershipYear, Category,
           LEAST(Amount, GREATEST(Fee - PreviouslyPaid, 0)) AS FeePortion,
           Amount - LEAST(Amount, GREATEST(Fee - PreviouslyPaid, 0)) AS DonationPortion
    FROM PaymentRunning
)
SELECT d.LocationName, d.MemberNo, d.FirstName, d.LastName,
       d.Age, d.City, d.Province
FROM MemberDetails d
WHERE d.Status = 'Active'
  AND NOT EXISTS (
      SELECT 1 FROM PaymentParts pp
      WHERE pp.MemberNo = d.MemberNo AND pp.DonationPortion > 0
  )
ORDER BY d.LocationName ASC, d.Age ASC, d.MemberNo ASC;
