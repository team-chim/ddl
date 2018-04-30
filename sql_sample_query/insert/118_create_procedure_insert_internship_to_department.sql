USE rexchula;

DROP PROCEDURE IF EXISTS insert_internship_to_department;

DELIMITER $$

CREATE PROCEDURE insert_internship_to_department(IN CompanyID INT UNSIGNED, IN `Year` INT UNSIGNED, IN OfferID INT UNSIGNED, IN FacultyID INT UNSIGNED, IN DepartmentID INT UNSIGNED)
BEGIN
	INSERT INTO internship_to_department(CompanyID, `Year`, OfferID, FacultyID, DepartmentID) VALUES(CompanyID, `Year`, OfferID, FacultyID, DepartmentID);
END$$
DELIMITER ;