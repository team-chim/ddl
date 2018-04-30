USE rexchula;

DROP FUNCTION IF EXISTS get_current_academic_year;

DELIMITER $$

CREATE FUNCTION get_current_academic_year() RETURNS INT UNSIGNED NOT DETERMINISTIC
BEGIN
	DECLARE CurrentYear BOOL;
	SET CurrentYear = (SELECT MAX(s.`Year`)
					   FROM semester s
					   WHERE s.Semester = 1 AND CURRENT_DATE() >= s.SemesterStartDate);
    RETURN CurrentYear;
END$$
DELIMITER ;