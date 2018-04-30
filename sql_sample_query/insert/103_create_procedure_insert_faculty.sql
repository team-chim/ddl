USE rexchula;

DROP PROCEDURE IF EXISTS insert_faculty;

DELIMITER $$

CREATE PROCEDURE insert_faculty(IN FacultyID INT UNSIGNED, IN NameEN VARCHAR(128), IN NameTH VARCHAR(128), IN TelNo VARCHAR(128), IN BelongsTo INT UNSIGNED)
BEGIN
	INSERT INTO faculty(FacultyID, NameEN, NameTH, TelNo, BelongsTo) VALUES(FacultyID, NameEN, NameTH, TelNo, BelongsTo);
END$$
DELIMITER ;