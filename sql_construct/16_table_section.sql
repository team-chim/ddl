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
    CONSTRAINT fk_section FOREIGN KEY(SubjectID, `Year`, Semester) REFERENCES class(SubjectID, `Year`, Semester) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT TeachedBy_section FOREIGN KEY(TeachedBy) REFERENCES teacher(TeacherID) ON DELETE SET NULL ON UPDATE CASCADE
);