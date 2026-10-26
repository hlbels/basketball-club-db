USE cbcs;

-- Person (42 demo records) 
-- Columns: PersonID, FirstName, LastName, DOB, SSN, MedCardNo, PhoneNumber, EmailAddress, Street, City, Province, PostalCode
INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81001, 'Alexandre', 'Roy', '1990-02-15', '000-40-0001', 'DEMO-MC-001', '514-555-1001', 'cbcs.demo01@example.com', '101 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81001);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81002, 'Nadia', 'Tremblay', '1992-09-08', '000-40-0002', 'DEMO-MC-002', '514-555-1002', 'cbcs.demo02@example.com', '102 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81002);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81003, 'Michel', 'Gagnon', '1978-03-20', '000-40-0003', 'DEMO-MC-003', '514-555-1003', 'cbcs.demo03@example.com', '103 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81003);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81004, 'Sophie', 'Bouchard', '1981-04-11', '000-40-0004', 'DEMO-MC-004', '514-555-1004', 'cbcs.demo04@example.com', '104 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81004);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81005, 'David', 'Lefebvre', '1984-11-09', '000-40-0005', 'DEMO-MC-005', '514-555-1005', 'cbcs.demo05@example.com', '105 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81005);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81006, 'Chloé', 'Fortin', '1980-01-17', '000-40-0006', 'DEMO-MC-006', '514-555-1006', 'cbcs.demo06@example.com', '106 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81006);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81007, 'Éric', 'Morin', '1983-06-04', '000-40-0007', 'DEMO-MC-007', '514-555-1007', 'cbcs.demo07@example.com', '107 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81007);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81008, 'Amélie', 'Poirier', '1988-10-20', '000-40-0008', 'DEMO-MC-008', '514-555-1008', 'cbcs.demo08@example.com', '108 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81008);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81009, 'Marc', 'Pelletier', '1991-12-05', '000-40-0009', 'DEMO-MC-009', '514-555-1009', 'cbcs.demo09@example.com', '109 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81009);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81010, 'Isabelle', 'Côté', '1990-08-12', '000-40-0010', 'DEMO-MC-010', '514-555-1010', 'cbcs.demo10@example.com', '110 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81010);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81011, 'Julien', 'Mercier', '1986-02-27', '000-40-0011', 'DEMO-MC-011', '514-555-1011', 'cbcs.demo11@example.com', '111 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81011);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81012, 'Karine', 'Dufour', '1990-09-03', '000-40-0012', 'DEMO-MC-012', '514-555-1012', 'cbcs.demo12@example.com', '112 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81012);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81013, 'Samuel', 'Lavoie', '1998-05-06', '000-40-0013', 'DEMO-MC-013', '514-555-1013', 'cbcs.demo13@example.com', '113 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81013);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81014, 'Camille', 'Girard', '2000-12-16', '000-40-0014', 'DEMO-MC-014', '514-555-1014', 'cbcs.demo14@example.com', '114 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81014);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81015, 'Olivier', 'Dupuis', '2002-06-22', '000-40-0015', 'DEMO-MC-015', '514-555-1015', 'cbcs.demo15@example.com', '115 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81015);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81016, 'Emma', 'Bergeron', '2001-07-09', '000-40-0016', 'DEMO-MC-016', '514-555-1016', 'cbcs.demo16@example.com', '116 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81016);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81017, 'Louis', 'Beaulieu', '1999-01-02', '000-40-0017', 'DEMO-MC-017', '514-555-1017', 'cbcs.demo17@example.com', '117 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81017);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81018, 'Maya', 'Deschamps', '2003-09-15', '000-40-0018', 'DEMO-MC-018', '514-555-1018', 'cbcs.demo18@example.com', '118 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81018);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81019, 'Adam', 'Turcotte', '2002-08-03', '000-40-0019', 'DEMO-MC-019', '514-555-1019', 'cbcs.demo19@example.com', '119 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81019);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81020, 'Jade', 'Lemieux', '1997-04-01', '000-40-0020', 'DEMO-MC-020', '514-555-1020', 'cbcs.demo20@example.com', '120 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81020);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81021, 'Noah', 'Roy', '2011-03-12', '000-40-0021', 'DEMO-MC-021', '514-555-1021', 'cbcs.demo21@example.com', '121 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81021);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81022, 'Léa', 'Roy', '2013-04-22', '000-40-0022', 'DEMO-MC-022', '514-555-1022', 'cbcs.demo22@example.com', '122 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81022);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81023, 'Émile', 'Tremblay', '2012-05-09', '000-40-0023', 'DEMO-MC-023', '514-555-1023', 'cbcs.demo23@example.com', '123 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81023);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81024, 'Alice', 'Tremblay', '2013-10-18', '000-40-0024', 'DEMO-MC-024', '514-555-1024', 'cbcs.demo24@example.com', '124 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81024);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81025, 'Zoé', 'Gagnon', '2014-06-11', '000-40-0025', 'DEMO-MC-025', '514-555-1025', 'cbcs.demo25@example.com', '125 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81025);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81026, 'Nathan', 'Bouchard', '2016-02-16', '000-40-0026', 'DEMO-MC-026', '514-555-1026', 'cbcs.demo26@example.com', '126 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81026);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81027, 'Eva', 'Martin', '2015-07-21', '000-40-0027', 'DEMO-MC-027', '514-555-1027', 'cbcs.demo27@example.com', '127 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81027);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81028, 'Liam', 'Martin', '2012-01-03', '000-40-0028', 'DEMO-MC-028', '514-555-1028', 'cbcs.demo28@example.com', '128 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81028);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81029, 'Sarah', 'Nguyen', '2017-07-12', '000-40-0029', 'DEMO-MC-029', '514-555-1029', 'cbcs.demo29@example.com', '129 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81029);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81030, 'Hugo', 'Singh', '2014-08-01', '000-40-0030', 'DEMO-MC-030', '514-555-1030', 'cbcs.demo30@example.com', '130 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81030);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81031, 'Inès', 'Dubois', '2016-09-06', '000-40-0031', 'DEMO-MC-031', '514-555-1031', 'cbcs.demo31@example.com', '131 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81031);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81032, 'Lucas', 'Moreau', '2018-01-26', '000-40-0032', 'DEMO-MC-032', '514-555-1032', 'cbcs.demo32@example.com', '132 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81032);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81033, 'Mila', 'Khan', '2017-12-08', '000-40-0033', 'DEMO-MC-033', '514-555-1033', 'cbcs.demo33@example.com', '133 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81033);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81034, 'Thomas', 'Khan', '2019-04-05', '000-40-0034', 'DEMO-MC-034', '514-555-1034', 'cbcs.demo34@example.com', '134 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81034);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81035, 'Claire', 'Martin', '1984-02-17', '000-40-0035', 'DEMO-MC-035', '514-555-1035', 'cbcs.demo35@example.com', '135 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81035);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81036, 'Linh', 'Nguyen', '1982-04-05', '000-40-0036', 'DEMO-MC-036', '514-555-1036', 'cbcs.demo36@example.com', '136 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81036);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81037, 'Raj', 'Singh', '1979-09-11', '000-40-0037', 'DEMO-MC-037', '514-555-1037', 'cbcs.demo37@example.com', '137 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81037);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81038, 'Anaïs', 'Dubois', '1987-11-23', '000-40-0038', 'DEMO-MC-038', '514-555-1038', 'cbcs.demo38@example.com', '138 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81038);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81039, 'Pascal', 'Moreau', '1980-07-29', '000-40-0039', 'DEMO-MC-039', '514-555-1039', 'cbcs.demo39@example.com', '139 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81039);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81040, 'Fatima', 'Khan', '1986-03-03', '000-40-0040', 'DEMO-MC-040', '514-555-1040', 'cbcs.demo40@example.com', '140 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81040);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81041, 'Marie', 'Landry', '1985-04-08', '000-40-0041', 'DEMO-MC-041', '514-555-1041', 'cbcs.demo41@example.com', '141 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81041);

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `DOB`, `SSN`, `MedCardNo`, `PhoneNumber`, `EmailAddress`, `Street`, `City`, `Province`, `PostalCode`)
SELECT 81042, 'Elena', 'Landry', '2016-07-20', '000-40-0042', 'DEMO-MC-042', '514-555-1042', 'cbcs.demo42@example.com', '142 Demo Street', 'Montréal', 'QC', 'H2X 1A1'
WHERE NOT EXISTS (SELECT 1 FROM `Person` WHERE `PersonID` = 81042);

