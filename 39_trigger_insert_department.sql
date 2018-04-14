USE rexchula;

DROP TRIGGER IF EXISTS insert_department;

DELIMITER $$

CREATE TRIGGER insert_department
BEFORE INSERT ON department
FOR EACH ROW
BEGIN
	DECLARE MaxID INT UNSIGNED;
    SET MaxID = (SELECT MAX(DepartmentID)
				FROM department d
				WHERE d.FacultyID = NEW.FacultyID);
	IF NEW.DepartmentID IS NULL THEN
		SET NEW.DepartmentID = IF(MaxID IS NULL, 1, MaxID + 1);
    ELSE
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Assigning value to DepartmentID is not allowed';
	END IF;
END$$
DELIMITER ;