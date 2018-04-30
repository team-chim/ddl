USE rexchula;

DROP PROCEDURE IF EXISTS insert_semester;

DELIMITER $$

CREATE PROCEDURE insert_semester(IN `Year` INT UNSIGNED, IN Semester INT UNSIGNED, IN SemesterStartDate DATE, IN SemesterEndDate DATE,  IN RegisterStartDate DATE, IN RegisterEndDate DATE, IN AddingStartDate DATE, IN AddingEndDate DATE, IN DroppingStartDate DATE, IN DroppingEndDate DATE, IN WithdrawStartDate DATE, IN WithdrawEndDate DATE)
BEGIN
	INSERT INTO semester(`Year`, Semester, SemesterStartDate, SemesterEndDate, RegisterStartDate, RegisterEndDate, AddingStartDate, AddingEndDate, DroppingStartDate, DroppingEndDate, WithdrawStartDate, WithdrawEndDate) VALUES(`Year`, Semester, SemesterStartDate, SemesterEndDate, RegisterStartDate, RegisterEndDate, AddingStartDate, AddingEndDate, DroppingStartDate, DroppingEndDate, WithdrawStartDate, WithdrawEndDate);
END$$
DELIMITER ;