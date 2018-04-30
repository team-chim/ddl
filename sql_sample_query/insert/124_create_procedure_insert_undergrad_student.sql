USE rexchula;

DROP PROCEDURE IF EXISTS insert_undergrad_student;

DELIMITER $$

CREATE PROCEDURE insert_undergrad_student(IN StudentID CHAR(10), IN MinorFaculty INT UNSIGNED, IN MinorDepartment INT UNSIGNED)
BEGIN
	INSERT INTO undergrad_student(StudentID, MinorFaculty, MinorDepartment) VALUES(StudentID, MinorFaculty, MinorDepartment);
END$$
DELIMITER ;