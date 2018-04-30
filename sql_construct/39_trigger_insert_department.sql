USE rexchula;

DROP TRIGGER IF EXISTS insert_department;

DELIMITER $$

CREATE TRIGGER insert_department
BEFORE INSERT ON department
FOR EACH ROW
BEGIN
	DECLARE MaxID INT UNSIGNED;
    SET MaxID = (SELECT MAX(d.DepartmentID)
				 FROM (SELECT d.DepartmentID, (@counter := @counter + 1) AS Counter
					   FROM department d, (SELECT @counter := 0) c
					   WHERE d.FacultyID = NEW.FacultyID) d
				 WHERE d.DepartmentID = d.Counter);
	IF NEW.DepartmentID IS NULL THEN
		SET NEW.DepartmentID = IF(MaxID IS NULL, 1, MaxID + 1);
	END IF;
END$$
DELIMITER ;