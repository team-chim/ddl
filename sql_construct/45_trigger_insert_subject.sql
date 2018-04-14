USE rexchula;

DROP TRIGGER IF EXISTS before_insert_subject;
DROP TRIGGER IF EXISTS after_insert_subject;

DELIMITER $$

CREATE TRIGGER before_insert_subject
BEFORE INSERT ON `subject`
FOR EACH ROW
BEGIN
	DECLARE DegreeBit CHAR(1);
    SET DegreeBit = SUBSTR(NEW.SubjectID , 5, 1);
    IF DegreeBit = '9' THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Invalid SubjectID';
    END IF;
END$$

CREATE TRIGGER after_insert_subject
AFTER INSERT ON `subject`
FOR EACH ROW
BEGIN
	DECLARE DegreeBit CHAR(1);
    SET DegreeBit = SUBSTR(NEW.SubjectID , 5, 1);
	IF DegreeBit = '1' OR DegreeBit = '2' OR DegreeBit = '3' OR DegreeBit = '4' THEN
		INSERT INTO enrollable_degrees(SubjectID, EnrollableDegree) VALUES (NEW.SubjectID, 'Bachelor');
	ELSEIF DegreeBit = '5' OR DegreeBit = '6' OR DegreeBit = '7' OR DegreeBit = '8' THEN
		INSERT INTO enrollable_degrees(SubjectID, EnrollableDegree) VALUES (NEW.SubjectID, 'Master'), (New.SubjectID, 'Doctor');
    END IF;
END$$
DELIMITER ;