-- Location (1 demo records) — one Head inserted first
-- Columns: LocationID, Name, Type, Street, City, Province, PostalCode, WebAddress, MaxCapacity
INSERT INTO `Location` (`LocationID`, `Name`, `Type`, `Street`, `City`, `Province`, `PostalCode`, `WebAddress`, `MaxCapacity`)
SELECT 82001, 'CBCS Montreal Central', 'Head', '101 Training Avenue', 'Montréal', 'QC', 'H2X 1A1', 'https://example.com/cbcs/montreal', 150
WHERE NOT EXISTS (SELECT 1 FROM `Location` WHERE `LocationID` = 82001);

-- Location (9 demo records) — nine branches
-- Columns: LocationID, Name, Type, Street, City, Province, PostalCode, WebAddress, MaxCapacity
INSERT INTO `Location` (`LocationID`, `Name`, `Type`, `Street`, `City`, `Province`, `PostalCode`, `WebAddress`, `MaxCapacity`)
SELECT 82002, 'CBCS Laval', 'Branch', '202 Court Street', 'Laval', 'QC', 'H7A 1B2', 'https://example.com/cbcs/laval', 90
WHERE NOT EXISTS (SELECT 1 FROM `Location` WHERE `LocationID` = 82002);

INSERT INTO `Location` (`LocationID`, `Name`, `Type`, `Street`, `City`, `Province`, `PostalCode`, `WebAddress`, `MaxCapacity`)
SELECT 82003, 'CBCS Longueuil', 'Branch', '303 Hoops Boulevard', 'Longueuil', 'QC', 'J4B 2C3', 'https://example.com/cbcs/longueuil', 90
WHERE NOT EXISTS (SELECT 1 FROM `Location` WHERE `LocationID` = 82003);

INSERT INTO `Location` (`LocationID`, `Name`, `Type`, `Street`, `City`, `Province`, `PostalCode`, `WebAddress`, `MaxCapacity`)
SELECT 82004, 'CBCS Brossard', 'Branch', '404 Basket Road', 'Brossard', 'QC', 'J4W 3D4', 'https://example.com/cbcs/brossard', 80
WHERE NOT EXISTS (SELECT 1 FROM `Location` WHERE `LocationID` = 82004);

INSERT INTO `Location` (`LocationID`, `Name`, `Type`, `Street`, `City`, `Province`, `PostalCode`, `WebAddress`, `MaxCapacity`)
SELECT 82005, 'CBCS West Island', 'Branch', '505 Training Lane', 'Pointe-Claire', 'QC', 'H9R 4E5', 'https://example.com/cbcs/westisland', 80
WHERE NOT EXISTS (SELECT 1 FROM `Location` WHERE `LocationID` = 82005);

