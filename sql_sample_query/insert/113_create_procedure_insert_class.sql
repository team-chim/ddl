USE rexchula;

DROP PROCEDURE IF EXISTS insert_class;

DELIMITER $$

CREATE PROCEDURE insert_class(IN SubjectID CHAR(10), IN `Year` INT UNSIGNED, IN Semester INT UNSIGNED, IN Credit INT UNSIGNED, IN MidtermStartDatetime DATETIME, IN MidtermEndDatetime DATETIME, IN FinalStartDatetime DATETIME, IN FinalEndDatetime DATETIME)
BEGIN
	INSERT INTO class(SubjectID, `Year`, Semester, Credit, MidtermStartDatetime, MidtermEndDatetime, FinalStartDatetime, FinalEndDatetime) VALUES(SubjectID, `Year`, Semester, Credit, MidtermStartDatetime, MidtermEndDatetime, FinalStartDatetime, FinalEndDatetime);
END$$
DELIMITER ;