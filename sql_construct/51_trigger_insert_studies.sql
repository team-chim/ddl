USE rexchula;

DROP TRIGGER IF EXISTS before_insert_studies;
DROP TRIGGER IF EXISTS after_insert_studies;

DELIMITER $$

CREATE TRIGGER before_insert_studies
BEFORE INSERT ON studies
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

CREATE TRIGGER after_insert_studies
AFTER INSERT ON studies
FOR EACH ROW
BEGIN
	SIGNAL SQLSTATE '01000'
		SET MESSAGE_TEXT = 'Debug trigger after insert studies';

	UPDATE student stdn
    SET stdn.GPAX = NULL, stdn.EnterYear = NULL
    WHERE stdn.StudentID = NEW.StudentID;
    
    UPDATE section s
    SET s.CurrentStudent = NULL
    WHERE s.SubjectID = NEW.SubjectID AND s.`Year` = NEW.`Year` AND s.Semester = NEW.Semester AND s.SectionNo = NEW.SectionNo;
END$$
DELIMITER ;