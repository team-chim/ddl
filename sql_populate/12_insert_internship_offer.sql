USE rexchula;

INSERT INTO internship_offer (`CompanyID`, `Year`, `PositionNameEN`, `PositionNameTH`, `PositionDescriptionEN`, `PositionDescriptionTH`, `NumberOfPosition`, `OtherRequirements`, `StatedMinimumGrade`, `StatedSalary`, `OtherBenefits`, `ExpiryDate`)
VALUES (1, 2016, 'Backend Developer', NULL, 'Implement backend of our application', NULL, 5, 'Javascript, Docker, NodeJS', 2.75, 500, NULL, '2017-03-31'),
       (1, 2017, 'Backend Developer', NULL, 'Implement backend of our application', NULL, 5, 'Javascript, Docker, NodeJS', 2.75, 500, NULL, '2018-03-31'),
       (1, 2017, 'Frontend Developer', NULL, 'Implement company website', NULL, 5, 'Javascript, React,', 2.75, 500, NULL, '2018-03-31'),
       (3, 2017, 'Software Engineering Internship', NULL, 'Software Engineering Interns at Google are researchers and developers who yearn to create and implement complex computer science solutions.', NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-10');
