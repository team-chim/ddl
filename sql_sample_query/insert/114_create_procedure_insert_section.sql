USE rexchula;

DROP PROCEDURE IF EXISTS insert_section;

DELIMITER $$

CREATE PROCEDURE insert_section(IN SubjectID CHAR(10), IN `Year` INT UNSIGNED, IN Semester INT UNSIGNED, IN SectionNo INT UNSIGNED, IN Classroom VARCHAR(128), IN GenedType INT UNSIGNED, IN MaxStudent INT UNSIGNED, IN TeachedBy CHAR(10))
BEGIN
	INSERT INTO section(SubjectID, `Year`, Semester, SectionNo, Classroom, GenedType, MaxStudent, TeachedBy) VALUES(SubjectID, `Year`, Semester, SectionNo, Classroom, GenedType, MaxStudent, TeachedBy);
END$$
DELIMITER ;