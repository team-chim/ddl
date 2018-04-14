USE rexchula;

DROP TABLE IF EXISTS has_fee;

CREATE TABLE has_fee
(
	FacultyGroupID INT UNSIGNED,
    Foreigness VARCHAR(128),
    `Year` INT UNSIGNED,
    GradFee INT UNSIGNED NOT NULL,
    UndergradFee INT UNSIGNED NOT NULL,
    CONSTRAINT pk_has_fee PRIMARY KEY(FacultyGroupID, Foreigness, `Year`),
    CONSTRAINT fk1_has_fee FOREIGN KEY(FacultyGroupID) REFERENCES faculty_group(FacultyGroupID) ON DELETE CASCADE,
    CONSTRAINT fk2_has_fee FOREIGN KEY(Foreigness) REFERENCES nationality(Foreigness) ON DELETE CASCADE,
    CONSTRAINT fk3_has_fee FOREIGN KEY(`Year`) REFERENCES academic_year(`Year`) ON DELETE CASCADE
);