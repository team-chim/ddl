USE rexchula;

DROP TABLE IF EXISTS student;

CREATE TABLE student
(
	StudentID CHAR(10) PRIMARY KEY,
    FnameEN VARCHAR(128) NOT NULL,
    MnameEN VARCHAR(128),
    LnameEN VARCHAR(128) NOT NULL,
    FnameTH VARCHAR(128),
    MnameTH VARCHAR(128),
    LnameTH VARCHAR(128),
    StudentEmail VARCHAR(128),
    GPAX DOUBLE(3, 2),
    EnterYear INT UNSIGNED NOT NULL,
    CONSTRAINT EnterYear_student FOREIGN KEY(EnterYear) REFERENCES academic_year(`Year`) ON DELETE RESTRICT,
    Adviser CHAR(10) NOT NULL,
    CONSTRAINT Adviser_student FOREIGN KEY(Adviser) REFERENCES teacher(TeacherID) ON DELETE RESTRICT,
    Nation VARCHAR(128) NOT NULL,
    CONSTRAINT Nation_student FOREIGN KEY(Nation) REFERENCES nationality(NationName) ON DELETE RESTRICT,
    MajorFaculty INT UNSIGNED NOT NULL,
    MajorDepartment INT UNSIGNED NOT NULL,
    CONSTRAINT Major_student FOREIGN KEY(MajorFaculty, MajorDepartment) REFERENCES department(FacultyID, DepartmentID) ON DELETE RESTRICT
);