INSERT INTO `Location` (`LocationID`, `Name`, `Type`, `Street`, `City`, `Province`, `PostalCode`, `WebAddress`, `MaxCapacity`)
SELECT 82006, 'CBCS Verdun', 'Branch', '606 Team Avenue', 'Montréal', 'QC', 'H4G 5F6', 'https://example.com/cbcs/verdun', 75
WHERE NOT EXISTS (SELECT 1 FROM `Location` WHERE `LocationID` = 82006);

INSERT INTO `Location` (`LocationID`, `Name`, `Type`, `Street`, `City`, `Province`, `PostalCode`, `WebAddress`, `MaxCapacity`)
SELECT 82007, 'CBCS Saint-Laurent', 'Branch', '707 Athlete Drive', 'Montréal', 'QC', 'H4S 6G7', 'https://example.com/cbcs/saintlaurent', 75
WHERE NOT EXISTS (SELECT 1 FROM `Location` WHERE `LocationID` = 82007);

INSERT INTO `Location` (`LocationID`, `Name`, `Type`, `Street`, `City`, `Province`, `PostalCode`, `WebAddress`, `MaxCapacity`)
SELECT 82008, 'CBCS Quebec City', 'Branch', '808 Gym Street', 'Québec', 'QC', 'G1A 7H8', 'https://example.com/cbcs/quebec', 90
WHERE NOT EXISTS (SELECT 1 FROM `Location` WHERE `LocationID` = 82008);

INSERT INTO `Location` (`LocationID`, `Name`, `Type`, `Street`, `City`, `Province`, `PostalCode`, `WebAddress`, `MaxCapacity`)
SELECT 82009, 'CBCS Sherbrooke', 'Branch', '909 Victory Lane', 'Sherbrooke', 'QC', 'J1A 8J9', 'https://example.com/cbcs/sherbrooke', 70
WHERE NOT EXISTS (SELECT 1 FROM `Location` WHERE `LocationID` = 82009);

INSERT INTO `Location` (`LocationID`, `Name`, `Type`, `Street`, `City`, `Province`, `PostalCode`, `WebAddress`, `MaxCapacity`)
SELECT 82010, 'CBCS Gatineau', 'Branch', '1100 Sports Avenue', 'Gatineau', 'QC', 'J8X 9K1', 'https://example.com/cbcs/gatineau', 80
WHERE NOT EXISTS (SELECT 1 FROM `Location` WHERE `LocationID` = 82010);

-- LocationPhone (11 demo records)
-- Columns: LocationID, PhoneNumber
INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82001, '514-555-0100'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82001 AND `PhoneNumber` = '514-555-0100');

INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82002, '514-555-0101'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82002 AND `PhoneNumber` = '514-555-0101');

INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82003, '514-555-0102'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82003 AND `PhoneNumber` = '514-555-0102');

INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82004, '514-555-0103'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82004 AND `PhoneNumber` = '514-555-0103');

INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82005, '514-555-0104'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82005 AND `PhoneNumber` = '514-555-0104');

INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82006, '514-555-0105'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82006 AND `PhoneNumber` = '514-555-0105');

INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82007, '514-555-0106'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82007 AND `PhoneNumber` = '514-555-0106');

INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82008, '514-555-0107'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82008 AND `PhoneNumber` = '514-555-0107');

INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82009, '514-555-0108'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82009 AND `PhoneNumber` = '514-555-0108');

INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82010, '514-555-0109'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82010 AND `PhoneNumber` = '514-555-0109');

INSERT INTO `LocationPhone` (`LocationID`, `PhoneNumber`)
SELECT 82001, '514-555-0199'
WHERE NOT EXISTS (SELECT 1 FROM `LocationPhone` WHERE `LocationID` = 82001 AND `PhoneNumber` = '514-555-0199');

-- Personnel (14 demo records) — includes 3 volunteer players
-- Columns: PersonID, Role, Mandate
INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81001, 'Coach', 'Volunteer'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81001);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81002, 'Captain', 'Volunteer'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81002);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81003, 'Administrator', 'Salaried'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81003);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81004, 'Administrator', 'Salaried'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81004);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81005, 'Administrator', 'Salaried'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81005);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81006, 'Administrator', 'Volunteer'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81006);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81007, 'Administrator', 'Salaried'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81007);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81008, 'Coach', 'Salaried'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81008);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81009, 'Captain', 'Salaried'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81009);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81010, 'Assistant Coach', 'Salaried'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81010);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81011, 'Other', 'Volunteer'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81011);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81012, 'Coach', 'Salaried'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81012);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81013, 'Coach', 'Volunteer'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81013);

INSERT INTO `Personnel` (`PersonID`, `Role`, `Mandate`)
SELECT 81014, 'Assistant Coach', 'Salaried'
WHERE NOT EXISTS (SELECT 1 FROM `Personnel` WHERE `PersonID` = 81014);

-- PersonnelAssignment (14 demo records) — all periods are disjoint per person
-- Columns: AssignmentID, PersonID, LocationID, Position, StartDate, EndDate
INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83001, 81001, 82002, 'Other', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83001);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83002, 81002, 82003, 'Manager', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83002);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83003, 81003, 82001, 'General Manager', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83003);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83004, 81004, 82001, 'Deputy Manager', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83004);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83005, 81005, 82001, 'Treasurer', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83005);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83006, 81006, 82001, 'Secretary', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83006);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83007, 81007, 82001, 'Administrator', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83007);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83008, 81008, 82004, 'Manager', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83008);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83009, 81009, 82005, 'Manager', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83009);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83010, 81010, 82006, 'Other', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83010);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83011, 81011, 82007, 'Other', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83011);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83012, 81012, 82008, 'Manager', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83012);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83013, 81013, 82009, 'Other', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83013);

