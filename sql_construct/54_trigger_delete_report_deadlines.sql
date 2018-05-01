USE rexchula;

DROP TRIGGER IF EXISTS delete_report_deadlines;

DELIMITER $$

CREATE TRIGGER delete_report_deadlines
BEFORE DELETE ON report_deadlines
FOR EACH ROW
BEGIN
	SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Cannot delete generated column';
END$$
DELIMITER ;