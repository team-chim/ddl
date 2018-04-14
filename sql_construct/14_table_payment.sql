USE rexchula;

DROP TABLE IF EXISTS payment;

CREATE TABLE payment
(
	StudentID CHAR(10),
    `Year` INT UNSIGNED,
    Semester INT UNSIGNED,
    PaymentID INT UNSIGNED,
    PaymentStatus ENUM('Pending', 'Success', 'Invalid') NOT NULL,
    PaymentDate Date,
    CONSTRAINT pk_payment PRIMARY KEY(StudentID, `Year`, Semester, PaymentID),
    CONSTRAINT fk1_payment FOREIGN KEY(StudentID) REFERENCES student(StudentID) ON DELETE CASCADE,
    CONSTRAINT fk2_payment FOREIGN KEY(`Year`, Semester) REFERENCES semester(`Year`, Semester) ON DELETE RESTRICT
);