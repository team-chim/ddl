USE rexchula;

DROP TABLE IF EXISTS company_industries;

CREATE TABLE company_industries
(
	CompanyID INT UNSIGNED,
    Industry VARCHAR(128),
    CONSTRAINT pk_company_industries PRIMARY KEY(CompanyID, Industry),
    CONSTRAINT fk_company_industries FOREIGN KEY(CompanyID) REFERENCES company(CompanyID) ON DELETE CASCADE ON UPDATE CASCADE
);