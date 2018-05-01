USE rexchula;

DROP TRIGGER IF EXISTS update_report_deadlines;

DELIMITER $$

CREATE TRIGGER update_report_deadlines
BEFORE UPDATE ON report_deadlines
FOR EACH ROW
BEGIN
	DECLARE StartDate DATE;
    DECLARE Length INT UNSIGNED;
    SET StartDate = (SELECT i.StartDate
					 FROM internship i
                     WHERE i.StudentID = NEW.StudentID AND i.`Year` = NEW.`Year` AND i.CompanyID = NEW.CompanyID AND i.BranchName = NEW.BranchName);
	SET Length = NEW.`Number` * 14;
    IF NEW.`Number` <> OLD.`Number` THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Cannot change report number';
	END IF;
    IF NEW.Deadline IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Cannot assigned value to generated column Deadline';
	END IF;
    SET NEW.Deadline = DATE_ADD(StartDate, INTERVAL Length DAY);
END$$
DELIMITER ;