INSERT INTO `PersonnelAssignment` (`AssignmentID`, `PersonID`, `LocationID`, `Position`, `StartDate`, `EndDate`)
SELECT 83014, 81014, 82010, 'Other', '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `PersonnelAssignment` WHERE `AssignmentID` = 83014);

-- FamilyMember (11 demo records) — includes adult club members 81001 and 81002
-- Columns: PersonID
INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81001
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81001);

INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81002
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81002);

INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81003
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81003);

INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81004
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81004);

INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81035
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81035);

INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81036
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81036);

INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81037
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81037);

INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81038
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81038);

INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81039
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81039);

INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81040
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81040);

INSERT INTO `FamilyMember` (`PersonID`)
SELECT 81041
WHERE NOT EXISTS (SELECT 1 FROM `FamilyMember` WHERE `PersonID` = 81041);

-- FamilyLocation (11 demo records)
-- Columns: FamilyLocationID, PersonID, LocationID, StartDate, EndDate
INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84001, 81001, 82002, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84001);

INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84002, 81002, 82003, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84002);

INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84003, 81003, 82001, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84003);

INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84004, 81004, 82001, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84004);

INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84005, 81035, 82004, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84005);

INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84006, 81036, 82005, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84006);

INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84007, 81037, 82006, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84007);

INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84008, 81038, 82007, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84008);

INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84009, 81039, 82008, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84009);

INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84010, 81040, 82009, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84010);

INSERT INTO `FamilyLocation` (`FamilyLocationID`, `PersonID`, `LocationID`, `StartDate`, `EndDate`)
SELECT 84011, 81041, 82010, '2023-08-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `FamilyLocation` WHERE `FamilyLocationID` = 84011);

-- ClubMember (25 demo records) — 10 adults and 15 minors; fixed demo IDs for reliable queries
-- Columns: MemberNo, PersonID, DateJoined
INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85001, 81001, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85001);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85002, 81002, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85002);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85013, 81013, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85013);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85014, 81014, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85014);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85015, 81015, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85015);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85016, 81016, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85016);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85017, 81017, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85017);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85018, 81018, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85018);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85019, 81019, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85019);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85020, 81020, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85020);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85021, 81021, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85021);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85022, 81022, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85022);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85023, 81023, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85023);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85024, 81024, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85024);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85025, 81025, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85025);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85026, 81026, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85026);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85027, 81027, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85027);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85028, 81028, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85028);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85029, 81029, '2025-03-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85029);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85030, 81030, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85030);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85031, 81031, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85031);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85032, 81032, '2025-03-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85032);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85033, 81033, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85033);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85034, 81034, '2025-06-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85034);

INSERT INTO `ClubMember` (`MemberNo`, `PersonID`, `DateJoined`)
SELECT 85042, 81042, '2024-09-01'
WHERE NOT EXISTS (SELECT 1 FROM `ClubMember` WHERE `MemberNo` = 85042);

-- MemberLocation (25 demo records) — no conflicting time intervals
-- Columns: MemberLocationID, MemberNo, LocationID, StartDate, EndDate
INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86001, 85001, 82002, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86001);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86002, 85002, 82003, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86002);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86003, 85013, 82009, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86003);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86004, 85014, 82010, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86004);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86005, 85015, 82001, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86005);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86006, 85016, 82004, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86006);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86007, 85017, 82005, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86007);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86008, 85018, 82006, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86008);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86009, 85019, 82007, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86009);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86010, 85020, 82008, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86010);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86011, 85021, 82002, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86011);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86012, 85022, 82002, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86012);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86013, 85023, 82003, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86013);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86014, 85024, 82003, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86014);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86015, 85025, 82001, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86015);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86016, 85026, 82001, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86016);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86017, 85027, 82004, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86017);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86018, 85028, 82004, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86018);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86019, 85029, 82005, '2025-03-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86019);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86020, 85030, 82006, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86020);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86021, 85031, 82007, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86021);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86022, 85032, 82008, '2025-03-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86022);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86023, 85033, 82009, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86023);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86024, 85034, 82009, '2025-06-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86024);

INSERT INTO `MemberLocation` (`MemberLocationID`, `MemberNo`, `LocationID`, `StartDate`, `EndDate`)
SELECT 86025, 85042, 82010, '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberLocation` WHERE `MemberLocationID` = 86025);

-- MemberFamily (15 demo records) 
-- Columns: MemberFamilyID, MemberNo, FamilyPersonID, RelationshipType, StartDate, EndDate
INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87001, 85021, 81001, 'Father', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87001);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87002, 85022, 81001, 'Father', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87002);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87003, 85023, 81002, 'Mother', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87003);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87004, 85024, 81002, 'Mother', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87004);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87005, 85025, 81003, 'Father', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87005);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87006, 85026, 81004, 'Mother', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87006);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87007, 85027, 81035, 'Mother', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87007);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87008, 85028, 81035, 'Mother', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87008);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87009, 85029, 81036, 'Mother', '2025-03-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87009);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87010, 85030, 81037, 'Father', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87010);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87011, 85031, 81038, 'Mother', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87011);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87012, 85032, 81039, 'Father', '2025-03-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87012);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87013, 85033, 81040, 'Mother', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87013);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87014, 85034, 81040, 'Mother', '2025-06-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87014);

