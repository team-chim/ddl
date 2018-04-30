USE rexchula;

DROP PROCEDURE IF EXISTS insert_payment;

DELIMITER $$

CREATE PROCEDURE insert_payment(IN StudentID CHAR(10), IN `Year` INT UNSIGNED, IN Semester INT UNSIGNED, IN PaymentID INT UNSIGNED, IN PaymentStatus ENUM('Pending', 'Success', 'Invalid'), IN PaymentDate DATE)
BEGIN
	INSERT INTO payment(StudentID, `Year`, Semester, PaymentID, PaymentStatus, PaymentDate) VALUES(StudentID, `Year`, Semester, PaymentID, PaymentStatus, PaymentDate);
END$$
DELIMITER ;