-- =====================================================================
-- COMP 353 Fall 2026 - Country Basketball Club System (CBCS)
-- 01: DATABASE AND RELATIONAL SCHEMA (SAFE TO RERUN)
-- Based on TableCreation(3).sql. Designed for MySQL 8.0+.
--
-- Running this script repeatedly does NOT delete records or recreate tables.
-- Existing tables are NOT modified, even if their definitions differ.
-- To change existing structures, use ALTER TABLE or an explicit reset.
-- Triggers, fee seed records and v_MemberStatus are managed separately.
-- =====================================================================

CREATE DATABASE IF NOT EXISTS cbcs
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_0900_ai_ci;

USE cbcs;

-- 1. TABLES (created in foreign-key dependency order)

CREATE TABLE IF NOT EXISTS Person (
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
    CONSTRAINT uq_person_medcard UNIQUE (MedCardNo),
    KEY idx_person_dob (DOB)
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS Location (
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
);

CREATE TABLE IF NOT EXISTS LocationPhone (
    LocationID  INT         NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    CONSTRAINT pk_locphone PRIMARY KEY (LocationID, PhoneNumber),
    CONSTRAINT fk_locphone_loc FOREIGN KEY (LocationID)
        REFERENCES Location(LocationID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS Personnel (
    PersonID INT NOT NULL,
    Role     ENUM('Administrator','Captain','Coach','Assistant Coach','Other') NOT NULL,
    Mandate  ENUM('Volunteer','Salaried') NOT NULL,
    CONSTRAINT pk_personnel PRIMARY KEY (PersonID),
    CONSTRAINT fk_personnel_person FOREIGN KEY (PersonID)
        REFERENCES Person(PersonID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS PersonnelAssignment (
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


CREATE TABLE IF NOT EXISTS FamilyMember (
    PersonID INT NOT NULL,
    CONSTRAINT pk_family PRIMARY KEY (PersonID),
    CONSTRAINT fk_family_person FOREIGN KEY (PersonID)
        REFERENCES Person(PersonID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS FamilyLocation (
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


CREATE TABLE IF NOT EXISTS ClubMember (
    MemberNo   INT AUTO_INCREMENT,
    PersonID   INT  NOT NULL,
    DateJoined DATE NOT NULL,
    CONSTRAINT pk_clubmember PRIMARY KEY (MemberNo),
    CONSTRAINT uq_clubmember_person UNIQUE (PersonID),
    CONSTRAINT fk_clubmember_person FOREIGN KEY (PersonID)
        REFERENCES Person(PersonID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001;


CREATE TABLE IF NOT EXISTS MemberLocation (
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
    CONSTRAINT uq_memloc UNIQUE (MemberNo, LocationID, StartDate),
    KEY idx_memloc_current (MemberNo, EndDate)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS MemberFamily (
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
        REFERENCES FamilyMember(PersonID) ON UPDATE CASCADE ON DELETE RESTRICT, -- we want to restrict deletion of a family member if they are associated to a minor.
    CONSTRAINT ck_memfam_dates CHECK (EndDate IS NULL OR EndDate >= StartDate),
    CONSTRAINT uq_memfam UNIQUE (MemberNo, FamilyPersonID, StartDate)
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS Hobby (
    HobbyID INT AUTO_INCREMENT,
    Name    VARCHAR(50) NOT NULL,
    CONSTRAINT pk_hobby PRIMARY KEY (HobbyID),
    CONSTRAINT uq_hobby_name UNIQUE (Name)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS MemberHobby (
    MemberNo INT NOT NULL,
    HobbyID  INT NOT NULL,
    CONSTRAINT pk_memhobby PRIMARY KEY (MemberNo, HobbyID),
    CONSTRAINT fk_memhobby_member FOREIGN KEY (MemberNo)
        REFERENCES ClubMember(MemberNo) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_memhobby_hobby FOREIGN KEY (HobbyID)
        REFERENCES Hobby(HobbyID) ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS MemberMeasurement (
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


CREATE TABLE IF NOT EXISTS MembershipFee (
    Category ENUM('Minor','Major') NOT NULL,
    MinAge   INT           NOT NULL,
    MaxAge   INT           NOT NULL,
    Fee      DECIMAL(8,2)  NOT NULL,
    CONSTRAINT pk_fee PRIMARY KEY (Category),
    CONSTRAINT ck_fee_ages CHECK (MinAge <= MaxAge AND Fee > 0)
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS Payment (
    PaymentID      INT AUTO_INCREMENT,
    MemberNo       INT          NOT NULL,
    PaymentDate    DATE         NOT NULL,
    MembershipYear YEAR         NOT NULL,
    Amount         DECIMAL(8,2) NOT NULL,
    Method         ENUM('Cash','Debit','Credit') NOT NULL,
    CONSTRAINT pk_payment PRIMARY KEY (PaymentID),
    CONSTRAINT fk_payment_member FOREIGN KEY (MemberNo)
        REFERENCES ClubMember(MemberNo) ON UPDATE CASCADE,
    CONSTRAINT ck_payment_amount CHECK (Amount > 0),
    KEY idx_payment_member_year (MemberNo, MembershipYear)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS NBAGame (
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


CREATE TABLE IF NOT EXISTS NBAPlay (
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
