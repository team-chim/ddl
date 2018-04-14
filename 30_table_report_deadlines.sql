USE rexchula;

DROP TABLE IF EXISTS report_deadlines;

CREATE TABLE report_deadlines
(
	StudentID CHAR(10),
    `Year` INT UNSIGNED,
    CompanyID INT UNSIGNED,
    BranchName VARCHAR(128),
    `Number` INT UNSIGNED,
    Deadline DATE NOT NULL,
    CONSTRAINT pk_report_deadlines PRIMARY KEY(StudentID, `Year`, CompanyID, BranchName, `Number`),
    CONSTRAINT fk_report_deadlines FOREIGN KEY(StudentID, `Year`, CompanyID, BranchName) REFERENCES eng_official_internship(StudentID, `Year`, CompanyID, BranchName) ON DELETE CASCADE
);