INSERT INTO `MemberFamily` (`MemberFamilyID`, `MemberNo`, `FamilyPersonID`, `RelationshipType`, `StartDate`, `EndDate`)
SELECT 87015, 85042, 81041, 'Mother', '2024-09-01', NULL
WHERE NOT EXISTS (SELECT 1 FROM `MemberFamily` WHERE `MemberFamilyID` = 87015);

-- Hobby (10 demo records)
-- Columns: HobbyID, Name
INSERT INTO `Hobby` (`HobbyID`, `Name`)
SELECT 88001, 'Basketball'
WHERE NOT EXISTS (SELECT 1 FROM `Hobby` WHERE `HobbyID` = 88001);

INSERT INTO `Hobby` (`HobbyID`, `Name`)
SELECT 88002, 'Volleyball'
WHERE NOT EXISTS (SELECT 1 FROM `Hobby` WHERE `HobbyID` = 88002);

INSERT INTO `Hobby` (`HobbyID`, `Name`)
SELECT 88003, 'Soccer'
WHERE NOT EXISTS (SELECT 1 FROM `Hobby` WHERE `HobbyID` = 88003);

INSERT INTO `Hobby` (`HobbyID`, `Name`)
SELECT 88004, 'Tennis'
WHERE NOT EXISTS (SELECT 1 FROM `Hobby` WHERE `HobbyID` = 88004);

INSERT INTO `Hobby` (`HobbyID`, `Name`)
SELECT 88005, 'Swimming'
WHERE NOT EXISTS (SELECT 1 FROM `Hobby` WHERE `HobbyID` = 88005);

INSERT INTO `Hobby` (`HobbyID`, `Name`)
SELECT 88006, 'Cycling'
WHERE NOT EXISTS (SELECT 1 FROM `Hobby` WHERE `HobbyID` = 88006);

INSERT INTO `Hobby` (`HobbyID`, `Name`)
SELECT 88007, 'Running'
WHERE NOT EXISTS (SELECT 1 FROM `Hobby` WHERE `HobbyID` = 88007);

INSERT INTO `Hobby` (`HobbyID`, `Name`)
SELECT 88008, 'Hockey'
WHERE NOT EXISTS (SELECT 1 FROM `Hobby` WHERE `HobbyID` = 88008);

INSERT INTO `Hobby` (`HobbyID`, `Name`)
SELECT 88009, 'Ping Pong'
WHERE NOT EXISTS (SELECT 1 FROM `Hobby` WHERE `HobbyID` = 88009);

INSERT INTO `Hobby` (`HobbyID`, `Name`)
SELECT 88010, 'Golf'
WHERE NOT EXISTS (SELECT 1 FROM `Hobby` WHERE `HobbyID` = 88010);

-- MemberHobby (44 demo records)
-- Columns: MemberNo, HobbyID
INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85001, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85001 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85001, 88003
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85001 AND `HobbyID` = 88003);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85002, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85002 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85002, 88004
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85002 AND `HobbyID` = 88004);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85013, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85013 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85013, 88006
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85013 AND `HobbyID` = 88006);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85014, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85014 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85014, 88007
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85014 AND `HobbyID` = 88007);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85015, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85015 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85015, 88008
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85015 AND `HobbyID` = 88008);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85016, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85016 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85016, 88009
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85016 AND `HobbyID` = 88009);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85017, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85017 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85017, 88010
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85017 AND `HobbyID` = 88010);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85019, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85019 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85019, 88003
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85019 AND `HobbyID` = 88003);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85020, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85020 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85020, 88004
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85020 AND `HobbyID` = 88004);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85021, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85021 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85021, 88005
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85021 AND `HobbyID` = 88005);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85022, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85022 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85022, 88006
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85022 AND `HobbyID` = 88006);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85023, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85023 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85023, 88007
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85023 AND `HobbyID` = 88007);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85024, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85024 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85024, 88008
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85024 AND `HobbyID` = 88008);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85025, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85025 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85025, 88009
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85025 AND `HobbyID` = 88009);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85026, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85026 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85026, 88010
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85026 AND `HobbyID` = 88010);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85027, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85027 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85027, 88002
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85027 AND `HobbyID` = 88002);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85029, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85029 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85029, 88004
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85029 AND `HobbyID` = 88004);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85030, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85030 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85030, 88005
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85030 AND `HobbyID` = 88005);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85031, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85031 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85031, 88006
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85031 AND `HobbyID` = 88006);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85032, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85032 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85032, 88007
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85032 AND `HobbyID` = 88007);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85033, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85033 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85033, 88008
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85033 AND `HobbyID` = 88008);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85042, 88001
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85042 AND `HobbyID` = 88001);

INSERT INTO `MemberHobby` (`MemberNo`, `HobbyID`)
SELECT 85042, 88008
WHERE NOT EXISTS (SELECT 1 FROM `MemberHobby` WHERE `MemberNo` = 85042 AND `HobbyID` = 88008);

