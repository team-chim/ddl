USE rexchula;

DROP PROCEDURE IF EXISTS insert_company_branch;

DELIMITER $$

CREATE PROCEDURE insert_company_branch(IN CompanyID INT UNSIGNED, IN BranchName VARCHAR(128), IN Manager VARCHAR(128), IN TelNo VARCHAR(128), IN Address VARCHAR(128), IN City VARCHAR(128), IN State VARCHAR(128), IN PostalCode VARCHAR(128), IN Country VARCHAR(128))
BEGIN
	INSERT INTO company_branch(CompanyID, BranchName, Manager, TelNo, Address, City, State, PostalCode, Country) VALUES(CompanyID, BranchName, Manager, TelNo, Address, City, State, PostalCode, Country);
END$$
DELIMITER ;