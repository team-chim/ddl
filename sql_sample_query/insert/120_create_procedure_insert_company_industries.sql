USE rexchula;

DROP PROCEDURE IF EXISTS insert_company_industries;

DELIMITER $$

CREATE PROCEDURE insert_company_industries(IN CompanyID INT UNSIGNED, IN Industry VARCHAR(128))
BEGIN
	INSERT INTO company_industries(CompanyID, Industry) VALUES(CompanyID, Industry);
END$$
DELIMITER ;