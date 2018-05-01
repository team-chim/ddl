USE rexchula;

DROP TRIGGER IF EXISTS before_update_report;
DROP TRIGGER IF EXISTS after_update_report;

DELIMITER $$

CREATE TRIGGER before_update_report
BEFORE UPDATE ON report
FOR EACH ROW
BEGIN
	IF NEW.`Number` < 1 OR NEW.`Number` > 4 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Number value must be between 1-4';
	ELSEIF NEW.`Date` > CURRENT_DATE() THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Date is invalid';
	END IF;
END$$

CREATE TRIGGER after_update_report
AFTER UPDATE ON report
FOR EACH ROW
BEGIN
	UPDATE eng_official_internship
    SET HasOverdueReport = NULL
    WHERE StudentID = OLD.StudentID AND `Year` = OLD.`Year` AND CompanyID = OLD.CompanyID AND BranchName = OLD.BranchName;
    
    UPDATE eng_official_internship
    SET HasOverdueReport = NULL
    WHERE StudentID = NEW.StudentID AND `Year` = NEW.`Year` AND CompanyID = NEW.CompanyID AND BranchName = NEW.BranchName;
END$$
DELIMITER ;