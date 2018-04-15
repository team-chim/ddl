USE rexchula;

DROP FUNCTION IF EXISTS has_overdue_report;

DELIMITER $$

CREATE FUNCTION has_overdue_report(StudentID CHAR(10), `Year` INT UNSIGNED, CompanyID INT UNSIGNED, BranchName VARCHAR(128)) RETURNS BOOL NOT DETERMINISTIC
BEGIN
	DECLARE HasOverdueReport BOOL;
	SET HasOverdueReport = (SELECT COUNT(d.`Number`) > 0 AS Overdue
						    FROM report_deadlines d NATURAL LEFT JOIN report r
						    WHERE d.StudentID = StudentID AND d.`Year` = `Year` AND d.CompanyID = CompanyID AND d.BranchName = BranchName AND
							      CURRENT_DATE() >= d.Deadline AND (r.`Date` IS NULL OR r.`Date` > d.Deadline));
    RETURN HasOverdueReport;
END$$
DELIMITER ;