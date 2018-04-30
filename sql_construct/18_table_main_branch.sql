USE rexchula;

DROP TABLE IF EXISTS main_branch;

CREATE TABLE main_branch
(
	CompanyID INT UNSIGNED PRIMARY KEY,
    BranchName VARCHAR(128) NOT NULL,
	CONSTRAINT fk_main_branch FOREIGN KEY(CompanyID, BranchName) REFERENCES company_branch(CompanyID, BranchName) ON DELETE RESTRICT ON UPDATE CASCADE
);