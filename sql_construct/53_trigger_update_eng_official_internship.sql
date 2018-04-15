USE rexchula;

DROP TRIGGER IF EXISTS update_eng_official_internship;

DELIMITER $$

CREATE TRIGGER update_eng_official_internship
BEFORE UPDATE ON eng_official_internship
FOR EACH ROW
BEGIN
	DECLARE StartDate DATE;
    SET StartDate = (SELECT i.StartDate
					 FROM internship i
                     WHERE i.StudentID = NEW.StudentID AND i.`Year` = NEW.`Year` AND i.CompanyID = NEW.CompanyID AND i.BranchName = NEW.BranchName);
                     
	IF NEW.HasOverdueReport IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Cannot assigned value to generated column HasOverdueReport';
	END IF;
    
    IF NEW.StudentID = OLD.StudentID AND NEW.`Year` = OLD.`Year` AND NEW.CompanyID = OLD.CompanyID AND NEW.BranchName = OLD.BranchName THEN
		SET NEW.HasOverdueReport = has_overdue_report(NEW.StudentID, NEW.`Year`, NEW.CompanyID, NEW.BranchName);
	ELSE
		SET NEW.HasOverdueReport = CURRENT_DATE() > DATE_ADD(StartDate, INTERVAL 14 DAY);
	END IF;
END$$
DELIMITER ;