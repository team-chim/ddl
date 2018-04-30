USE rexchula;

DROP PROCEDURE IF EXISTS insert_teacher;

DELIMITER $$

CREATE PROCEDURE insert_teacher(IN TeacherID CHAR(10), IN FnameEN VARCHAR(128), IN MnameEN VARCHAR(128), IN LnameEN VARCHAR(128), IN FnameTH VARCHAR(128), IN MnameTH VARCHAR(128), IN LnameTH VARCHAR(128), IN TeacherEmail VARCHAR(128), IN TelNo VARCHAR(128), IN WorksForFaculty INT UNSIGNED, IN WorksForDepartment INT UNSIGNED, IN Since DATE)
BEGIN
	INSERT INTO teacher(TeacherID, FnameEN, MnameEN, LnameEN, FnameTH, MnameTH, LnameTH, TeacherEmail, TelNo, WorksForFaculty, WorksForDepartment, Since) VALUES(TeacherID, FnameEN, MnameEN, LnameEN, FnameTH, MnameTH, LnameTH, TeacherEmail, TelNo, WorksForFaculty, WorksForDepartment, Since);
END$$
DELIMITER ;