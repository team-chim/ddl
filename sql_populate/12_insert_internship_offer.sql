USE rexchula;

INSERT INTO internship_offer (`CompanyID`, `Year`, `PositionNameEN`, `PositionNameTH`, `PositionDescriptionEN`, `PositionDescriptionTH`, `NumberOfPosition`, `OtherRequirements`, `StatedMinimumGrade`, `StatedSalary`, `OtherBenefits`, `ExpiryDate`)
VALUES (1, 2016, 'Backend Developer', NULL, 'Implement backend of our application', NULL, 5, 'Javascript, Docker, NodeJS', 2.75, 500, NULL, '2017-03-31'),
       (1, 2017, 'Backend Developer', NULL, 'Implement backend of our application', NULL, 5, 'Javascript, Docker, NodeJS', 2.75, 500, NULL, '2018-03-31'),
       (1, 2017, 'Frontend Developer', NULL, 'Implement company website', NULL, 5, 'Javascript, React,', 2.75, 500, NULL, '2018-03-31'),
       (3, 2017, 'Software Engineering Internship', NULL, 'Software Engineering Interns at Google are researchers and developers who yearn to create and implement complex computer science solutions.', NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-10'),
       (4, 2016, 'Backend Developer', NULL, 'Troubleshoot and improve current back-end applications and processes', NULL, 5, 'Javascript, Docker, NodeJS', 2.75, 750, NULL, '2017-03-31'),
       (4, 2017, 'Backend Developer', NULL, 'Troubleshoot and improve current back-end applications and processes', NULL, 5, 'Javascript, Docker, NodeJS', 2.75, 750, NULL, '2018-03-31'),
       (4, 2017, 'Data Analyst', NULL, 'Create insight of our clients and deliver new features.', NULL, 10, 'Python, Spark, Keras', 2.75, 750, NULL, '2018-03-31'),
       (4, 2017, 'Frontend Developer', NULL, 'Improve company website.', NULL, 3, 'Javascript, React,', 2.75, 750, NULL, '2018-03-31'),
       (5, 2017, 'Software Engineering Internship', NULL, 'Software Engineering Interns.', NULL, 2, NULL, NULL, 400, NULL, '2017-12-20'),
       (5, 2017, 'Software Developer', NULL, 'Impliment new software for company.', NULL, 2, NULL, NULL, 400, NULL, '2017-12-20'),
       (6, 2017, 'Software Developer', NULL, 'Create new software to support customers.', NULL, 3, NULL, NULL, 300, NULL, '2017-12-15'),
       (1, 2018, 'Backend Developer', NULL, 'Implement backend of our application', NULL, 2, 'Javascript, Docker, NodeJS', 2.75, 500, NULL, '2017-12-31'),
       (2, 2018, 'Backend Developer', NULL, 'Improve our application', NULL, 3, 'Javascript, Docker, NodeJS', 2.75, 500, NULL, '2018-01-15'),
       (4, 2018, 'Backend Developer', NULL, 'Troubleshoot and improve current back-end applications and processes', NULL, 3, 'Javascript, Docker, NodeJS', 2.75, 750, NULL, '2018-02-27'),
       (4, 2018, 'Data Analyst', NULL, 'Create insight of our clients and deliver new features.', NULL, 3, 'Python, Spark, Keras', 2.75, 750, NULL, '2018-02-27'),
       (4, 2018, 'Frontend Developer', NULL, 'Implement company website', NULL, 3, 'Javascript, React,', 2.75, 750, NULL, '2018-02-27'),
       (5, 2018, 'Software Engineering Internship', NULL, 'Software Engineering Interns.', NULL, 2, NULL, NULL, 400, NULL, '2017-12-01');
