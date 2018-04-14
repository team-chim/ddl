USE rexchula;

DROP TRIGGER IF EXISTS insert_semester;

DELIMITER $$

CREATE TRIGGER insert_semester
BEFORE INSERT ON semester
FOR EACH ROW
BEGIN
	DECLARE DateValid BOOL;

	IF NEW.Semester < 1 OR NEW.Semester > 3 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Semester value must be between 1-3';
	END IF;
    
    SET DateValid =  (NEW.SemesterEndDate >= NEW.SemesterStartDate AND
					  NEW.RegisterEndDate >= NEW.RegisterStartDate AND
					  NEW.AddingEndDate >= NEW.AddingStartDate AND
					  NEW.DroppingEndDate >= NEW.DroppingStartDate AND
					  NEW.WithdrawEndDate >= NEW.WithdrawStartDate AND
					  NEW.SemesterStartDate > NEW.RegisterStartDate AND
					  NEW.AddingStartDate >= NEW.RegisterStartDate AND
					  NEW.DroppingStartDate >= NEW.RegisterStartDate AND
					  NEW.WithdrawStartDate >= NEW.DroppingEndDate);
    IF NOT DateValid THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Dates is invalid';
	END IF;
END$$
DELIMITER ;