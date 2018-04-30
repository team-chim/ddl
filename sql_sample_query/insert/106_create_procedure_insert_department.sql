USE rexchula;

DROP PROCEDURE IF EXISTS insert_department;

DELIMITER $$

CREATE PROCEDURE insert_department(IN FacultyID INT UNSIGNED, IN DepartmentID INT UNSIGNED, IN NameEN VARCHAR(128), IN NameTH VARCHAR(128))
BEGIN
	INSERT INTO department(FacultyID, DepartmentID, NameEN, NameTH) VALUES(FacultyID, DepartmentID, NameEN, NameTH);
END$$
DELIMITER ;