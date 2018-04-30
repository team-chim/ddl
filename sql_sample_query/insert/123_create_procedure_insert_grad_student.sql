USE rexchula;

DROP PROCEDURE IF EXISTS insert_grad_student;

DELIMITER $$

CREATE PROCEDURE insert_grad_student(IN StudentID CHAR(10))
BEGIN
	INSERT INTO grad_student(StudentID) VALUES(StudentID);
END$$
DELIMITER ;