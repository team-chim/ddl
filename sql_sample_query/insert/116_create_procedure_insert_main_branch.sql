USE rexchula;

DROP PROCEDURE IF EXISTS insert_main_branch;

DELIMITER $$

CREATE PROCEDURE insert_main_branch(IN CompanyID INT UNSIGNED, IN BranchName VARCHAR(128))
BEGIN
	INSERT INTO main_branch(CompanyID, BranchName) VALUES(CompanyID, BranchName);
END$$
DELIMITER ;