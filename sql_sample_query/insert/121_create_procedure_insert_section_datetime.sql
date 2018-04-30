USE rexchula;

DROP PROCEDURE IF EXISTS insert_section_datetime;

DELIMITER $$

CREATE PROCEDURE insert_section_datetime(IN SubjectID CHAR(7), IN `Year` INT UNSIGNED, IN Semester INT UNSIGNED, IN SectionNo INT UNSIGNED, IN `Day` ENUM('SU', 'MO', 'TU', 'WE', 'TH', 'FR', 'SA'), IN StartTime TIME, IN EndTime TIME)
BEGIN
	INSERT INTO section_datetime(SubjectID, `Year`, Semester, SectionNo, `Day`, StartTime, EndTime) VALUES(SubjectID, `Year`, Semester, SectionNo, `Day`, StartTime, EndTime);
END$$
DELIMITER ;