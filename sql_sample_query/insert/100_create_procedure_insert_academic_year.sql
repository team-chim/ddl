USE rexchula;

DROP PROCEDURE IF EXISTS insert_academic_year;

DELIMITER $$

CREATE PROCEDURE insert_academic_year(IN `Year` INT UNSIGNED)
BEGIN
	INSERT INTO academic_year(`Year`) VALUES(`Year`);
END$$
DELIMITER ;