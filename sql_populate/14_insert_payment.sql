USE rexchula;

INSERT INTO payment (`StudentID`, `Year`, `Semester`, `PaymentStatus`, `PaymentDate`)
VALUES ('5730123421', 2016, 1, 'Success','2016-07-27'),
       ('5730123421', 2016, 2, 'Success','2016-12-25'),
       ('5730123421', 2017, 1, 'Success','2017-07-21'),
       ('5730123421', 2017, 2, 'Success','2017-12-20'),

       ('5731150221', 2016, 1, 'Success','2016-07-28'),
       /* Sirisopha intentionally missing 2016/2 */  
       ('5731150221', 2017, 1, 'Success','2017-08-01'),
       ('5731150221', 2017, 2, 'Success','2018-01-01');
