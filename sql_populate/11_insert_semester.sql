USE rexchula;

INSERT INTO semester (`Year`, `Semester`, `SemesterStartDate`, `SemesterEndDate`, 
                      `RegisterStartDate`, `RegisterEndDate`, `AddingStartDate`, `AddingEndDate`, 
                      `DroppingStartDate`, `DroppingEndDate`, `WithdrawStartDate`, `WithdrawEndDate`)
VALUES (2016, 1, '2016-08-08', '2016-12-14', 
                 '2016-06-22', '2016-07-01', '2016-08-08', '2016-08-19',
                 '2016-08-08', '2016-09-16', '2016-09-19', '2016-10-28'),
       (2016, 2, '2017-01-04', '2017-05-24', 
                 '2016-11-16', '2016-11-25', '2017-01-04', '2017-01-13', 
                 '2017-01-04', '2017-02-10', '2017-02-13', '2017-03-24'),
       (2016, 3, '2017-06-05', '2017-07-22', 
                 '2017-05-09', '2017-05-11', '2017-06-05', '2017-06-09', 
                 '2017-06-05', '2017-06-16', '2017-06-19', '2017-06-30'),
       (2017, 1, '2017-08-15', '2017-12-19', 
                 '2017-08-02', '2017-08-14', '2017-08-15', '2017-08-26', 
                 '2017-08-15', '2017-09-01', '2017-09-02', '2017-09-15'),
       (2017, 2, '2018-01-08', '2018-05-22', 
                 '2017-12-19', '2017-12-25', '2018-01-08', '2018-01-19', 
                 '2018-01-08', '2018-02-16', '2018-02-19', '2018-03-30');
