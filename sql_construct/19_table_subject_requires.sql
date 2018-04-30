USE rexchula;

DROP TABLE IF EXISTS subject_requires;

CREATE TABLE subject_requires
(
	SubjectID CHAR(7),
    ReqSubjectID CHAR(7),
    CONSTRAINT pk_subject_requires PRIMARY KEY(SubjectID, ReqSubjectID),
    CONSTRAINT fk1_subject_requires FOREIGN KEY(SubjectID) REFERENCES subject(SubjectID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk2_subject_requires FOREIGN KEY(ReqSubjectID) REFERENCES subject(SubjectID) ON DELETE CASCADE ON UPDATE CASCADE
);