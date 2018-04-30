USE rexchula;

DROP TABLE IF EXISTS company_branch;

CREATE TABLE company_branch
(
	CompanyID INT UNSIGNED,
    BranchName VARCHAR(128),
    Manager VARCHAR(128),
    TelNo VARCHAR(128),
    Address VARCHAR(128),
    City VARCHAR(128),
    State VARCHAR(128),
    PostalCode VARCHAR(128),
    Country VARCHAR(128),
    CONSTRAINT pk_company_branch PRIMARY KEY(CompanyID, BranchName),
    CONSTRAINT fk_company_branch FOREIGN KEY(CompanyID) REFERENCES company(CompanyID) ON DELETE CASCADE ON UPDATE CASCADE
);