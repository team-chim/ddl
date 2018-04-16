SELECT s.`Year`, s.Semester, p.PaymentStatus
FROM (semester s, student stdn) NATURAL LEFT JOIN payment p
WHERE stdn.StudentID = '5830287921'