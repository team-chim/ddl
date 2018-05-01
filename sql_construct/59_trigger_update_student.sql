USE rexchula;

DROP TRIGGER IF EXISTS update_student;

DELIMITER $$

CREATE TRIGGER update_student
BEFORE UPDATE ON student
FOR EACH ROW
BEGIN
	DECLARE ValidYear BOOL;
    
	IF NEW.GPAX IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Cannot assigned value to generated column GPAX';
	ELSEIF NEW.EnterYear IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Cannot assigned value to generated column EnterYear';
	END IF;
    
    SET NEW.EnterYear = (CAST(SUBSTRING(NEW.StudentID, 1, 2) AS UNSIGNED INTEGER) + 1957);
    SET ValidYear = NEW.EnterYear <= (SELECT min(`Year`)
									  FROM studies stdy
									  WHERE stdy.StudentID = OLD.StudentID);
    IF NOT ValidYear THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'EntryYear is invalid';
	END IF;
    
    SET NEW.GPAX = calculate_gpax(NEW.StudentID);
END$$
DELIMITER ;