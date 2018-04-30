USE rexchula;

DROP PROCEDURE IF EXISTS insert_managementship;

DELIMITER $$

CREATE PROCEDURE insert_managementship(IN TeacherID CHAR(10), IN FacultyID INT UNSIGNED, IN DepartmentID INT UNSIGNED, IN StartDate DATE, EndDate DATE)
BEGIN
	INSERT INTO managementship(TeacherID, FacultyID, DepartmentID, StartDate, EndDate) VALUES(TeacherID, FacultyID, DepartmentID, StartDate, EndDate);
END$$
DELIMITER ;