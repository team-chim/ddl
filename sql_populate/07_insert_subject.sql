USE rexchula;

INSERT INTO `subject` (`SubjectID`, `NameAbv`, `NameEN`, `NameTH`, `Credit`)
VALUES ('2100111', 'EXPL ENG WORLD', 'EXPLORING ENGINEERING WORLD', 'ท่องโลกวิศวกรรม', 3),

       ('2101202', 'MECH MAT I', 'MECHANICS OF MATERIALS I', 'กลศาสตร์วัสดุ 1', 3),
       ('2101252', 'STAT CE', 'STATISTICS FOR CIVIL ENGINEERING', 'สถิติสำหรับงานวิศวกรรมโยธา', 3),
       ('2101253', 'APP MATH CE', 'APPLIED MATHEMATICS FOR CIVIL ENGINEERS', 'คณิตศาสตร์ประยุกต์สำหรับวิศวกรโยธา', 3),
    
       ('2102201', 'ELECT ENG MATH I', 'ELECTRICAL ENGINEERING MATHEMATICS I', 'คณิตศาสตร์วิศวกรรมไฟฟ้า 1', 3),
       ('2102202', 'ELECT ENG MATH II', 'ELECTRICAL ENGINEERING MATHEMATICS II', 'คณิตศาสตร์วิศวกรรมไฟฟ้า 2', 3),
       ('2102203', 'PROB STAT ELEC ENG', 'PROBABILITY AND STATISTICS FOR ELECTRICAL ENGINEERING', 'ความน่าจะเป็นและสถิติสำหรับวิศวกรรมไฟฟ้า', 3),
       ('2102213', 'CIR THEORY I/LAB', 'CIRCUIT THEORY I AND LABORATORY', 'ทฤษฎีวงจรไฟฟ้า 1 และปฏิบัติการ', 4),
       ('2102214', 'CIR THEORY II/LAB', 'CIRCUIT THEORY II AND LABORATORY', 'ทฤษฎีวงจรไฟฟ้า 2 และปฏิบัติการ', 3),
       
       ('2103213', 'ENG MECHANICS I', 'ENGINEERING MECHANICS I', 'กลศาสตร์วิศวกรรม 1', 3),

       ('2110101', 'COMP PROG', 'COMPUTER PROGRAMMING', 'การทำโปรแกรมคอมพิวเตอร์', 3),
       ('2110191', 'INNOV THINK', 'INNOVATIVE THINKING', 'การคิดเชิงนวัตกรรม', 3),

       ('2110200', 'DISCRETE STRUC', 'DISCRETE STRUCTURES', 'โครงสร้างดิสครีต', 3),
       ('2110201', 'COMP ENG MATH', 'COMPUTER ENGINEERING MATHEMATICS', 'คณิตศาสตร์วิศวกรรมคอมพิวเตอร์', 3),
       ('2110202', 'DISCRETE STRUC COM', 'DISCRETE STRUCTURES AND COMPUTABILITY', 'โครงสร้างดิสครีตและภาวะคำนวณได้', 4),
       ('2110211', 'INTRO DATA STRUCT', 'INTRODUCTION TO DATA STRUCTURES', 'ความรู้เบื้องต้นเกี่ยวกับโครงสร้างข้อมูล', 3),
       ('2110215', 'PROG METH I', 'PROGRAMMING METHODOLOGY I', 'วิธีวิทยาการทำโปรแกรม 1', 3),
       ('2110251', 'DIG COMP LOGIC', 'DIGITAL COMPUTER LOGIC', 'ตรรกศาสตร์ของดิจิตอลคอมพิวเตอร์', 3),
       ('2110253', 'COMP ELEC INTF', 'COMPUTER ELECTRONICS AND INTERFACING', 'อิเล็กทรอนิกส์คอมพิวเตอร์และการเชื่อมต่อ', 3),
       ('2110254', 'DIG DESIGN VER', 'DIGITAL DESIGN AND VERIFICATION', 'การออกแบบและการทวนสอบดิจิตอล', 3),
       ('2110263', 'DIG LOGIC LAB I', 'DIGITAL COMPUTER LOGIC LABORATORY I', 'การปฏิบัติการทางตรรกศาสตร์ของดิจิตอลคอมพิวเตอร์ 1', 1),
       ('2110265', 'DIG DESIGN LAB I', 'DIGITAL DESIGN AND VERIFICATION LABORATORY I', 'ปฏิบัติการออกแบบและการทวนสอบดิจิตอล 1', 1),
       ('2110292', 'INDIV COMP II', 'INDIVIDUAL STUDY IN COMPUTER ENGINEERING II', 'เอกัตศึกษาทางวิศวกรรมคอมพิวเตอร์ 2', 1),
       
       ('2110315', 'PARALLEL DIST SYS', 'PARALLEL AND DISTRIBUTED SYSTEMS', 'ระบบเชิงขนานและระบบกระจาย', 3),
       ('2110316', 'PROG LANG PRIN', 'PROGRAMMING LANGUAGES PRINCIPLES', 'หลักการของภาษาการทำโปรแกรม', 3),
       ('2110318', 'DIS SYS ESSEN', 'DISTRIBUTED SYSTEMS ESSENTIALS', 'หลักการของระบบกระจาย', 3),
       ('2110327', 'ALGORITHM DESIGN', 'ALGORITHM DESIGN', 'การออกแบบอัลกอริทึม', 3),
       ('2110332', 'SYS ANAL DESIGN', 'SYSTEMS ANALYSIS AND DESIGN', 'การวิเคราะห์และการออกแบบระบบ', 3),
       ('2110352', 'COMP SYS ARCH', 'COMPUTER SYSTEM ARCHITECTURES', 'สถาปัตยกรรมระบบคอมพิวเตอร์', 3),
       ('2110471', 'COMP NETWORK I', 'COMPUTER NETWORKS I', 'ข่ายงานคอมพิวเตอร์ 1', 3),

       ('2110413', 'COMP SECURITY', 'COMPUTER SECURITY', 'ความมั่นคงของคอมพิวเตอร์', 3),
       ('2110422', 'DB MGT SYS DESIGN', 'DATABASE MANAGEMENT SYSTEMS DESIGN', 'การออกแบบระบบการจัดการฐานข้อมูล', 3),
       ('2110430', 'TIME SERIES MINING', 'TIME SERIES MINING AND KNOWLEDGE DISCOVERY', 'การทำเหมืองข้อมูลอนุกรมเวลาและการค้นหาความรู้', 3),
       ('2110432', 'AUTO SPEECH RECOG', 'AUTOMATIC SPEECH RECOGNITION', 'การรู้จำเสียงพูดอัตโนมัติ', 3),
       ('2110433', 'COMPUTER VISION', 'COMPUTER VISION', 'คอมพิวเตอร์วิชัน', 3),

       ('2110511', 'GAME PROGRAMMING', 'GAME PROGRAMMING', 'การเขียนโปรแกรมเกม', 3),
       ('2110512', 'COMPUTER ANIMATION', 'COMPUTER ANIMATION', 'คอมพิวเตอร์แอนิเมชัน', 3),
       ('2110513', 'ASST TECH', 'ASSISTIVE TECHNOLOGY', 'เทคโนโลยีช่วยเหลือ', 3),
       
       ('2110634', 'SOFTWARE DES&DEV', 'SOFTWARE DESIGN AND DEVELOPMENT', NULL, 3),
       ('2110637', 'LARGE SCL INF SYS', 'LARGE-SCALE INFORMATION SYSTEMS','ระบบสารสนเทศขนาดใหญ่', 3),
       ('2110675', 'BIOMED INFO COMM', 'BIOMEDICAL INFORMATION AND COMMUNICATION SYSTEMS', 'ระบบสารสนเทศและการสื่อสารทางชีวเวช', 3),

       ('2110721', 'SOFTWARE METRICS', 'SOFTWARE METRICS', 'การวัดซอฟต์แวร์', 3),
       ('2110732', 'PARALLEL COMP', 'PARALLEL COMPUTING', 'การคำนวณเชิงขนาน', 3),
       ('2110743', 'MACHINE LEARNING', 'MACHINE LEARNING', 'การเรียนรู้ของเครื่อง', 3),
       ('2110746', 'BIG DATA ANAL', 'BIG DATA ANALYTICS', 'การวิเคราะห์ข้อมูลใหญ่', 3),
       
       ('2110811', 'THESIS', 'THESIS', 'วิทยานิพนธ์', 12),
       ('2110814', 'THESIS', 'THESIS', 'วิทยานิพนธ์', 24),
       ('2110816', 'THESIS', 'THESIS', 'วิทยานิพนธ์', 36),

       ('2110828', 'DISSERTATION', 'DISSERTATION', 'วิทยานิพนธ์', 48),

       ('2204180', 'CIVILIZATION', 'CIVILIZATION', 'อารยธรรม', 3),
       ('2204181', 'EAST CIV', 'EASTERN CIVILIZATION', 'อารยธรรมตะวันออก', 3),
       ('2204182', 'WEST CIV', 'WESTERN CIVILIZATION', 'อารยธรรมตะวันตก', 3),
       ('2204202', 'MOD TH HIST', 'MODERN THAI HISTORY', 'ประวัติศาสตร์ไทยสมัยใหม่', 3),

       ('2301101', 'CALCULUS I', 'CALCULUS I', NULL, 4), 
       ('2301102', 'CALCULUS II', 'CALCULUS II', 'แคลคูลัส 2', 4),
       ('2301103', 'CALCULUS I', 'CALCULUS I', 'แคลคูลัส 1', 3),
       ('2301107', 'CALCULUS I', 'CALCULUS I', 'แคลคูลัส 1', 3),
       ('2301207', 'CALCULUS III', 'CALCULUS III', 'แคลคูลัส 3', 3),

       ('2302112', 'GEN CHEM II', 'GENERAL CHEMISTRY II', 'เคมีทั่วไป 2', 3),
       ('2302113', 'GEN CHEM LAB', 'GENERAL CHEMISTRY LABORATORY', NULL, 1),
       ('2302127', 'GEN CHEM', 'GENERAL CHEMISTRY', 'วิชาเคมีทั่วไป', 3),

       ('2601111', 'BUS ACCTG', 'BUSINESS ACCOUNTING', 'การบัญชีธุรกิจ', 3),
       ('2601112', 'INTRO FIN ACCTG', 'INTRODUCTION TO FINANCIAL ACCOUNTING', 'การบัญชีการเงินเบื้องต้น', 3),
       ('2601113', 'PRIN ACCTG', 'PRINCIPLES OF ACCOUNTING', 'การบัญชีขั้นต้น', 3),
       ('2601114', 'COST ACCTG', 'COST ACCOUNTING', 'การบัญชีต้นทุน', 3),
       ('2601115', 'FIN ACCTG', 'FINANCIAL ACCOUNTING', 'การบัญชีการเงิน', 3),
       
       -- ARCH
	   ('2502297', 'TECHNICAL DRAWING', 'TECHNICAL DRAWING', 'การเขียนแบบทางเทคนิค', 3),
	   ('2501122', 'PRIN ARCH DSGN', 'PRINCIPLES OF ARCHITECTURAL DESIGN', 'หลักการออกแบบงานสถาปัตยกรรม', 3),
       ('2504634', 'LA MGT', 'LANDSCAPE ARCHITECTURAL MANAGEMENT', 'การจัดการภูมิสถาปัตยกรรม', 3),
       
       -- EDU
       ('2716603', 'CURRICULUM DEV', 'CURRICULUM DEVELOPMENT', 'การพัฒนาหลักสูตร', 3),
       ('2716600', 'PEDAGOGICAL SCI', 'PEDAGOGICAL SCIENCES', 'ศาสตร์วิชาครู', 3),
        
       -- COMMARTS
       ('2803206', 'PRIN AD', 'PRINCIPLES OF ADVERTISING', 'หลักการโฆษณา', 3),
       ('2804330', 'INTRO PERFORM ARTS', 'INTRODUCTION TO PERFORMING ARTS', 'สื่อสารการแสดงเบื้องต้น', 2),
         
       -- ECON
       ('2945111', 'MATH ECONOMIST I', 'MATHEMATICS FOR ECONOMISTS I', 'คณิตศาสตร์สำหรับนักเศรษฐศาสตร์ 1', 4),
       ('2940104', 'INTRO ECON', 'INTRODUCTION TO ECONOMICS', 'เศรษฐศาสตร์เบื้องต้น', 3),
       ('2945113', 'STAT ECONOMIST', 'STATISTICS FOR ECONOMISTS', 'สถิติสำหรับนักเศรษฐศาสตร์', 4);
