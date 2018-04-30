USE rexchula;

DROP TABLE IF EXISTS class;

CREATE TABLE class
(
	SubjectID CHAR(7),
    `Year` INT UNSIGNED,
    Semester INT UNSIGNED,
    MidtermStartDatetime DATETIME,
    MidtermEndDatetime DATETIME,
    FinalStartDatetime DATETIME,
    FinalEndDatetime DATETIME,
    CONSTRAINT pk_class PRIMARY KEY(SubjectID, `Year`, Semester),
    CONSTRAINT fk1_class FOREIGN KEY(SubjectID) REFERENCES `subject`(SubjectID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk2_class FOREIGN KEY(`Year`, Semester) REFERENCES semester(`Year`, Semester) ON DELETE RESTRICT ON UPDATE RESTRICT
);