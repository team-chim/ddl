USE rexchula;

DROP FUNCTION IF EXISTS grade_to_double;

DELIMITER $$

CREATE FUNCTION grade_to_double(Grade ENUM('A', 'B+', 'B', 'C+', 'C', 'D+', 'D', 'F')) RETURNS DOUBLE(3, 2) DETERMINISTIC
BEGIN
	DECLARE DGrade DOUBLE(3, 2);
	IF Grade = 'A' THEN
		SET DGrade = 4.00;
	ELSEIF Grade = 'B+' THEN
		SET DGrade = 3.50;
	ELSEIF Grade = 'B' THEN
		SET DGrade = 3.00;
	ELSEIF Grade = 'C+' THEN
		SET DGrade = 2.50;
	ELSEIF Grade = 'C' THEN
		SET DGrade = 2.00;
	ELSEIF Grade = 'D+' THEN
		SET DGrade = 1.50;
	ELSEIF Grade = 'D' THEN
		SET DGrade = 1.00;
	ELSEIF Grade = 'F' THEN
		SET DGrade = 0.00;
	END IF;
    
    RETURN DGrade;
END$$
DELIMITER ;