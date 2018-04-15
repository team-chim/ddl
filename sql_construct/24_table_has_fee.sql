USE rexchula;

DROP TABLE IF EXISTS has_fee;

CREATE TABLE has_fee
(
	FacultyGroupID INT UNSIGNED,
    NationName VARCHAR(128),
    `Year` INT UNSIGNED,
    GradFee INT UNSIGNED NOT NULL,
    UndergradFee INT UNSIGNED NOT NULL,
    CONSTRAINT pk_has_fee PRIMARY KEY(FacultyGroupID, NationName, `Year`),
    CONSTRAINT fk1_has_fee FOREIGN KEY(FacultyGroupID) REFERENCES faculty_group(FacultyGroupID) ON DELETE CASCADE,
    CONSTRAINT fk2_has_fee FOREIGN KEY(NationName) REFERENCES nationality(NationName) ON DELETE CASCADE,
    CONSTRAINT fk3_has_fee FOREIGN KEY(`Year`) REFERENCES academic_year(`Year`) ON DELETE CASCADE
);