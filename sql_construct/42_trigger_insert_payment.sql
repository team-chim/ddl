USE rexchula;

DROP TRIGGER IF EXISTS insert_payment;

DELIMITER $$

CREATE TRIGGER insert_payment
BEFORE INSERT ON payment
FOR EACH ROW
BEGIN
	DECLARE MaxID INT UNSIGNED;
    SET MaxID = (SELECT MAX(PaymentID)
				FROM payment p
				WHERE p.StudentID = NEW.StudentID AND p.`Year` = NEW.`Year` AND p.Semester = NEW.Semester);
	IF NEW.PaymentID IS NULL THEN
		SET NEW.PaymentID = IF(MaxID IS NULL, 1, MaxID + 1);
    ELSE
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Assigning value to PaymentID is not allowed';
	END IF;
END$$
DELIMITER ;