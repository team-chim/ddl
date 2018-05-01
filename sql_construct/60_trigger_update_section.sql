USE rexchula;

DROP TRIGGER IF EXISTS update_section;

DELIMITER $$

CREATE TRIGGER update_section
BEFORE UPDATE ON section
FOR EACH ROW
BEGIN
	DECLARE ValidYear BOOL;
    SET ValidYear = NEW.`Year` >= (SELECT MAX(stdn.EnterYear)
								   FROM studies stdy NATURAL LEFT JOIN student stdn
								   WHERE stdy.SubjectID = OLD.SubjectID AND stdy.`Year` = OLD.`Year` AND stdy.Semester = OLD.Semester AND stdy.SectionNo = OLD.SectionNo);

	IF NEW.CurrentStudent IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Cannot assigned value to generated column CurrentStudent';
	ELSEIF NOT ValidYear THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Section Year is conflict with some Student EnterYear in studies table';
	END IF;
    
    SET NEW.CurrentStudent = get_current_student(NEW.SubjectID, NEW.`Year`, NEW.Semester, NEW.SectionNo);
END$$
DELIMITER ;