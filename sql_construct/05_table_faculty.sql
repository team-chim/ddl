USE rexchula;

DROP TABLE IF EXISTS faculty;

CREATE TABLE faculty
(
	FacultyID INT UNSIGNED PRIMARY KEY,
    NameEN VARCHAR(128) UNIQUE NOT NULL,
    NameTH VARCHAR(128),
    TelNo VARCHAR(128),
    BelongsTo INT UNSIGNED NOT NULL,
    FOREIGN KEY (BelongsTo) REFERENCES faculty_group(FacultyGroupID) ON DELETE RESTRICT ON UPDATE CASCADE
);