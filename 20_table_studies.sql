USE rexchula;

DROP TABLE IF EXISTS studies;

CREATE TABLE studies
(
	StudentID CHAR(10),
    SubjectID CHAR(7),
    `Year` INT UNSIGNED,
    Semester INT UNSIGNED,
    SectionNo INT UNSIGNED,
    Grade DOUBLE(3, 2),
    CONSTRAINT pk_studies PRIMARY KEY(StudentID, SubjectID, `Year`, Semester, SectionNo),
    CONSTRAINT fk1_studies FOREIGN KEY(StudentID) REFERENCES student(StudentID) ON DELETE CASCADE,
    CONSTRAINT fk2_studies FOREIGN KEY(SubjectID, `Year`, Semester, SectionNo) REFERENCES section(SubjectID, `Year`, Semester, SectionNo) ON DELETE CASCADE
);