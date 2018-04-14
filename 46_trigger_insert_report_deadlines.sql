USE rexchula;

DROP TRIGGER IF EXISTS insert_report_deadlines;

DELIMITER $$

CREATE TRIGGER insert_report_deadlines
BEFORE INSERT ON report_deadlines
FOR EACH ROW
BEGIN
	DECLARE StartDate DATE;
    DECLARE Length INT UNSIGNED;
    SET StartDate = (SELECT i.StartDate
					 FROM internship i
                     WHERE i.StudentID = NEW.StudentID AND i.`Year` = NEW.`Year` AND i.CompanyID = NEW.CompanyID AND i.BranchName = NEW.BranchName);
	SET Length = NEW.`Number` * 14;
    IF NEW.`Number` < 1 OR NEW.`Number` > 4 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Report number must be between 1-4';
	END IF;
    IF NEW.Deadline <> DATE_ADD(StartDate, INTERVAL Length DAY) THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Invalid Deadline';
	END IF;
END$$
DELIMITER ;