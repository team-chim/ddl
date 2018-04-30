USE rexchula;

DROP PROCEDURE IF EXISTS insert_subject_requires;

DELIMITER $$

CREATE PROCEDURE insert_subject_requires(IN SubjectID CHAR(7), IN ReqSubjectID CHAR(7))
BEGIN
	INSERT INTO subject_requires(SubjectID, ReqSubjectID) VALUES(SubjectID, ReqSubjectID);
END$$
DELIMITER ;