-- MemberMeasurement (72 demo records) — 2024-2026 height/weight history
-- Columns: MeasurementID, MemberNo, MeasureDate, Height, Weight
INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89001, 85001, '2025-10-01', 162.2, 62.8
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89001);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89002, 85001, '2026-10-01', 162.4, 63.1
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89002);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89003, 85002, '2025-10-01', 164.4, 65.6
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89003);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89004, 85002, '2026-10-01', 164.6, 65.9
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89004);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89005, 85013, '2025-10-01', 164.4, 74.0
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89005);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89006, 85013, '2026-10-01', 164.6, 74.3
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89006);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89007, 85014, '2025-10-01', 166.6, 76.8
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89007);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89008, 85014, '2026-10-01', 166.8, 77.1
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89008);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89009, 85015, '2025-10-01', 168.8, 79.6
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89009);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89010, 85015, '2026-10-01', 169.0, 79.9
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89010);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89011, 85016, '2025-10-01', 171.0, 60.0
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89011);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89012, 85016, '2026-10-01', 171.2, 60.3
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89012);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89013, 85017, '2025-10-01', 173.2, 62.8
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89013);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89014, 85017, '2026-10-01', 173.4, 63.1
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89014);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89015, 85018, '2025-10-01', 175.4, 65.6
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89015);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89016, 85018, '2026-10-01', 175.6, 65.9
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89016);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89017, 85019, '2025-10-01', 177.6, 68.4
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89017);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89018, 85019, '2026-10-01', 177.8, 68.7
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89018);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89019, 85020, '2025-10-01', 179.8, 71.2
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89019);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89020, 85020, '2026-10-01', 180.0, 71.5
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89020);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89021, 85021, '2025-10-01', 155.2, 52.8
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89021);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89022, 85021, '2026-10-01', 157.7, 54.4
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89022);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89023, 85022, '2025-10-01', 146.6, 47.4
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89023);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89024, 85022, '2026-10-01', 149.1, 49.0
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89024);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89025, 85023, '2025-10-01', 150.9, 50.1
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89025);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89026, 85023, '2026-10-01', 153.4, 51.7
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89026);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89027, 85024, '2025-10-01', 146.6, 47.4
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89027);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89028, 85024, '2026-10-01', 149.1, 49.0
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89028);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89029, 85025, '2025-10-01', 142.3, 44.7
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89029);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89030, 85025, '2026-10-01', 144.8, 46.3
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89030);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89031, 85026, '2025-10-01', 133.7, 39.3
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89031);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89032, 85026, '2026-10-01', 136.2, 40.9
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89032);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89033, 85027, '2025-10-01', 138.0, 42.0
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89033);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89034, 85027, '2026-10-01', 140.5, 43.6
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89034);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89035, 85028, '2025-10-01', 150.9, 50.1
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89035);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89036, 85028, '2026-10-01', 153.4, 51.7
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89036);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89037, 85029, '2025-10-01', 129.4, 36.6
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89037);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89038, 85029, '2026-10-01', 131.9, 38.2
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89038);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89039, 85030, '2025-10-01', 142.3, 44.7
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89039);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89040, 85030, '2026-10-01', 144.8, 46.3
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89040);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89041, 85031, '2025-10-01', 133.7, 39.3
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89041);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89042, 85031, '2026-10-01', 136.2, 40.9
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89042);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89043, 85032, '2025-10-01', 125.1, 33.9
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89043);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89044, 85032, '2026-10-01', 127.6, 35.5
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89044);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89045, 85033, '2025-10-01', 129.4, 36.6
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89045);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89046, 85033, '2026-10-01', 131.9, 38.2
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89046);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89047, 85034, '2025-10-01', 120.8, 31.2
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89047);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89048, 85034, '2026-10-01', 123.3, 32.8
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89048);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89049, 85042, '2025-10-01', 133.7, 39.3
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89049);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89050, 85042, '2026-10-01', 136.2, 40.9
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89050);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89051, 85001, '2024-10-01', 162.0, 62.5
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89051);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89052, 85002, '2024-10-01', 164.2, 65.3
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89052);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89053, 85013, '2024-10-01', 164.2, 73.7
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89053);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89054, 85014, '2024-10-01', 166.4, 76.5
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89054);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89055, 85015, '2024-10-01', 168.6, 79.3
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89055);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89056, 85016, '2024-10-01', 170.8, 59.7
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89056);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89057, 85017, '2024-10-01', 173.0, 62.5
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89057);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89058, 85018, '2024-10-01', 175.2, 65.3
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89058);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89059, 85019, '2024-10-01', 177.4, 68.1
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89059);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89060, 85020, '2024-10-01', 179.6, 70.9
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89060);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89061, 85021, '2024-10-01', 152.7, 51.2
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89061);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89062, 85022, '2024-10-01', 144.1, 45.8
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89062);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89063, 85023, '2024-10-01', 148.4, 48.5
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89063);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89064, 85024, '2024-10-01', 144.1, 45.8
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89064);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89065, 85025, '2024-10-01', 139.8, 43.1
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89065);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89066, 85026, '2024-10-01', 131.2, 37.7
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89066);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89067, 85027, '2024-10-01', 135.5, 40.4
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89067);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89068, 85028, '2024-10-01', 148.4, 48.5
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89068);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89069, 85030, '2024-10-01', 139.8, 43.1
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89069);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89070, 85031, '2024-10-01', 131.2, 37.7
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89070);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89071, 85033, '2024-10-01', 126.9, 35.0
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89071);

INSERT INTO `MemberMeasurement` (`MeasurementID`, `MemberNo`, `MeasureDate`, `Height`, `Weight`)
SELECT 89072, 85042, '2024-10-01', 131.2, 37.7
WHERE NOT EXISTS (SELECT 1 FROM `MemberMeasurement` WHERE `MeasurementID` = 89072);

