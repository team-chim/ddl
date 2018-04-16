SELECT s.StudentID, CONCAT(CONCAT(s.FnameEN, ' '), s.LnameEN) AS StudentName
FROM student s LEFT JOIN teacher t ON s.Adviser = t.TeacherID
WHERE t.TeacherID = '5839999921'