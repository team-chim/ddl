SELECT stdy.SubjectID, s.Credit
FROM `subject` s, studies stdy
WHERE stdy.StudentID = '5730123421' AND
      s.SubjectID = stdy.SubjectID