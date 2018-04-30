USE rexchula;

DROP TABLE IF EXISTS payment;

CREATE TABLE payment
(
	StudentID CHAR(10),
    `Year` INT UNSIGNED,
    Semester INT UNSIGNED,
    PaymentID VARCHAR(128) NOT NULL,
    PaymentStatus ENUM('Pending', 'Success', 'Invalid') NOT NULL,
    PaymentDate Date,
    CONSTRAINT pk_payment PRIMARY KEY(StudentID, `Year`, Semester),
    CONSTRAINT fk1_payment FOREIGN KEY(StudentID) REFERENCES student(StudentID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk2_payment FOREIGN KEY(`Year`, Semester) REFERENCES semester(`Year`, Semester) ON DELETE RESTRICT ON UPDATE RESTRICT
);