USE rexchula;

DROP TABLE IF EXISTS grad_student;

CREATE TABLE grad_student
(
	StudentID CHAR(10) PRIMARY KEY,
    FOREIGN KEY(StudentID) REFERENCES student(StudentID) ON DELETE CASCADE
);