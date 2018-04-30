USE rexchula;

DROP TABLE IF EXISTS enrollable_degrees;

CREATE TABLE enrollable_degrees
(
	SubjectID CHAR(7),
    EnrollableDegree ENUM('Bachelor', 'Master', 'Doctor'),
    CONSTRAINT pk_enrollable_degrees PRIMARY KEY(SubjectID, EnrollableDegree),
    CONSTRAINT fk_enrollable_degrees FOREIGN KEY(SubjectID) REFERENCES subject(SubjectID) ON DELETE CASCADE ON UPDATE CASCADE
);