-- Payment (31 demo records) 
-- Columns: PaymentID, MemberNo, PaymentDate, MembershipYear, Amount, Method
INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90001, 85001, '2024-12-20', 2025, 200, 'Credit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90001);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90002, 85002, '2025-02-10', 2025, 200, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90002);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90003, 85013, '2025-02-10', 2025, 240, 'Credit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90003);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90004, 85014, '2025-02-10', 2025, 200, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90004);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90005, 85015, '2025-02-10', 2025, 75, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90005);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90006, 85016, '2025-02-10', 2025, 200, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90006);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90007, 85017, '2025-02-10', 2025, 200, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90007);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90008, 85019, '2025-02-10', 2025, 200, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90008);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90009, 85020, '2025-02-10', 2025, 200, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90009);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90010, 85021, '2025-01-14', 2025, 75, 'Cash'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90010);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90011, 85021, '2025-03-14', 2025, 25, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90011);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90012, 85022, '2025-05-15', 2025, 110, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90012);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90013, 85023, '2025-05-15', 2025, 100, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90013);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90014, 85024, '2025-05-15', 2025, 50, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90014);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90015, 85025, '2025-05-15', 2025, 130, 'Cash'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90015);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90016, 85026, '2025-05-15', 2025, 100, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90016);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90017, 85027, '2025-05-15', 2025, 100, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90017);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90018, 85029, '2025-05-15', 2025, 100, 'Cash'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90018);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90019, 85030, '2025-05-15', 2025, 100, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90019);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90020, 85031, '2025-05-15', 2025, 100, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90020);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90021, 85032, '2025-05-15', 2025, 100, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90021);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90022, 85033, '2025-05-15', 2025, 100, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90022);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90023, 85034, '2025-07-11', 2025, 100, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90023);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90024, 85042, '2025-05-15', 2025, 100, 'Debit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90024);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90025, 85001, '2026-03-18', 2026, 200, 'Credit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90025);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90026, 85002, '2026-03-18', 2026, 200, 'Credit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90026);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90027, 85013, '2026-03-18', 2026, 200, 'Credit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90027);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90028, 85021, '2026-03-18', 2026, 100, 'Credit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90028);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90029, 85022, '2026-03-18', 2026, 100, 'Credit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90029);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90030, 85023, '2026-03-18', 2026, 100, 'Credit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90030);

INSERT INTO `Payment` (`PaymentID`, `MemberNo`, `PaymentDate`, `MembershipYear`, `Amount`, `Method`)
SELECT 90031, 85025, '2026-03-18', 2026, 100, 'Credit'
WHERE NOT EXISTS (SELECT 1 FROM `Payment` WHERE `PaymentID` = 90031);

-- NBAGame (10 demo records) — synthetic demonstration games
-- Columns: GameID, GameDate, GameLocation, TeamOne, TeamTwo, TeamOneScore, TeamTwoScore
INSERT INTO `NBAGame` (`GameID`, `GameDate`, `GameLocation`, `TeamOne`, `TeamTwo`, `TeamOneScore`, `TeamTwoScore`)
SELECT 91001, '2025-01-15', 'Montréal Exhibition Arena', 'Lakers', 'Celtics', 112, 107
WHERE NOT EXISTS (SELECT 1 FROM `NBAGame` WHERE `GameID` = 91001);

INSERT INTO `NBAGame` (`GameID`, `GameDate`, `GameLocation`, `TeamOne`, `TeamTwo`, `TeamOneScore`, `TeamTwoScore`)
SELECT 91002, '2025-02-05', 'Laval Sports Centre', 'Raptors', 'Bulls', 101, 96
WHERE NOT EXISTS (SELECT 1 FROM `NBAGame` WHERE `GameID` = 91002);

INSERT INTO `NBAGame` (`GameID`, `GameDate`, `GameLocation`, `TeamOne`, `TeamTwo`, `TeamOneScore`, `TeamTwoScore`)
SELECT 91003, '2025-03-10', 'Longueuil Arena', 'Warriors', 'Heat', 120, 113
WHERE NOT EXISTS (SELECT 1 FROM `NBAGame` WHERE `GameID` = 91003);

INSERT INTO `NBAGame` (`GameID`, `GameDate`, `GameLocation`, `TeamOne`, `TeamTwo`, `TeamOneScore`, `TeamTwoScore`)
SELECT 91004, '2025-04-18', 'Brossard Gym', 'Knicks', 'Nets', 105, 100
WHERE NOT EXISTS (SELECT 1 FROM `NBAGame` WHERE `GameID` = 91004);

INSERT INTO `NBAGame` (`GameID`, `GameDate`, `GameLocation`, `TeamOne`, `TeamTwo`, `TeamOneScore`, `TeamTwoScore`)
SELECT 91005, '2025-05-22', 'Montreal Hoops Hall', 'Mavericks', 'Spurs', 119, 111
WHERE NOT EXISTS (SELECT 1 FROM `NBAGame` WHERE `GameID` = 91005);

INSERT INTO `NBAGame` (`GameID`, `GameDate`, `GameLocation`, `TeamOne`, `TeamTwo`, `TeamOneScore`, `TeamTwoScore`)
SELECT 91006, '2025-06-30', 'Quebec Athletic Centre', 'Celtics', 'Raptors', 110, 103
WHERE NOT EXISTS (SELECT 1 FROM `NBAGame` WHERE `GameID` = 91006);

INSERT INTO `NBAGame` (`GameID`, `GameDate`, `GameLocation`, `TeamOne`, `TeamTwo`, `TeamOneScore`, `TeamTwoScore`)
SELECT 91007, '2025-08-11', 'Sherbrooke Arena', 'Bulls', 'Lakers', 99, 102
WHERE NOT EXISTS (SELECT 1 FROM `NBAGame` WHERE `GameID` = 91007);

INSERT INTO `NBAGame` (`GameID`, `GameDate`, `GameLocation`, `TeamOne`, `TeamTwo`, `TeamOneScore`, `TeamTwoScore`)
SELECT 91008, '2025-09-14', 'Gatineau Indoor Court', 'Heat', 'Knicks', 98, 94
WHERE NOT EXISTS (SELECT 1 FROM `NBAGame` WHERE `GameID` = 91008);

