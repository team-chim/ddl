USE rexchula;

DROP PROCEDURE IF EXISTS insert_has_fee;

DELIMITER $$

CREATE PROCEDURE insert_has_fee(IN FacultyGroupID INT UNSIGNED, IN IsThai BOOL, IN EntryYear INT UNSIGNED, IN GradFee INT UNSIGNED, IN UndergradFee INT UNSIGNED)
BEGIN
	INSERT INTO has_fee(FacultyGroupID, IsThai, EntryYear, GradFee, UndergradFee) VALUES(FacultyGroupID, IsThai, EntryYear, GradFee, UndergradFee);
END$$
DELIMITER ;