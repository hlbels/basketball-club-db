USE cbcs;

DROP TRIGGER IF EXISTS trg_person_dob_insert;
DROP TRIGGER IF EXISTS trg_person_dob_update;

-- Remove previous location-overlap triggers before reinstalling them.
DROP TRIGGER IF EXISTS trg_memloc_no_overlap_insert;
DROP TRIGGER IF EXISTS trg_memloc_no_overlap_update;

-- A person must be at least six years old when inserted.
DELIMITER $$
CREATE TRIGGER trg_person_dob_insert
BEFORE INSERT ON Person
FOR EACH ROW
BEGIN
    IF NEW.DOB > DATE_SUB(CURDATE(), INTERVAL 6 YEAR) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'A person must be at least 6 years old';
    END IF;
END$$
DELIMITER ;

-- A DOB update must not make a person younger than six.
DELIMITER $$
CREATE TRIGGER trg_person_dob_update
BEFORE UPDATE ON Person
FOR EACH ROW
BEGIN
    IF NEW.DOB > DATE_SUB(CURDATE(), INTERVAL 6 YEAR) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'A person must be at least 6 years old';
    END IF;
END$$
DELIMITER ;

-- A trigger, before INSERT on 'MemberLocation' to make sure the new row doesn't overlap with previous rows
DELIMITER $$
CREATE TRIGGER trg_memloc_no_overlap_insert
BEFORE INSERT ON MemberLocation
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM MemberLocation ml
        WHERE ml.MemberNo = NEW.MemberNo
          AND ml.StartDate <= COALESCE(NEW.EndDate, '9999-12-31')
          AND COALESCE(ml.EndDate, '9999-12-31') >= NEW.StartDate
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Member has an overlapping location assignment';
    END IF;
END$$
DELIMITER ;

-- A trigger, before update on 'MemberLocation' to make sure after updating a row, we don't mistakenly overlap with other rows
DELIMITER $$
CREATE TRIGGER trg_memloc_no_overlap_update
BEFORE UPDATE ON MemberLocation
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM MemberLocation ml
        WHERE ml.MemberNo = NEW.MemberNo
		-- here we need to make sure we don't check the new record with its old self, so we need to make sure the member location ids are not the same
          AND ml.MemberLocationID <> OLD.MemberLocationID
          AND ml.StartDate <= COALESCE(NEW.EndDate, '9999-12-31')
          AND COALESCE(ml.EndDate, '9999-12-31') >= NEW.StartDate
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Member has an overlapping location assignment';
    END IF;
END$$
DELIMITER ;