INSERT INTO `NBAGame` (`GameID`, `GameDate`, `GameLocation`, `TeamOne`, `TeamTwo`, `TeamOneScore`, `TeamTwoScore`)
SELECT 91009, '2026-01-20', 'Montreal Demonstration Centre', 'Warriors', 'Mavericks', 117, 108
WHERE NOT EXISTS (SELECT 1 FROM `NBAGame` WHERE `GameID` = 91009);

INSERT INTO `NBAGame` (`GameID`, `GameDate`, `GameLocation`, `TeamOne`, `TeamTwo`, `TeamOneScore`, `TeamTwoScore`)
SELECT 91010, '2026-03-09', 'Laval Demonstration Court', 'Nets', 'Spurs', 104, 101
WHERE NOT EXISTS (SELECT 1 FROM `NBAGame` WHERE `GameID` = 91010);

-- NBAPlay (20 demo records) — two member performances for every game
-- Columns: GameID, MemberNo, TeamPlayedFor, TeamPlayedAgainst, PlayerScore, PerformanceDetails
INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91001, 85001, 'Lakers', 'Celtics', 21, '21 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91001 AND `MemberNo` = 85001);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91001, 85002, 'Celtics', 'Lakers', 13, '13 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91001 AND `MemberNo` = 85002);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91002, 85001, 'Raptors', 'Bulls', 22, '22 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91002 AND `MemberNo` = 85001);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91002, 85013, 'Bulls', 'Raptors', 14, '14 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91002 AND `MemberNo` = 85013);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91003, 85002, 'Warriors', 'Heat', 23, '23 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91003 AND `MemberNo` = 85002);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91003, 85014, 'Heat', 'Warriors', 15, '15 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91003 AND `MemberNo` = 85014);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91004, 85013, 'Knicks', 'Nets', 24, '24 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91004 AND `MemberNo` = 85013);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91004, 85016, 'Nets', 'Knicks', 16, '16 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91004 AND `MemberNo` = 85016);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91005, 85001, 'Mavericks', 'Spurs', 25, '25 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91005 AND `MemberNo` = 85001);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91005, 85017, 'Spurs', 'Mavericks', 17, '17 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91005 AND `MemberNo` = 85017);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91006, 85002, 'Celtics', 'Raptors', 26, '26 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91006 AND `MemberNo` = 85002);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91006, 85019, 'Raptors', 'Celtics', 18, '18 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91006 AND `MemberNo` = 85019);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91007, 85013, 'Bulls', 'Lakers', 27, '27 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91007 AND `MemberNo` = 85013);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91007, 85020, 'Lakers', 'Bulls', 19, '19 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91007 AND `MemberNo` = 85020);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91008, 85001, 'Heat', 'Knicks', 28, '28 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91008 AND `MemberNo` = 85001);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91008, 85014, 'Knicks', 'Heat', 20, '20 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91008 AND `MemberNo` = 85014);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91009, 85002, 'Warriors', 'Mavericks', 29, '29 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91009 AND `MemberNo` = 85002);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91009, 85013, 'Mavericks', 'Warriors', 21, '21 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91009 AND `MemberNo` = 85013);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91010, 85016, 'Nets', 'Spurs', 30, '30 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91010 AND `MemberNo` = 85016);

INSERT INTO `NBAPlay` (`GameID`, `MemberNo`, `TeamPlayedFor`, `TeamPlayedAgainst`, `PlayerScore`, `PerformanceDetails`)
SELECT 91010, 85017, 'Spurs', 'Nets', 22, '22 points; 4 rebounds; 3 assists (fictional demo game)'
WHERE NOT EXISTS (SELECT 1 FROM `NBAPlay` WHERE `GameID` = 91010 AND `MemberNo` = 85017);

-- Individual counts (without UNION ALL):
SELECT 'Person' AS RelationName, COUNT(*) AS RowCount FROM `Person`;
SELECT 'Location' AS RelationName, COUNT(*) AS RowCount FROM `Location`;
SELECT 'LocationPhone' AS RelationName, COUNT(*) AS RowCount FROM `LocationPhone`;
SELECT 'Personnel' AS RelationName, COUNT(*) AS RowCount FROM `Personnel`;
SELECT 'PersonnelAssignment' AS RelationName, COUNT(*) AS RowCount FROM `PersonnelAssignment`;
SELECT 'FamilyMember' AS RelationName, COUNT(*) AS RowCount FROM `FamilyMember`;
SELECT 'FamilyLocation' AS RelationName, COUNT(*) AS RowCount FROM `FamilyLocation`;
SELECT 'ClubMember' AS RelationName, COUNT(*) AS RowCount FROM `ClubMember`;
SELECT 'MemberLocation' AS RelationName, COUNT(*) AS RowCount FROM `MemberLocation`;
SELECT 'MemberFamily' AS RelationName, COUNT(*) AS RowCount FROM `MemberFamily`;
SELECT 'Hobby' AS RelationName, COUNT(*) AS RowCount FROM `Hobby`;
SELECT 'MemberHobby' AS RelationName, COUNT(*) AS RowCount FROM `MemberHobby`;
SELECT 'MemberMeasurement' AS RelationName, COUNT(*) AS RowCount FROM `MemberMeasurement`;
SELECT 'Payment' AS RelationName, COUNT(*) AS RowCount FROM `Payment`;
SELECT 'NBAGame' AS RelationName, COUNT(*) AS RowCount FROM `NBAGame`;
SELECT 'NBAPlay' AS RelationName, COUNT(*) AS RowCount FROM `NBAPlay`;
SELECT 'MembershipFee' AS RelationName, COUNT(*) AS RowCount FROM `MembershipFee`;
