USE rexchula;

INSERT INTO payment (`StudentID`, `Year`, `Semester`, `PaymentID`, `PaymentStatus`, `PaymentDate`)
VALUES ('5730123421', 2016, 1, 'CB-8122231', 'Success','2016-07-27'),
       ('5730123421', 2016, 2, 'CB-8190147', 'Success','2016-12-25'),
       ('5730123421', 2017, 1, 'CB-8220474', 'Success','2017-07-21'),
       ('5730123421', 2017, 2, 'KB-130222241', 'Success','2017-12-20'),

       ('5731150221', 2016, 1, 'KB-110381494', 'Success','2016-07-28'),
       /* Sirisopha intentionally missing 2016/2 */  
       ('5731150221', 2017, 1, 'KB-120484323', 'Success','2017-08-01'),
       -- ('5731150221', 2017, 2, '555+', 'Invalid','2018-01-01'),
       ('5731150221', 2017, 2, 'KB-125148200', 'Success','2018-01-04'),
       
       -- ('5630297121', 2016, 1, 'http://surviv.io/#k5ey', 'Invalid', '2016-07-20'),
       -- ('5630297121', 2016, 1, 'http://surviv.io/#83n1', 'Invalid', '2016-07-20'),
       ('5630297121', 2016, 1, 'http://surviv.io/#771u', 'Invalid', '2016-07-20');