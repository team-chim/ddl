USE rexchula;

DROP PROCEDURE IF EXISTS insert_nationality;

DELIMITER $$

CREATE PROCEDURE insert_nationality(IN NationName VARCHAR(128))
BEGIN
	INSERT INTO nationality(NationName) VALUES(NationName);
END$$
DELIMITER ;