USE rexchula;

DROP TABLE IF EXISTS report;

CREATE TABLE report
(
	StudentID CHAR(10),
    `Year` INT UNSIGNED,
    CompanyID INT UNSIGNED,
    BranchName VARCHAR(128),
    `Number` INT UNSIGNED,
    `Date` DATE NOT NULL,
    Hours INT UNSIGNED,
    CONSTRAINT pk_report PRIMARY KEY(StudentID, `Year`, CompanyID, BranchName, `Number`),
    CONSTRAINT fk_report FOREIGN KEY(StudentID, `Year`, CompanyID, BranchName) REFERENCES eng_official_internship(StudentID, `Year`, CompanyID, BranchName) ON DELETE CASCADE ON UPDATE CASCADE
);