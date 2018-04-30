USE rexchula;

DROP TABLE IF EXISTS undergrad_student;

CREATE TABLE undergrad_student
(
	StudentID CHAR(10) PRIMARY KEY,
    MinorFaculty INT UNSIGNED,
    MinorDepartment INT UNSIGNED,
    CONSTRAINT fk1_undergrad_student FOREIGN KEY(StudentID) REFERENCES student(StudentID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk2_undergrad_student FOREIGN KEY(MinorFaculty, MinorDepartment) REFERENCES department(FacultyID, DepartmentID) ON DELETE SET NULL ON UPDATE CASCADE
);