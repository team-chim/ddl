SELECT s.SubjectID, s.FinalStartDatetime, s.FinalEndDatetime
FROM `subject` s, studies stdy
WHERE stdy.StudentID = '5830287921' AND
	  s.SubjectID = stdy.SubjectID