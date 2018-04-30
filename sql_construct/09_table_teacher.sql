USE rexchula;

DROP TABLE IF EXISTS teacher;

CREATE TABLE teacher
(
	TeacherID CHAR(10) PRIMARY KEY,
    FnameEN VARCHAR(128) NOT NULL,
    MnameEN VARCHAR(128),
    LnameEN VARCHAR(128) NOT NULL,
    FnameTH VARCHAR(128),
    MnameTH VARCHAR(128),
    LnameTH VARCHAR(128),
    TeacherEmail VARCHAR(128),
    TelNo VARCHAR(128),
    WorksForFaculty INT UNSIGNED NOT NULL,
    WorksForDepartment INT UNSIGNED NOT NULL,
    Since DATE NOT NULL,
    CONSTRAINT WorksFor_teacher FOREIGN KEY(WorksForFaculty, WorksForDepartment) REFERENCES department(FacultyID, DepartmentID) ON DELETE RESTRICT ON UPDATE CASCADE
);