USE rexchula;

DROP TRIGGER IF EXISTS insert_eng_official_internship;

DELIMITER $$

CREATE TRIGGER insert_eng_official_internship
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