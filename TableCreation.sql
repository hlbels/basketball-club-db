-- =====================================================================
-- COMP 353 Fall 2026 - Warm-up Project: Country Basketball Club System
-- =====================================================================

DROP DATABASE IF EXISTS cbcs;
CREATE DATABASE cbcs CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE cbcs;

-- 1. TABLES

CREATE TABLE Person (
    PersonID     INT AUTO_INCREMENT,
    FirstName    VARCHAR(50)  NOT NULL,
    LastName     VARCHAR(50)  NOT NULL,
    DOB          DATE         NOT NULL,
    SSN          CHAR(11)     NOT NULL,
    MedCardNo    VARCHAR(20)  NULL,
    PhoneNumber  VARCHAR(20)  NULL,
    EmailAddress VARCHAR(100) NULL,
    Street       VARCHAR(100) NULL,
    City         VARCHAR(50)  NULL,
    Province     CHAR(2)      NULL,
    PostalCode   VARCHAR(7)   NULL,
    CONSTRAINT pk_person PRIMARY KEY (PersonID),
    CONSTRAINT uq_person_ssn UNIQUE (SSN),
    CONSTRAINT uq_person_medcard UNIQUE (MedCardNo)
) ENGINE=InnoDB;


CREATE TABLE Location (
    LocationID  INT AUTO_INCREMENT,
    Name        VARCHAR(80)  NOT NULL,
    Type        ENUM('Head','Branch') NOT NULL,
    Street      VARCHAR(100) NOT NULL,
    City        VARCHAR(50)  NOT NULL,
    Province    CHAR(2)      NOT NULL,
    PostalCode  VARCHAR(7)   NOT NULL,
    WebAddress  VARCHAR(150) NULL,
    MaxCapacity INT          NOT NULL,
    CONSTRAINT pk_location PRIMARY KEY (LocationID),
    CONSTRAINT uq_location_name UNIQUE (Name),
    CONSTRAINT ck_location_capacity CHECK (MaxCapacity > 0)
) ENGINE=InnoDB;


