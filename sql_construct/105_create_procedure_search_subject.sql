USE rexchula;

DROP PROCEDURE IF EXISTS search_subject;

DELIMITER $$
CREATE PROCEDURE search_subject(IN SearchID VARCHAR(128), IN SearchName VARCHAR(128), IN GenedType INT UNSIGNED, IN `Year` INT UNSIGNED, IN Semester INT UNSIGNED)
BEGIN
	SELECT s.SubjectID, s.NameAbv
	FROM `subject` s
	WHERE (s.SubjectID LIKE CONCAT(SearchID, '%') OR SearchID IS NULL) AND
		  (LOCATE(SearchName, s.NameAbv) > 0 OR SearchName IS NULL) AND
          (SELECT COUNT(sec.SectionNo)
		   FROM `subject` s2 NATURAL LEFT JOIN section sec
		   WHERE s.SubjectID = s2.SubjectID AND
				 (sec.GenedType = GenedType OR GenedType IS NULL) AND
				 (sec.`Year` = `Year` OR `Year` IS NULL) AND
                 (sec.Semester = Semester OR Semester IS NULL)) > 0;
END$$
DELIMITER ;