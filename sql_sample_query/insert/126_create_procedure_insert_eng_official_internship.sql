USE rexchula;

DROP PROCEDURE IF EXISTS insert_eng_official_internship;

DELIMITER $$

CREATE PROCEDURE insert_eng_official_internship(IN StudentID CHAR(10), IN `Year` INT UNSIGNED, IN CompanyID INT UNSIGNED, IN BranchName VARCHAR(128))
BEGIN
	INSERT INTO eng_official_internship(StudentID, `Year`, CompanyID, BranchName) VALUES(StudentID, `Year`, CompanyID, BranchName);
END$$
DELIMITER ;