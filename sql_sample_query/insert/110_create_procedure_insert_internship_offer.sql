USE rexchula;

DROP PROCEDURE IF EXISTS insert_internship_offer;

DELIMITER $$

CREATE PROCEDURE insert_internship_offer(IN CompanyID INT UNSIGNED, IN `Year` INT UNSIGNED, IN PositionNameEN VARCHAR(128), IN PositionNameTH VARCHAR(128), IN PositionDescriptionEN TEXT, IN PositionDescriptionTH TEXT, IN NumberOfPosition INT UNSIGNED, IN OtherRequirements TEXT, IN StatedMinimumGrade DOUBLE(3, 2), IN StatedSalary INT UNSIGNED, IN OtherBenefits TEXT, IN ExpiryDate DATE)
BEGIN
	INSERT INTO internship_offer(CompanyID, `Year`, PositionNameEN, PositionNameTH, PositionDescriptionEN, PositionDescriptionTH, NumberOfPosition, OtherRequirements, StatedMinimumGrade, StatedSalary, OtherBenefits, ExpiryDate) VALUES(CompanyID, `Year`, PositionNameEN, PositionNameTH, PositionDescriptionEN, PositionDescriptionTH, NumberOfPosition, OtherRequirements, StatedMinimumGrade, StatedSalary, OtherBenefits, ExpiryDate);
END$$
DELIMITER ;