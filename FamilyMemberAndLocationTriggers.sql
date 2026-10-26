USE cbcs;

-- Remove previous versions before reinstalling them.
DROP TRIGGER IF EXISTS trg_famloc_before_insert;
DROP TRIGGER IF EXISTS trg_famloc_before_update;

DELIMITER $$
CREATE TRIGGER trg_famloc_before_insert
BEFORE INSERT ON FamilyLocation
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM FamilyLocation fl
        WHERE fl.PersonID = NEW.PersonID
          AND fl.StartDate <= COALESCE(NEW.EndDate, '9999-12-31')
          AND COALESCE(fl.EndDate, '9999-12-31') >= NEW.StartDate
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Family member has an overlapping location association';
    END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_famloc_before_update
BEFORE UPDATE ON FamilyLocation
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM FamilyLocation fl
        WHERE fl.PersonID = NEW.PersonID
          AND fl.FamilyLocationID <> OLD.FamilyLocationID
          AND fl.StartDate <= COALESCE(NEW.EndDate, '9999-12-31')
          AND COALESCE(fl.EndDate, '9999-12-31') >= NEW.StartDate
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Family member has an overlapping location association';
    END IF;
END$$
DELIMITER ;