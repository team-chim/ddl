USE rexchula;

DROP TRIGGER IF EXISTS insert_payment;

DELIMITER $$

CREATE TRIGGER insert_payment
BEFORE INSERT ON payment
FOR EACH ROW
BEGIN
	IF NEW.PaymentDate > CURRENT_DATE() THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'PaymentDate is invalid';
	END IF;
END$$
DELIMITER ;