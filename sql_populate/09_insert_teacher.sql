USE rexchula;

/* Imaginary
INSERT INTO teacher (`FnameEN`, `MnameEN`, `LnameEN`, `FnameTH`, `MnameTH`, `LnameTH`, `TeacherEmail`, `TelNo`, `WorksForFaculty`, `WorksForDepartment`, `Since`)
VALUES ('่Jittarom', NULL, 'Theerabut', 'จิตตารมย์', NULL, 'ธีระบุตร', 'jittarom.t@chula.ac.th', '081-689-7700', 21, 1, '2013-10-20'),
       ('Kittikorn', NULL, 'Kneawpahn', 'กิติกร', NULL, 'เหนี่ยวพันธ์', 'kittikorn.k@chula.ac.th', '083-216-9607', 21, 2, '2005-08-12'),
       ('Supraphit', NULL, 'Pomchanaud', 'ศุประพิศ', NULL, 'ป้อมจันอัด', 'supraphit.p@chula.ac.th', '087-968-0585', 21, 2, '2008-08-17');
*/

INSERT INTO teacher (`TeacherID`, `FnameEN`, `MnameEN`, `LnameEN`, `FnameTH`, `MnameTH`, `LnameTH`, `TeacherEmail`, `TelNo`, `WorksForFaculty`, `WorksForDepartment`, `Since`)
VALUES ('0123456789', 'Prabhas', NULL,'Chongstitvatana', 'ประภาส', NULL, 'จงสถิตย์วัฒนา', 'Prabhas.C@chula.ac.th','0000000000',21,10,'2001-05-01'),
       ('2345678901', 'Suchitra',NULL,'Chongstitvatana', 'สุจิตรา',NULL,'จงสถิตย์วัฒนา',NULL,'2222222222',22,1,'2001-05-01'),
       ('3456789012', 'Kanit', 'Mitinunwong','Sirichan', 'กนิษฐ์', 'มิตินันท์วงศ์','ศิริจันทร์','Kanit.M@Chula.ac.th','3333333333',22,2,'2001-05-01'),
       ('5678901234', 'Natawut', NULL, 'Nupairoj', 'ณัฐวุฒิ', NULL, 'หนูไพโรจน์', 'natawut.n@chula.ac.th', '5555555555', 21, 10, '2000-05-01'), 
       ('7890123456', 'Natthaporn', NULL, 'Panpothong', 'ณัฐพร', NULL, 'พานโพธิ์ทอง', 'ntp1142@hotmail.com', '022184687', 22, 1, '2000-05-01'),
       ('8901234567', 'Daoruang', NULL, 'Wittayarat', 'ดาวเรือง', NULL, 'วิทยารัฐ', NULL, NULL, 22, 1, '2004-05-01'),
       ('9012345678', 'Moodjalin', NULL, 'Sudcharoen', 'มุจลินท์', NULL, 'สุดเจิรญ', NULL, NULL, 22, 1, '2014-05-01'),
       
    -- Real Chula Staff ID
       ('0010003176', 'Atiwong', NULL, 'Suchato', 'อติวงศ์ ', NULL,'สุชาโต','atiwong@cp.eng.chula.ac.th','1111111111',21,10,'2013-05-01'),
       ('0010013658', 'Nattee',  NULL, 'Niparnan', 'นัทที', NULL, 'นิภานันท์', 'nattee.n@chula.ac.th', '081-231-2113', 21, 10, '2004-05-01'),
       ('0010013731', 'Kultida', NULL, 'Rojviboonchai', 'กุลธิดา', NULL, 'โรจน์วิบูลย์ชัย', 'kultida@cp.eng.chula.ac.th', '081-231-2113', 21, 10, '2005-05-01'),
       ('0000039372', 'Taratip', NULL, 'Suwannasart', 'ธาราทิพย์', NULL, 'สุวรรณศาสตร์', 'Taratip.S@chula.ac.th', '081-231-2113', 21, 10, '2000-05-01'),
       ('0000040461', 'Twittie', NULL, 'Senivongse', 'ทวิตีย์', NULL, 'เสนีวงศ์ ณ อยุธยา', 'twittie.s@chula.ac.th', '4444444444', 21, 10, '2010-05-01'),
       ('0000034157', 'Attawith', NULL, 'Sudsang', 'อรรถวิทย์', NULL, 'สุดแสง', 'attawith@cp.eng.chula.ac.th', '081-231-2113', 21, 10, '2000-05-01'), 
       ('0000036116', 'Proadpran', NULL, 'Punyabukkana', 'โปรนปราน', NULL, 'บุณยพุกกณะ', 'Proadpran.P@Chula.ac.th', '081-231-2113', 21, 10, '2000-05-01'),
       ('0010002101', 'Vishnu', NULL, 'Kotrajaras', 'วิษณุ', NULL, 'โคตรจรัส', 'vishnu@cp.eng.chula.ac.th', '081-231-2113', 21, 10, '2000-01-01');