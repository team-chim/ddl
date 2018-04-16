SELECT s.SubjectID, s.SectionNo, sec.Classroom, sd.Day, sd.StartTime, sd.EndTime
FROM section_datetime sd NATURAL LEFT JOIN section sec, studies s
WHERE s.StudentID = '5830287921' AND
	  sd.SubjectID = s.SubjectID AND
      sd.`Year` = s.`Year` AND
      sd.Semester = s.Semester AND
      sd.SectionNo = s.SectionNo