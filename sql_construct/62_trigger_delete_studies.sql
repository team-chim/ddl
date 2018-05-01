USE rexchula;

DROP TRIGGER IF EXISTS delete_studies;
DELIMITER $$

CREATE TRIGGER delete_studies
AFTER DELETE ON studies
FOR EACH ROW
BEGIN
    UPDATE student stdn
    SET stdn.GPAX = NULL, stdn.EnterYear = NULL
    WHERE stdn.StudentID = OLD.StudentID;
    
    UPDATE section s
    SET s.CurrentStudent = NULL
    WHERE s.SubjectID = OLD.SubjectID AND s.`Year` = OLD.`Year` AND s.Semester = OLD.Semester AND s.SectionNo = OLD.SectionNo;
END$$
DELIMITER ;