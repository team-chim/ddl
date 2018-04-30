USE rexchula;

DROP PROCEDURE IF EXISTS insert_subject;

DELIMITER $$

CREATE PROCEDURE insert_subject(IN SubjectID CHAR(7), IN NameAbv VARCHAR(128), IN NameEN VARCHAR(128), IN NameTH VARCHAR(128), IN Credit INT UNSIGNED)
BEGIN
	INSERT INTO `subject`(SubjectID, NameAbv, NameEN, NameTH, Credit) VALUES(SubjectID, NameAbv, NameEN, NameTH, Credit);
END$$
DELIMITER ;