USE rexchula;

DROP TABLE IF EXISTS internship_to_department;

CREATE TABLE internship_to_department
(
	CompanyID INT UNSIGNED,
    `Year` INT UNSIGNED,
    OfferID INT UNSIGNED,
    FacultyID INT UNSIGNED,
    DepartmentID INT UNSIGNED,
    CONSTRAINT pk_internship_to_department PRIMARY KEY(CompanyID, `Year`, OfferID, FacultyID, DepartmentID),
    CONSTRAINT fk1_internship_to_department FOREIGN KEY(CompanyID, `Year`, OfferID) REFERENCES internship_offer(CompanyID, `Year`, OfferID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk2_internship_to_department FOREIGN KEY(FacultyID, DepartmentID) REFERENCES department(FacultyID, DepartmentID) ON DELETE CASCADE ON UPDATE CASCADE
);