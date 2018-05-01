USE rexchula;

DROP TRIGGER IF EXISTS before_update_internship;
DROP TRIGGER IF EXISTS after_update_internship;

DELIMITER $$

CREATE TRIGGER before_update_internship
BEFORE UPDATE ON internship
FOR EACH ROW
BEGIN
	IF DATE_ADD(NEW.StartDate, INTERVAL 56 DAY) > NEW.EndDate THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Date is invalid';
	END IF;
END$$

CREATE TRIGGER after_update_internship
AFTER UPDATE ON internship
FOR EACH ROW
BEGIN
	UPDATE eng_official_internship
	SET HasOverdueReport = NULL
	WHERE StudentID = NEW.StudentID AND `Year` = NEW.`Year` AND CompanyID = NEW.CompanyID AND BranchName = NEW.BranchName;
END$$
DELIMITER ;