USE cbcs;

-- Seed standard categories only if not present.
INSERT INTO MembershipFee (Category, MinAge, MaxAge, Fee)
SELECT 'Minor', 6, 16, 100.00
WHERE NOT EXISTS (SELECT 1 FROM MembershipFee WHERE Category = 'Minor');

INSERT INTO MembershipFee (Category, MinAge, MaxAge, Fee)
SELECT 'Major', 17, 120, 200.00
WHERE NOT EXISTS (SELECT 1 FROM MembershipFee WHERE Category = 'Major');

-- 4. VIEW: member status (Active / Inactive)
--    Rule: a member whose fees for the PREVIOUS year were not fully paid is
--    inactive. Members who joined after the end of the previous year owe
--    nothing for it, so they are Active.
--    Fee category is based on the member's age on Dec 31 of the previous year.

CREATE OR REPLACE VIEW v_MemberStatus AS
SELECT cm.MemberNo,
       CASE
           WHEN cm.DateJoined > DATE(CONCAT(YEAR(CURDATE()) - 1, '-12-31')) THEN 'Active'
           WHEN COALESCE(pay.Paid, 0) >= COALESCE(f.Fee, 0)                 THEN 'Active'
           ELSE 'Inactive'
       END AS Status
FROM ClubMember cm
JOIN Person p ON p.PersonID = cm.PersonID
LEFT JOIN MembershipFee f
       ON TIMESTAMPDIFF(YEAR, p.DOB, DATE(CONCAT(YEAR(CURDATE()) - 1, '-12-31')))
          BETWEEN f.MinAge AND f.MaxAge
LEFT JOIN (SELECT MemberNo, SUM(Amount) AS Paid
             FROM Payment
            WHERE MembershipYear = YEAR(CURDATE()) - 1
            GROUP BY MemberNo) pay
       ON pay.MemberNo = cm.MemberNo;




