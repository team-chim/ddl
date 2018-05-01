USE rexchula;

DROP TRIGGER IF EXISTS delete_enrollable_degrees;

DELIMITER $$

CREATE TRIGGER delete_enrollable_degrees
BEFORE DELETE ON enrollable_degrees
FOR EACH ROW
BEGIN
	SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Cannot delete generated column';
END$$
DELIMITER ;