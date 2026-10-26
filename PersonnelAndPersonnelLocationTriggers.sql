USE cbcs;

-- Remove previous versions before reinstalling them.
DROP TRIGGER IF EXISTS trg_pa_before_insert;
DROP TRIGGER IF EXISTS trg_pa_before_update;
DROP TRIGGER IF EXISTS trg_location_one_head_insert;
DROP TRIGGER IF EXISTS trg_location_one_head_update;

-- A trigger, before insert on 'PersonnelAssignment', to make sure personnel assignments don't overlap, 
-- head location positions can only be assigned to the head location
-- and general manager must have the administrator role 
DELIMITER $$
CREATE TRIGGER trg_pa_before_insert
BEFORE INSERT ON PersonnelAssignment
FOR EACH ROW
BEGIN
    DECLARE v_LocationType VARCHAR(20);
    DECLARE v_Role VARCHAR(30);

    -- 1. Prevent overlapping assignments
    IF EXISTS (
        SELECT 1
        FROM PersonnelAssignment pa
        WHERE pa.PersonID = NEW.PersonID
          AND pa.StartDate <= COALESCE(NEW.EndDate, '9999-12-31')
          AND COALESCE(pa.EndDate, '9999-12-31') >= NEW.StartDate
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Personnel assignment periods cannot overlap';
    END IF;

    -- 2. Get location type
    SELECT Type INTO v_LocationType
    FROM Location
    WHERE LocationID = NEW.LocationID;

    -- 3. Restrict Head-only positions
    IF NEW.Position IN (
        'General Manager',
        'Deputy Manager',
        'Treasurer',
        'Secretary',
        'Administrator'
    ) AND v_LocationType <> 'Head' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This position is restricted to the Head location';
    END IF;

    -- 4. General Manager must be an Administrator
    IF NEW.Position = 'General Manager' THEN
        SELECT Role INTO v_Role
        FROM Personnel
        WHERE PersonID = NEW.PersonID;

        IF v_Role <> 'Administrator' THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'General Manager must have Administrator role';
        END IF;
    END IF;
END$$
DELIMITER ;

-- A trigger, before update on 'PersonnelAssignment', to make sure personnel assignments don't overlap, 
-- head location positions can only be assigned to the head location
-- and general manager must have the administrator role 
DELIMITER $$
CREATE TRIGGER trg_pa_before_update
BEFORE UPDATE ON PersonnelAssignment
FOR EACH ROW
BEGIN
    DECLARE v_LocationType VARCHAR(20);
    DECLARE v_Role VARCHAR(30);

    -- 1. Prevent overlapping assignments
    IF EXISTS (
        SELECT 1
        FROM PersonnelAssignment pa
        WHERE pa.PersonID = NEW.PersonID
          AND pa.AssignmentID <> OLD.AssignmentID
          AND pa.StartDate <= COALESCE(NEW.EndDate, '9999-12-31')
          AND COALESCE(pa.EndDate, '9999-12-31') >= NEW.StartDate
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Personnel assignment periods cannot overlap';
    END IF;

    -- 2. Get location type
    SELECT Type INTO v_LocationType
    FROM Location
    WHERE LocationID = NEW.LocationID;

    -- 3. Restrict Head-only positions
    IF NEW.Position IN (
        'General Manager',
        'Deputy Manager',
        'Treasurer',
        'Secretary',
        'Administrator'
    ) AND v_LocationType <> 'Head' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This position is restricted to the Head location';
    END IF;

    -- 4. General Manager must be an Administrator
    IF NEW.Position = 'General Manager' THEN
        SELECT Role INTO v_Role
        FROM Personnel
        WHERE PersonID = NEW.PersonID;

        IF v_Role <> 'Administrator' THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'General Manager must have Administrator role';
        END IF;
    END IF;
END$$
DELIMITER ;

-- A trigger, before insert on 'Location' to make sure there can only be one head location.
DELIMITER $$
CREATE TRIGGER trg_location_one_head_insert
BEFORE INSERT ON Location
FOR EACH ROW
BEGIN
    IF NEW.Type = 'Head' AND EXISTS (
        SELECT 1
        FROM Location
        WHERE Type = 'Head'
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Only one Head location is allowed';
    END IF;
END$$
DELIMITER ;

-- Prevent turning a second existing Branch into a Head by UPDATE.
DELIMITER $$
CREATE TRIGGER trg_location_one_head_update
BEFORE UPDATE ON Location
FOR EACH ROW
BEGIN
    IF NEW.Type = 'Head' AND EXISTS (
        SELECT 1
          FROM Location
         WHERE Type = 'Head'
           AND LocationID <> OLD.LocationID
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Only one Head location is allowed';
    END IF;
END$$
DELIMITER ;