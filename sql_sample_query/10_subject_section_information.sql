SELECT sec.SectionNo, sec.Classroom, sec.GenedType, sec.MaxStudent, sec.CurrentStudent, CONCAT(CONCAT(t.FnameEN, ' '), t.LnameEN) AS TeacherName
FROM (`subject` s, section sec) LEFT JOIN teacher t ON sec.TeachedBy = t.TeacherID
WHERE s.SubjectID = '2110101' AND
	  sec.SubjectID = s.SubjectID AND
      sec.`Year` = 2016 AND
      sec.Semester = 1