USE cbcs;

-- Remove previous versions before reinstalling them.
DROP TRIGGER IF EXISTS trg_payment_max_installments;
DROP TRIGGER IF EXISTS trg_payment_max_installments_update;

-- Payments: at most 4 installments per member per membership year
DELIMITER $$
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
DELIMITER ;

-- An UPDATE must not move a payment into a member/year with four other payments.
-- Exclude this payment's own existing row from the count.
DELIMITER $$
CREATE TRIGGER trg_payment_max_installments_update
BEFORE UPDATE ON Payment
FOR EACH ROW
BEGIN
    IF (
        SELECT COUNT(*)
          FROM Payment
         WHERE MemberNo = NEW.MemberNo
           AND MembershipYear = NEW.MembershipYear
           AND PaymentID <> OLD.PaymentID
    ) >= 4 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'A maximum of 4 installments per membership year is allowed';
    END IF;
END$$
DELIMITER ;
