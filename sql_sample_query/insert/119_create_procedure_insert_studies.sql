USE rexchula;

DROP PROCEDURE IF EXISTS insert_studies;

DELIMITER $$

CREATE PROCEDURE insert_studies(IN StudentID CHAR(10), IN SubjectID CHAR(7), IN `Year` INT UNSIGNED, IN Semester INT UNSIGNED, IN SectionNo INT UNSIGNED)
BEGIN
	INSERT INTO studies(StudentID, SubjectID, `Year`, Semester, SectionNo) VALUES(StudentID, SubjectID, `Year`, Semester, SectionNo);
END$$
DELIMITER ;