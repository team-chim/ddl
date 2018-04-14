USE rexchula;

DROP TABLE IF EXISTS internship_offer;

CREATE TABLE internship_offer
(
	CompanyID INT UNSIGNED,
    `Year` INT UNSIGNED,
    OfferID INT UNSIGNED,
    PositionNameEN VARCHAR(128),
    PositionNameTH VARCHAR(128),
    PositionDescriptionEN TEXT,
    PositionDescriptionTH TEXT,
    NumberOfPosition INT UNSIGNED,
    OtherRequirements TEXT,
    StatedMinimumGrade DOUBLE(3, 2),
    StatedSalary INT UNSIGNED,
    OtherBenefits TEXT,
    ExpiryDate DATE,
    CONSTRAINT pk_internship_offer PRIMARY KEY(CompanyID, `Year`, OfferID),
    CONSTRAINT fk1_internship_offer FOREIGN KEY(CompanyID) REFERENCES company(CompanyID) ON DELETE RESTRICT,
    CONSTRAINT fk2_internship_offer FOREIGN KEY(`Year`) REFERENCES academic_year(`Year`) ON DELETE RESTRICT
);