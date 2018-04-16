USE rexchula;

DROP TABLE IF EXISTS faculty_group;

CREATE TABLE faculty_group
(
	FacultyGroupID INT UNSIGNED PRIMARY KEY,
    NameEN VARCHAR(128) UNIQUE NOT NULL,
    NameTH VARCHAR(128)
);