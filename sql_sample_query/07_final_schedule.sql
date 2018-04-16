SELECT s.SubjectID, s.FinalDate
FROM `subject` s, studies stdy
WHERE stdy.StudentID = '5830287921' AND
	  s.SubjectID = stdy.SubjectID