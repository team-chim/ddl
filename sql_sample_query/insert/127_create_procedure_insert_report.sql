USE rexchula;

DROP PROCEDURE IF EXISTS insert_report;

DELIMITER $$

CREATE PROCEDURE insert_report(IN StudentID CHAR(10), IN `Year` INT UNSIGNED, IN CompanyID INT UNSIGNED, IN BranchName VARCHAR(128), IN `Number` INT UNSIGNED, IN `Date` DATE, IN Hours INT UNSIGNED)
BEGIN
	INSERT INTO report(StudentID, `Year`, CompanyID, BranchName, `Number`, `Date`, Hours) VALUES(StudentID, `Year`, CompanyID, BranchName, `Number`, `Date`, Hours);
END$$
DELIMITER ;