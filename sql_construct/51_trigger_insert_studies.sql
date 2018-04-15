USE rexchula;

DROP TRIGGER IF EXISTS insert_studies;

DELIMITER $$

CREATE TRIGGER insert_studies
AFTER INSERT ON studies
FOR EACH ROW
BEGIN
	UPDATE student stdn
    SET stdn.GPAX = calculate_gpax(NEW.StudentID)
    WHERE stdn.StudentID = NEW.StudentID;
    
    UPDATE section s
    SET s.CurrentStudent = get_current_student(NEW.SubjectID, NEW.`Year`, NEW.Semester, NEW.SectionNo)
    WHERE s.SubjectID = NEW.SubjectID AND s.`Year` = NEW.`Year` AND s.Semester = NEW.Semester AND s.SectionNo = NEW.SectionNo;
END$$
DELIMITER ;