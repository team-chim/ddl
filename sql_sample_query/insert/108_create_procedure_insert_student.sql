USE rexchula;

DROP PROCEDURE IF EXISTS insert_student;

DELIMITER $$

CREATE PROCEDURE insert_student(IN StudentID CHAR(10), IN FnameEN VARCHAR(128), IN MnameEN VARCHAR(128), IN LnameEN VARCHAR(128), IN FnameTH VARCHAR(128), IN MnameTH VARCHAR(128), IN LnameTH VARCHAR(128), IN StudentEmail VARCHAR(128), IN Adviser CHAR(10), IN Nation VARCHAR(128), IN MajorFaculty INT UNSIGNED, IN MajorDepartment INT UNSIGNED)
BEGIN
	INSERT INTO student(StudentID, FnameEN, MnameEN, LnameEN, FnameTH, MnameTH, LnameTH, StudentEmail, Adviser, Nation, MajorFaculty, MajorDepartment) VALUES(StudentID, FnameEN, MnameEN, LnameEN, FnameTH, MnameTH, LnameTH, StudentEmail, Adviser, Nation, MajorFaculty, MajorDepartment);
END$$
DELIMITER ;