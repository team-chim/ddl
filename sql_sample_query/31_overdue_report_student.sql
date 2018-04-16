SELECT s.StudentID, CONCAT(CONCAT(s.FnameEN, ' '), s.LnameEN) AS StudentName
FROM eng_official_internship e NATURAL LEFT JOIN student s
WHERE e.HasOverdueReport