USE rexchula;

DROP TABLE IF EXISTS semester;

CREATE TABLE semester
(
	`Year` INT UNSIGNED,
    Semester INT UNSIGNED,
    SemesterStartDate DATE NOT NULL,
    SemesterEndDate DATE NOT NULL,
    RegisterStartDate DATE NOT NULL,
    RegisterEndDate DATE NOT NULL,
    AddingStartDate DATE NOT NULL,
    AddingEndDate DATE NOT NULL,
    DroppingStartDate DATE NOT NULL,
    DroppingEndDate DATE NOT NULL,
    WithdrawStartDate DATE NOT NULL,
    WithdrawEndDate DATE NOT NULL,
    CONSTRAINT pk_semester PRIMARY KEY(`Year`, Semester),
    CONSTRAINT fk_semester FOREIGN KEY(`Year`) REFERENCES academic_year(`Year`) ON DELETE RESTRICT ON UPDATE RESTRICT
);