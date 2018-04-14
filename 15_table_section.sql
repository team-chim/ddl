USE rexchula;

DROP TABLE IF EXISTS section;

CREATE TABLE section
(
	SubjectID CHAR(7),
    `Year` INT UNSIGNED,
    Semester INT UNSIGNED,
    SectionNo INT UNSIGNED,
    Classroom VARCHAR(128),
    GenedType INT UNSIGNED NOT NULL,
    MaxStudent INT UNSIGNED NOT NULL,
    CurrentStudent INT UNSIGNED,
    TeachedBy CHAR(10),
    CONSTRAINT pk_section PRIMARY KEY(SubjectID, `Year`, Semester, SectionNo),
    CONSTRAINT fk1_section FOREIGN KEY(SubjectID) REFERENCES subject(SubjectID) ON DELETE CASCADE,
    CONSTRAINT fk2_section FOREIGN KEY(`Year`, Semester) REFERENCES semester(`Year`, Semester) ON DELETE RESTRICT,
    CONSTRAINT TeachedBy_section FOREIGN KEY(TeachedBy) REFERENCES teacher(TeacherID) ON DELETE SET NULL
);