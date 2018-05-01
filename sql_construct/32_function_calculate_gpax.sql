USE rexchula;

DROP FUNCTION IF EXISTS calculate_gpax;

DELIMITER $$

CREATE FUNCTION calculate_gpax(StudentID CHAR(10)) RETURNS DOUBLE(3, 2) NOT DETERMINISTIC
BEGIN
	DECLARE GPAX DOUBLE(3, 2);
	SET GPAX = (SELECT CAST((SUM(grade_to_double(g.Grade) * g.Credit) / SUM(g.Credit)) AS DECIMAL(3, 2)) AS GPAX
				FROM   (SELECT stdy.Grade, s.Credit
						FROM studies stdy NATURAL LEFT JOIN `subject` s
						WHERE stdy.StudentID = StudentID AND
							  stdy.Grade <> 'P' AND
                              stdy.Grade <> 'W' AND
                              stdy.Grade <> 'S' AND
                              stdy.Grade <> 'U') g);
    RETURN GPAX;
END$$
DELIMITER ;