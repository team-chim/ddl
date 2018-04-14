USE rexchula;

DROP TABLE IF EXISTS department;

CREATE TABLE department
(
	FacultyID INT UNSIGNED,
    DepartmentID INT UNSIGNED,
    NameEN VARCHAR(128) NOT NULL,
    NameTH VARCHAR(128),
    CONSTRAINT pk_department PRIMARY KEY(FacultyID, DepartmentID),
    CONSTRAINT fk_department FOREIGN KEY(FacultyID) REFERENCES faculty(FacultyID) ON DELETE CASCADE
);