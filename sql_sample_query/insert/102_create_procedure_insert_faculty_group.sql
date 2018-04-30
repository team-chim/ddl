USE rexchula;

DROP PROCEDURE IF EXISTS insert_faculty_group;

DELIMITER $$

CREATE PROCEDURE insert_faculty_group(IN FacultyGroupID INT UNSIGNED, IN NameEN VARCHAR(128), IN NameTH VARCHAR(128))
BEGIN
	INSERT INTO faculty_group(FacultyGroupID, NameEN, NameTH) VALUES(FacultyGroupID, NameEN, NameTH);
END$$
DELIMITER ;