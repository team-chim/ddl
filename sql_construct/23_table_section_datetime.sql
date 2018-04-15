USE rexchula;

DROP TABLE IF EXISTS section_datetime;

CREATE TABLE section_datetime
(
	SubjectID CHAR(7),
    `Year` INT UNSIGNED,
    Semester INT UNSIGNED,
    SectionNo INT UNSIGNED,
    `Day` ENUM('SU', 'MO', 'TU', 'WE', 'TH', 'FR', 'SA'),
    StartTime TIME,
    EndTime TIME,
    CONSTRAINT pk_section_datetime PRIMARY KEY(SubjectID, `Year`, Semester, SectionNo, `Day`, StartTime),
    CONSTRAINT fk_section_datetime FOREIGN KEY(SubjectID, `Year`, Semester, SectionNo) REFERENCES section(SubjectID, `Year`, Semester, SectionNo) ON DELETE CASCADE ON UPDATE CASCADE
);