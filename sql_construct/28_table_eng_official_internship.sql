USE rexchula;

DROP TABLE IF EXISTS eng_official_internship;

CREATE TABLE eng_official_internship
(
	StudentID CHAR(10),
    `Year` INT UNSIGNED,
    CompanyID INT UNSIGNED,
    BranchName VARCHAR(128),
    HasOverdueReport BOOL,
    CONSTRAINT pk_eng_official_internship PRIMARY KEY(StudentID, `Year`, CompanyID, BranchName),
    CONSTRAINT fk_eng_official_internship FOREIGN KEY(StudentID, `Year`, CompanyID, BranchName) REFERENCES internship(StudentID, `Year`, CompanyID, BranchName) ON DELETE CASCADE
);