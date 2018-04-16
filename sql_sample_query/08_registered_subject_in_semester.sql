SELECT stdy.SubjectID, s.Credit
FROM `subject` s, studies stdy
WHERE stdy.StudentID = '5830287921' AND
	  stdy.`Year` = 2017 AND
      stdy.Semester = 1 AND
      s.SubjectID = stdy.SubjectID