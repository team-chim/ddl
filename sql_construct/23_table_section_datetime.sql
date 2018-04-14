USE rexchula;

DROP TABLE IF EXISTS section_datetime;

CREATE TABLE section_datetime
(
	SubjectID CHAR(7),
    `Year` INT UNSIGNED,
    Semester INT UNSIGNED,
    SectionNo INT UNSIGNED,
    `Datetime` DATETIME,
    CONSTRAINT pk_section_datetime PRIMARY KEY(SubjectID, `Year`, Semester, SectionNo, `Datetime`),
    CONSTRAINT fk_section_datetime FOREIGN KEY(SubjectID, `Year`, Semester, SectionNo) REFERENCES section(SubjectID, `Year`, Semester, SectionNo) ON DELETE CASCADE
);