USE rexchula;

DROP TABLE IF EXISTS internship;

CREATE TABLE internship
(
	StudentID CHAR(10),
    `Year` INT UNSIGNED,
    CompanyID INT UNSIGNED,
    BranchName VARCHAR(128),
    `Status` ENUM('Pending', 'Approved', 'Working', 'Completed') NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    PositionNameEN VARCHAR(128),
    PositionNameTH VARCHAR(128),
    `Comment` TEXT,
    Rating INT UNSIGNED,
    OfferID INT UNSIGNED,
    CONSTRAINT pk_internship PRIMARY KEY(StudentID, `Year`, CompanyID, BranchName),
    CONSTRAINT fk1_internship FOREIGN KEY(StudentID) REFERENCES undergrad_student(StudentID) ON DELETE RESTRICT,
    CONSTRAINT fk2_internship FOREIGN KEY(`Year`) REFERENCES academic_year(`Year`) ON DELETE RESTRICT,
    CONSTRAINT fk3_internship FOREIGN KEY(CompanyID, BranchName) REFERENCES company_branch(CompanyID, BranchName) ON DELETE RESTRICT,
    CONSTRAINT TakesOffer_internship FOREIGN KEY(CompanyID, `Year`, OfferID) REFERENCES internship_offer(CompanyID, `Year`, OfferID) ON DELETE RESTRICT
);