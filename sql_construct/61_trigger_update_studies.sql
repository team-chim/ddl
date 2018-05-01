USE rexchula;

DROP TRIGGER IF EXISTS before_update_studies;
DROP TRIGGER IF EXISTS after_update_studies;

DELIMITER $$

CREATE TRIGGER before_update_studies
BEFORE UPDATE ON studies
FOR EACH ROW
BEGIN
	DECLARE EntryYear INT UNSIGNED;
    SET EntryYear = (SELECT stdn.EnterYear
					 FROM student stdn
                     WHERE stdn.StudentID = NEW.StudentID);
                     
	IF EntryYear > NEW.`Year` THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Section Year and Student EnterYear is conflict';
    END IF;
END$$

CREATE TRIGGER after_update_studies
AFTER UPDATE ON studies
FOR EACH ROW
BEGIN
	SIGNAL SQLSTATE '01000'
		SET MESSAGE_TEXT = 'Debug trigger after update studies';

	UPDATE student stdn
    SET stdn.GPAX = NULL, stdn.EnterYear = NULL
    WHERE stdn.StudentID = NEW.StudentID;
    
    UPDATE student stdn
    SET stdn.GPAX = NULL, stdn.EnterYear = NULL
    WHERE stdn.StudentID = OLD.StudentID;
    
    UPDATE section s
    SET s.CurrentStudent = NULL
    WHERE s.SubjectID = NEW.SubjectID AND s.`Year` = NEW.`Year` AND s.Semester = NEW.Semester AND s.SectionNo = NEW.SectionNo;
    
    UPDATE section s
    SET s.CurrentStudent = NULL
    WHERE s.SubjectID = OLD.SubjectID AND s.`Year` = OLD.`Year` AND s.Semester = OLD.Semester AND s.SectionNo = OLD.SectionNo;
END$$
DELIMITER ;