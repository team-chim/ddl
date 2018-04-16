SELECT stdn.StudentID, s.`Year`, s.Semester, p.PaymentStatus
FROM (semester s, student stdn) NATURAL LEFT JOIN payment p
WHERE p.PaymentStatus = 'Invalid' OR p.PaymentStatus IS NULL