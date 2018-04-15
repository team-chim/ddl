USE rexchula;

DROP TRIGGER IF EXISTS before_insert_eng_official_internship;
DROP TRIGGER IF EXISTS after_insert_eng_official_internship;

DELIMITER $$

CREATE TRIGGER before_insert_eng_official_internship
BEFORE INSERT ON eng_official_internship
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
    SET NEW.HasOverdueReport = CURRENT_DATE() > DATE_ADD(StartDate, INTERVAL 14 DAY);
END$$

CREATE TRIGGER after_insert_eng_official_internship
AFTER INSERT ON eng_official_internship
FOR EACH ROW
BEGIN
	DECLARE StartDate DATE;
    SET StartDate = (SELECT i.StartDate
					 FROM internship i
                     WHERE i.StudentID = NEW.StudentID AND i.`Year` = NEW.`Year` AND i.CompanyID = NEW.CompanyID AND i.BranchName = NEW.BranchName);
	INSERT INTO report_deadlines(StudentID, `Year`, CompanyID, BranchName, `Number`, Deadline)
    VALUES (NEW.StudentID, NEW.`Year`, NEW.CompanyID, NEW.BranchName, 1, DATE_ADD(StartDate, INTERVAL 14 DAY)),
		   (NEW.StudentID, NEW.`Year`, NEW.CompanyID, NEW.BranchName, 2, DATE_ADD(StartDate, INTERVAL 28 DAY)),
           (NEW.StudentID, NEW.`Year`, NEW.CompanyID, NEW.BranchName, 3, DATE_ADD(StartDate, INTERVAL 42 DAY)),
           (NEW.StudentID, NEW.`Year`, NEW.CompanyID, NEW.BranchName, 4, DATE_ADD(StartDate, INTERVAL 56 DAY));
END$$
DELIMITER ;