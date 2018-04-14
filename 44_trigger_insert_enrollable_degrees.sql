USE rexchula;

DROP TRIGGER IF EXISTS insert_enrollable_degrees;

DELIMITER $$

CREATE TRIGGER insert_enrollable_degrees
BEFORE INSERT ON enrollable_degrees
FOR EACH ROW
BEGIN
	DECLARE DegreeBit CHAR(1);
    SET DegreeBit = SUBSTR(NEW.SubjectID , 5, 1);
    IF (DegreeBit = '1' OR DegreeBit = '2' OR DegreeBit = '3' OR DegreeBit = '4') AND NEW.EnrollableDegree <> 'Bachelor' THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Invalid Degree';
	END IF;
    IF (DegreeBit = '5' OR DegreeBit = '6' OR DegreeBit = '7' OR DegreeBit = '8') AND (NEW.EnrollableDegree <> 'Master' AND NEW.EnrollableDegree <> 'Doctor') THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Invalid Degree';
	END IF;
END$$
DELIMITER ;