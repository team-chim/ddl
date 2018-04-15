USE rexchula;

DROP FUNCTION IF EXISTS calculate_gpax;

DELIMITER $$

CREATE FUNCTION calculate_gpax(StudentID CHAR(10)) RETURNS DOUBLE(3, 2) NOT DETERMINISTIC
BEGIN
	DECLARE GPAX DOUBLE(3, 2);
	SET GPAX = (SELECT CAST((SUM(g.Grade * g.Credit) / SUM(g.Credit)) AS DECIMAL(3, 2)) AS GPAX
				FROM   (SELECT stdy.Grade, (SELECT sbj.Credit
											FROM `subject` sbj
											WHERE stdy.SubjectID = sbj.SubjectID AND stdy.Grade IS NOT NULL) AS Credit
						FROM studies stdy
						WHERE stdy.StudentID = StudentID) g);
    RETURN GPAX;
END$$
DELIMITER ;