USE rexchula;

DROP TABLE IF EXISTS has_fee;

CREATE TABLE has_fee
(
	FacultyGroupID INT UNSIGNED,
    IsThai BOOL,
    EntryYear INT UNSIGNED,
    GradFee INT UNSIGNED NOT NULL,
    UndergradFee INT UNSIGNED NOT NULL,
    CONSTRAINT pk_has_fee PRIMARY KEY(FacultyGroupID, IsThai, EntryYear),
    CONSTRAINT fk1_has_fee FOREIGN KEY(FacultyGroupID) REFERENCES faculty_group(FacultyGroupID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk2_has_fee FOREIGN KEY(EntryYear) REFERENCES academic_year(`Year`) ON DELETE CASCADE ON UPDATE CASCADE
);