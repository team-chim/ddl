USE rexchula;

DROP PROCEDURE IF EXISTS insert_internship;

DELIMITER $$

CREATE PROCEDURE insert_internship(IN StudentID CHAR(10), IN `Year` INT UNSIGNED, IN CompanyID INT UNSIGNED, IN BranchName VARCHAR(128), IN `Status` ENUM('Pending', 'Approved', 'Working', 'Completed'), IN StartDate DATE, IN EndDate DATE, IN PositionNameEN VARCHAR(128), IN PositionNameTH VARCHAR(128), IN `Comment` TEXT, IN Rating INT UNSIGNED, IN OfferID INT UNSIGNED)
BEGIN
	INSERT INTO internship(StudentID, `Year`, CompanyID, BranchName, `Status`, StartDate, EndDate, PositionNameEN, PositionNameTH, `Comment`, Rating, OfferID) VALUES(StudentID, `Year`, CompanyID, BranchName, `Status`, StartDate, EndDate, PositionNameEN, PositionNameTH, `Comment`, Rating, OfferID);
END$$
DELIMITER ;