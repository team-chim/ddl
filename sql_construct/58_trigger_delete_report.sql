USE rexchula;

DROP TRIGGER IF EXISTS delete_report;

DELIMITER $$

CREATE TRIGGER delete_report
AFTER DELETE ON report
FOR EACH ROW
BEGIN
	UPDATE eng_official_internship
    SET HasOverdueReport = NULL
    WHERE StudentID = OLD.StudentID AND `Year` = OLD.`Year` AND CompanyID = OLD.CompanyID AND BranchName = OLD.BranchName;
END$$
DELIMITER ;