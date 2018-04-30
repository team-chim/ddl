USE rexchula;

DROP PROCEDURE IF EXISTS insert_company;

DELIMITER $$

CREATE PROCEDURE insert_company(IN NameEN VARCHAR(128), IN NameTH VARCHAR(128))
BEGIN
	INSERT INTO company(NameEN, NameTH) VALUES(NameEN, NameTH);
END$$
DELIMITER ;