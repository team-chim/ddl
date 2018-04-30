USE rexchula;

DROP TRIGGER IF EXISTS insert_student;

DELIMITER $$

CREATE TRIGGER insert_student
BEFORE INSERT ON student
FOR EACH ROW
BEGIN
	IF NEW.GPAX IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Cannot assigned value to generated column GPAX';
	ELSEIF NEW.EnterYear IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Cannot assigned value to generated column EnterYear';
	END IF;
    
    SET NEW.EnterYear = (CAST(SUBSTRING(NEW.StudentID, 1, 2) AS UNSIGNED INTEGER) + 1957);
    
END$$
DELIMITER ;