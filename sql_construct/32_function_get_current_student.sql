USE rexchula;

DROP FUNCTION IF EXISTS get_current_student;

DELIMITER $$

CREATE FUNCTION get_current_student(SubjectID CHAR(7), `Year` INT UNSIGNED, Semester INT UNSIGNED, SectionNo INT UNSIGNED) RETURNS INT UNSIGNED NOT DETERMINISTIC
BEGIN
	DECLARE CurrentAmount INT UNSIGNED;
	SET CurrentAmount = (SELECT COUNT(stdy.StudentID)
				FROM studies stdy
				WHERE stdy.SubjectID = SubjectID AND stdy.`Year` = `Year` AND stdy.Semester = Semester AND stdy.SectionNo = SectionNo);
    RETURN CurrentAmount;
END$$
DELIMITER ;