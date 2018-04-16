SELECT stdn.StudentID, CONCAT(CONCAT(stdn.FnameEN, ' '), stdn.LnameEN) AS StudentName
FROM (studies stdy NATURAL LEFT JOIN student stdn) NATURAL LEFT JOIN section sec
WHERE sec.SubjectID = '2110201' AND
	  sec.`Year` = 2017 AND
      sec.Semester = 1 AND
      sec.SectionNo = 1