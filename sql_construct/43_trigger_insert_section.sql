USE rexchula;

DROP TRIGGER IF EXISTS insert_section;

DELIMITER $$

CREATE TRIGGER insert_section
BEFORE INSERT ON section
FOR EACH ROW
BEGIN
	IF NEW.GenedType > 5 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'GenedType value must be between 0-5';
    ELSEIF NEW.CurrentStudent IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Cannot assigned value to generated column CurrentStudent';
	END IF;
    SET NEW.CurrentStudent = 0;
END$$
DELIMITER ;