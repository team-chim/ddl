USE rexchula;

DROP TRIGGER IF EXISTS update_eng_official_internship;

DELIMITER $$

CREATE TRIGGER update_eng_official_internship
BEFORE UPDATE ON eng_official_internship
FOR EACH ROW
BEGIN
	IF NEW.HasOverdueReport IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Cannot assigned value to generated column HasOverdueReport';
	END IF;
    SET NEW.HasOverdueReport = has_overdue_report(NEW.StudentID, NEW.`Year`, NEW.CompanyID, NEW.BranchName);
END$$
DELIMITER ;