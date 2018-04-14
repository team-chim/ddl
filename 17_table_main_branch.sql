USE rexchula;

DROP TABLE IF EXISTS main_branch;

CREATE TABLE main_branch
(
	CompanyID INT UNSIGNED PRIMARY KEY,
    BranchName VARCHAR(128) NOT NULL,
    CONSTRAINT fk1_main_branch FOREIGN KEY(CompanyID) REFERENCES company(CompanyID) ON DELETE CASCADE,
	CONSTRAINT fk2_main_branch FOREIGN KEY(CompanyID, BranchName) REFERENCES company_branch(CompanyID, BranchName) ON DELETE RESTRICT
);