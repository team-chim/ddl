SELECT IF(stdn.StudentID IN(SELECT StudentID
							FROM undergrad_student), fee.UndergradFee, fee.GradFee) AS Fee
FROM ((student stdn LEFT JOIN nationality n ON stdn.Nation = n.NationName) LEFT JOIN faculty f ON stdn.MajorFaculty = f.FacultyID) LEFT JOIN has_fee fee ON (f.BelongsTo = fee.FacultyGroupID AND n.IsThai = fee.IsThai AND stdn.EnterYear = fee.EntryYear)
WHERE stdn.StudentID = '5730123421'