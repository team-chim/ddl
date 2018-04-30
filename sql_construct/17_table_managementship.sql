USE rexchula;

DROP TABLE IF EXISTS managementship;

CREATE TABLE managementship
(
	TeacherID CHAR(10),
    FacultyID INT UNSIGNED,
    DepartmentID INT UNSIGNED,
    StartDate DATE,
    EndDate DATE,
    CONSTRAINT pk_managementship PRIMARY KEY(TeacherID, FacultyID, DepartmentID, StartDate),
    CONSTRAINT fk1_managementship FOREIGN KEY(TeacherID) REFERENCES teacher(TeacherID) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk2_managementship FOREIGN KEY(FacultyID, DepartmentID) REFERENCES department(FacultyID, DepartmentID) ON DELETE RESTRICT ON UPDATE CASCADE
);