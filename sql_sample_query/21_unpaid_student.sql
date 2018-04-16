SELECT rec.StudentID, rec.`Year`, rec.Semester, p.PaymentStatus
FROM (
	SELECT stdn.StudentID AS StudentID, s.Semester AS Semester, s.`Year` AS `Year`
	FROM (student AS stdn, semester AS s)
	WHERE EXISTS(
		SELECT NULL
		FROM student 
		NATURAL JOIN studies
		NATURAL JOIN semester
		WHERE stdn.StudentID = student.StudentID 
		AND s.Semester = semester.Semester
	)
) AS rec
NATURAL LEFT JOIN payment p
WHERE p.PaymentStatus = 'Invalid' OR p.PaymentStatus IS NULL;