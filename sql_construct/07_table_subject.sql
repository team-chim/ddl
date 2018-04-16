USE rexchula;

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject`
(
	SubjectID CHAR(7) PRIMARY KEY,
    NameEN VARCHAR(128) UNIQUE NOT NULL,
    NameTH VARCHAR(128) UNIQUE,
    Credit INT UNSIGNED NOT NULL,
    MidtermStartDatetime DATETIME,
    MidtermEndDatetime DATETIME,
    FinalStartDatetime DATETIME,
    FinalEndDatetime DATETIME
);