CREATE TABLE LocationPhone (
    LocationID  INT         NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    CONSTRAINT pk_locphone PRIMARY KEY (LocationID, PhoneNumber),
    CONSTRAINT fk_locphone_loc FOREIGN KEY (LocationID)
        REFERENCES Location(LocationID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE Personnel (
    PersonID INT NOT NULL,
    Role     ENUM('Administrator','Captain','Coach','Assistant Coach','Other') NOT NULL,
    Mandate  ENUM('Volunteer','Salaried') NOT NULL,
    CONSTRAINT pk_personnel PRIMARY KEY (PersonID),
    CONSTRAINT fk_personnel_person FOREIGN KEY (PersonID)
        REFERENCES Person(PersonID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE PersonnelAssignment (
    AssignmentID INT AUTO_INCREMENT,
    PersonID     INT  NOT NULL,
    LocationID   INT  NOT NULL,
    Position     ENUM('General Manager','Deputy Manager','Treasurer','Secretary',
                      'Administrator','Manager','Other') NOT NULL DEFAULT 'Other',
    StartDate    DATE NOT NULL,
    EndDate      DATE NULL,
    CONSTRAINT pk_pers_assign PRIMARY KEY (AssignmentID),
    CONSTRAINT fk_pa_personnel FOREIGN KEY (PersonID)
        REFERENCES Personnel(PersonID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_pa_location FOREIGN KEY (LocationID)
        REFERENCES Location(LocationID) ON UPDATE CASCADE,
    CONSTRAINT ck_pa_dates CHECK (EndDate IS NULL OR EndDate >= StartDate),
    CONSTRAINT uq_pa_person_loc_start UNIQUE (PersonID, LocationID, StartDate)
) ENGINE=InnoDB;


CREATE TABLE FamilyMember (
    PersonID INT NOT NULL,
    CONSTRAINT pk_family PRIMARY KEY (PersonID),
    CONSTRAINT fk_family_person FOREIGN KEY (PersonID)
        REFERENCES Person(PersonID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE FamilyLocation (
    FamilyLocationID INT AUTO_INCREMENT,
    PersonID         INT  NOT NULL,
    LocationID       INT  NOT NULL,
    StartDate        DATE NOT NULL,
    EndDate          DATE NULL,
    CONSTRAINT pk_famloc PRIMARY KEY (FamilyLocationID),
    CONSTRAINT fk_famloc_family FOREIGN KEY (PersonID)
        REFERENCES FamilyMember(PersonID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_famloc_location FOREIGN KEY (LocationID)
        REFERENCES Location(LocationID) ON UPDATE CASCADE,
    CONSTRAINT ck_famloc_dates CHECK (EndDate IS NULL OR EndDate >= StartDate),
    CONSTRAINT uq_famloc UNIQUE (PersonID, LocationID, StartDate)
) ENGINE=InnoDB;


CREATE TABLE ClubMember (
    MemberNo   INT AUTO_INCREMENT,
    PersonID   INT  NOT NULL,
    DateJoined DATE NOT NULL,
    CONSTRAINT pk_clubmember PRIMARY KEY (MemberNo),
    CONSTRAINT uq_clubmember_person UNIQUE (PersonID),
    CONSTRAINT fk_clubmember_person FOREIGN KEY (PersonID)
        REFERENCES Person(PersonID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001;


CREATE TABLE MemberLocation (
    MemberLocationID INT AUTO_INCREMENT,
    MemberNo         INT  NOT NULL,
    LocationID       INT  NOT NULL,
    StartDate        DATE NOT NULL,
    EndDate          DATE NULL,
    CONSTRAINT pk_memloc PRIMARY KEY (MemberLocationID),
    CONSTRAINT fk_memloc_member FOREIGN KEY (MemberNo)
        REFERENCES ClubMember(MemberNo) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_memloc_location FOREIGN KEY (LocationID)
        REFERENCES Location(LocationID) ON UPDATE CASCADE,
    CONSTRAINT ck_memloc_dates CHECK (EndDate IS NULL OR EndDate >= StartDate),
    CONSTRAINT uq_memloc UNIQUE (MemberNo, LocationID, StartDate)
) ENGINE=InnoDB;

CREATE TABLE MemberFamily (
    MemberFamilyID   INT AUTO_INCREMENT,
    MemberNo         INT  NOT NULL,       
    FamilyPersonID   INT  NOT NULL,         
    RelationshipType ENUM('Father','Mother','Grandfather','Grandmother',
                          'Tutor','Partner','Friend','Other') NOT NULL,
    StartDate        DATE NOT NULL,
    EndDate          DATE NULL,
    CONSTRAINT pk_memfam PRIMARY KEY (MemberFamilyID),
    CONSTRAINT fk_memfam_member FOREIGN KEY (MemberNo)
        REFERENCES ClubMember(MemberNo) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_memfam_family FOREIGN KEY (FamilyPersonID)
        REFERENCES FamilyMember(PersonID) ON UPDATE CASCADE,
    CONSTRAINT ck_memfam_dates CHECK (EndDate IS NULL OR EndDate >= StartDate),
    CONSTRAINT uq_memfam UNIQUE (MemberNo, FamilyPersonID, StartDate)
) ENGINE=InnoDB;


CREATE TABLE Hobby (
    HobbyID INT AUTO_INCREMENT,
    Name    VARCHAR(50) NOT NULL,
    CONSTRAINT pk_hobby PRIMARY KEY (HobbyID),
    CONSTRAINT uq_hobby_name UNIQUE (Name)
) ENGINE=InnoDB;

CREATE TABLE MemberHobby (
    MemberNo INT NOT NULL,
    HobbyID  INT NOT NULL,
    CONSTRAINT pk_memhobby PRIMARY KEY (MemberNo, HobbyID),
    CONSTRAINT fk_memhobby_member FOREIGN KEY (MemberNo)
        REFERENCES ClubMember(MemberNo) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_memhobby_hobby FOREIGN KEY (HobbyID)
        REFERENCES Hobby(HobbyID) ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE MemberMeasurement (
    MeasurementID INT AUTO_INCREMENT,
    MemberNo      INT           NOT NULL,
    MeasureDate   DATE          NOT NULL,
    Height        DECIMAL(5,1)  NOT NULL,     -- cm
    Weight        DECIMAL(5,1)  NOT NULL,     -- kg
    CONSTRAINT pk_measure PRIMARY KEY (MeasurementID),
    CONSTRAINT fk_measure_member FOREIGN KEY (MemberNo)
        REFERENCES ClubMember(MemberNo) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT ck_measure_vals CHECK (Height > 0 AND Weight > 0),
    CONSTRAINT uq_measure UNIQUE (MemberNo, MeasureDate)
) ENGINE=InnoDB;


CREATE TABLE MembershipFee (
    Category ENUM('Minor','Major') NOT NULL,
    MinAge   INT           NOT NULL,
    MaxAge   INT           NOT NULL,
    Fee      DECIMAL(8,2)  NOT NULL,
    CONSTRAINT pk_fee PRIMARY KEY (Category),
    CONSTRAINT ck_fee_ages CHECK (MinAge <= MaxAge AND Fee > 0)
) ENGINE=InnoDB;


CREATE TABLE Payment (
    PaymentID      INT AUTO_INCREMENT,
    MemberNo       INT          NOT NULL,
    PaymentDate    DATE         NOT NULL,
    MembershipYear YEAR         NOT NULL,
    Amount         DECIMAL(8,2) NOT NULL,
    Method         ENUM('Cash','Debit','Credit') NOT NULL,
    CONSTRAINT pk_payment PRIMARY KEY (PaymentID),
    CONSTRAINT fk_payment_member FOREIGN KEY (MemberNo)
        REFERENCES ClubMember(MemberNo) ON UPDATE CASCADE,
    CONSTRAINT ck_payment_amount CHECK (Amount > 0)
) ENGINE=InnoDB;

CREATE TABLE NBAGame (
    GameID        INT AUTO_INCREMENT,
    GameDate      DATE         NOT NULL,
    GameLocation  VARCHAR(100) NOT NULL,      
    TeamOne       VARCHAR(60)  NOT NULL,
    TeamTwo       VARCHAR(60)  NOT NULL,
    TeamOneScore  INT          NOT NULL,
    TeamTwoScore  INT          NOT NULL,
    CONSTRAINT pk_nbagame PRIMARY KEY (GameID),
    CONSTRAINT ck_game_teams CHECK (TeamOne <> TeamTwo),
    CONSTRAINT ck_game_scores CHECK (TeamOneScore >= 0 AND TeamTwoScore >= 0)
) ENGINE=InnoDB;


CREATE TABLE NBAPlay (
    GameID              INT         NOT NULL,
    MemberNo            INT         NOT NULL,
    TeamPlayedFor       VARCHAR(60) NOT NULL,
    TeamPlayedAgainst   VARCHAR(60) NOT NULL,
    PlayerScore         INT         NOT NULL DEFAULT 0,
    PerformanceDetails  VARCHAR(255) NULL,   
    CONSTRAINT pk_nbaplay PRIMARY KEY (GameID, MemberNo),
    CONSTRAINT fk_nbaplay_game FOREIGN KEY (GameID)
        REFERENCES NBAGame(GameID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_nbaplay_member FOREIGN KEY (MemberNo)
        REFERENCES ClubMember(MemberNo) ON UPDATE CASCADE,
    CONSTRAINT ck_nbaplay_teams CHECK (TeamPlayedFor <> TeamPlayedAgainst),
    CONSTRAINT ck_nbaplay_score CHECK (PlayerScore >= 0)
) ENGINE=InnoDB;

-- Useful indexes for the queries
CREATE INDEX idx_memloc_current ON MemberLocation (MemberNo, EndDate);
CREATE INDEX idx_payment_member_year ON Payment (MemberNo, MembershipYear);
CREATE INDEX idx_person_dob ON Person (DOB);


-- 2. TRIGGERS 

DELIMITER $$

-- A new club member must be at least 6 years old at registration
CREATE TRIGGER trg_member_min_age
BEFORE INSERT ON ClubMember
FOR EACH ROW
BEGIN
    DECLARE v_age INT;
    SELECT TIMESTAMPDIFF(YEAR, DOB, NEW.DateJoined) INTO v_age
      FROM Person WHERE PersonID = NEW.PersonID;
    IF v_age IS NULL OR v_age < 6 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'A club member must be at least 6 years old at registration';
    END IF;
END$$

-- Personnel works at only one location at any time (no overlapping periods)
CREATE TRIGGER trg_pa_no_overlap
BEFORE INSERT ON PersonnelAssignment
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM PersonnelAssignment pa
                WHERE pa.PersonID = NEW.PersonID
                  AND pa.StartDate <= COALESCE(NEW.EndDate, '9999-12-31')
                  AND COALESCE(pa.EndDate, '9999-12-31') >= NEW.StartDate) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Personnel cannot work at two locations at the same time';
    END IF;
END$$

-- Family member associated with only one location at a time
CREATE TRIGGER trg_famloc_no_overlap
BEFORE INSERT ON FamilyLocation
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM FamilyLocation fl
                WHERE fl.PersonID = NEW.PersonID
                  AND fl.StartDate <= COALESCE(NEW.EndDate, '9999-12-31')
                  AND COALESCE(fl.EndDate, '9999-12-31') >= NEW.StartDate) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Family member cannot be associated with two locations at the same time';
    END IF;
END$$

-- Club member associated with only one location at a time
CREATE TRIGGER trg_memloc_no_overlap
BEFORE INSERT ON MemberLocation
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM MemberLocation ml
                WHERE ml.MemberNo = NEW.MemberNo
                  AND ml.StartDate <= COALESCE(NEW.EndDate, '9999-12-31')
                  AND COALESCE(ml.EndDate, '9999-12-31') >= NEW.StartDate) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Club member cannot belong to two locations at the same time';
    END IF;
END$$

-- Payments: at most 4 installments per member per membership year
CREATE TRIGGER trg_payment_max_installments
BEFORE INSERT ON Payment
FOR EACH ROW
BEGIN
    IF (SELECT COUNT(*) FROM Payment
         WHERE MemberNo = NEW.MemberNo
           AND MembershipYear = NEW.MembershipYear) >= 4 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'A maximum of 4 installments per membership year is allowed';
    END IF;
END$$

-- Prevents inserting a person whose date of birth is less than 6 years before today
CREATE TRIGGER trg_person_dob_insert
BEFORE INSERT ON Person
FOR EACH ROW
BEGIN
    IF NEW.DOB > DATE_SUB(CURDATE(), INTERVAL 6 YEAR) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'DOB must be at least 6 years before today';
    END IF;
END$$

-- Applies the same minimum-age rule when a person's date of birth is updated
CREATE TRIGGER trg_person_dob_update
BEFORE UPDATE ON Person
FOR EACH ROW
BEGIN
    IF NEW.DOB > DATE_SUB(CURDATE(), INTERVAL 6 YEAR) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'DOB must be at least 6 years before today';
    END IF;
END$$

DELIMITER ;


-- 3. REFERENCE DATA REQUIRED BY THE SCHEMA (fees)

INSERT INTO MembershipFee (Category, MinAge, MaxAge, Fee) VALUES
    ('Minor',  6, 16, 100.00),
    ('Major', 17, 120, 200.00);


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
