INSERT INTO Person 
VALUES(10101,'Male','M','Marie','Forest',70059,'3982 Louis Lane','Harvey');
INSERT INTO Person
VALUES(10132,'Male','L','Lee','Kevin',70001,'302 Atherton Drive','Metairie');
INSERT INTO Person
VALUES(10123,'Female','S','Thompson','Jessica',70718,'293 Knot Ave','Baton Rouge');
INSERT INTO Person
VALUES(12390,'Male','E','Minor','Bob',70115,'3021 Basin Street','New Orleans');
INSERT INTO Person
VALUES(10129,'Female','M','Lewis','Daniella',70501,'129 Milton Blvd','Youngsville');

INSERT INTO Phone
VALUES(504,3920293,10129);
INSERT INTO Phone
VALUES(493,3902293,10132);
INSERT INTO Phone
VALUES(203,2294052,10132);
INSERT INTO Phone
VALUES(393,2934052,10101);
INSERT INTO Phone
VALUES(339,2349952,10123);
INSERT INTO Phone
VALUES(293,9290152,12390);


INSERT INTO Email
VALUES('Kgoat1999@gmail.com',10132);
INSERT INTO Email
VALUES('ForestMarie@hotmail.com',10101);
INSERT INTO Email
VALUES('youngin@aol.com',12390);
INSERT INTO Email
VALUES('Goldstarsrock@yahoo.com',12390);

INSERT INTO GICS
VALUES(451020,4510,'IT Services',2,'Install and configure software and computer 
systems. Troubleshoot and resolve issues with software or hardware. 
Walk colleagues or clients through steps to help them resolve their technical 
problems. Maintain procedures and reports that provide technical support to the 
entire organization.');
INSERT INTO GICS
VALUES(451030,4510,'Software',3,'A typical Software Engineer job 
description includes: Improving system quality by identifying issues and common 
patterns, and developing standard operating procedures. Enhancing applications 
by identifying opportunities for improvement, making recommendations and 
designing and implementing systems.');
INSERT INTO GICS
VALUES(452010,4520,'Communications Equipment',2,'Communications equipment 
operators facilitate communication between two or more parties using 
switchboards and other telephone systems. Professions that involve operating 
communications equipment include switchboard operators, telephone operators and 
radio operators.');
INSERT INTO GICS
VALUES(452020,4520,'Technology Hardware, Storage And Peripherals',2,
'The Hardware Technician''s role is to support and maintain in-house technology
equipment and IT assets. This includes installing, configuring, diagnosing, 
repairing, and upgrading all County hardware and equipment while ensuring its 
optimal performance.');
INSERT INTO GICS
VALUES(452030,4520,'Electronic Equipment, Instruments And Components',1,
'Assemble electrical or electronic systems or support structures and install 
components, units, subassemblies, wiring, or assembly casings, using rivets, 
bolts, soldering or micro-welding equipment.');


INSERT INTO Company
VALUES ('www.duboisdentistry.com',9029,'Dubois Dentistry','Software',45103030,451030,
'5760 Hayne Blvd','New Orleans','LA',70126);
INSERT INTO Company
VALUES('www.bestbuy.com',2010,'Best Buy',
'Technology Hardware, Storage And Peripherals',45202030,452020,
'1601 Westbank Expy Ste A','Harvey','LA',70058);
INSERT INTO Company
VALUES('www.IDScan.net',2918,'ID Scan','IT Services',45102020,451020,
'2045 Lakeshore Dr Suite 526','New Orleans','LA',70122);
INSERT INTO Company
VALUES('www.Technology.com',2938,'Technology','Software',45103030,451030,
'1182 Lilac Down Lane','Kenner','LA',70049);
INSERT INTO Company 
VALUES('www.Microsoft.com',2011,'Microsoft','IT Services',45102020,451020,
'3049 Fun Ave','Mandeville','LA',71102);
INSERT INTO Company
VALUES('www.Dell.com',2920,'Dell','Technology Hardware, Storage And Peripherals',
45202030,452020,'539 Boomerang Blvd.','Shervport','LA',73020);
INSERT INTO Company 
VALUES('www.CresentCityTechnologies.com',4938,'Cresent City Technologies','IT Services',45102020,
451020,'983 Memorial','New Orleans','LA',70118);
INSERT INTO Company 
VALUES('www.AdavncePTS.com',3030,'AdvancePTS','IT Services',45102020,451020,
'392 News Lane','Belle Chasse','LA',70122);
INSERT INTO Company 
VALUES('www.Apple.com',3000,'Apple','Software',45103030,451030,
'493 Veterans Blvd.','Metairie','LA',70003);
INSERT INTO Company 
VALUES('www.MKS2Technologies.com',4899,'MKS2Technologies','Software',45103030,451030,
'903 Bored','New Orleans','LA',70019);

INSERT INTO JOB
VALUES(9387,9029,350000,'salary','Fulltime'); 
INSERT INTO JOB
VALUES(8492,2010,12,'wage','Partime');
INSERT INTO JOB
VALUES(8305,2918,30,'wage','Partime');
INSERT INTO JOB
VALUES(3920,2938,4000000,'salary','Fulltime');
INSERT INTO JOB
VALUES(9238,2938,45,'wage','Fulltime');
INSERT INTO JOB
VALUES(9390,2920,200000,'salary','Fulltime');
INSERT INTO JOB
VALUES(0493,4938,15,'wage','Partime');

INSERT INTO Position
VALUES(000,9390,'IT Technican','Dental Office in New 
Orleans East seeking an experienced IT Tech to assist us on an as-needed basis. 
In-person assistance and remote assistance will both be needed as things arise.
Dental office IT experience is a plus.',80.00,120.00);
INSERT INTO Position
VALUES(090,9390,'IT Technican','Dental Office in New 
Orleans East seeking an experienced IT Tech to assist us on an as-needed basis. 
In-person assistance and remote assistance will both be needed as things arise.
Dental office IT experience is a plus.',80.00,120.00);
INSERT INTO Position
VALUES (333,8305,'Geek Squad Advanced Repair Agent','The 
Geek Squad Advanced Repair Agent identifies and offers technology related, 
solution-based recommendations to solve customer needs and ensure that no 
customer is left unserved. They create and maintain a supportive environment for
customers by asking the right questions, listening carefully, taking detailed 
notes and partnering with other team members. Agents diagnose technology issues 
through various troubleshooting activities including the use of specialty 
software.',20.00,300.00);
INSERT INTO Position  
VALUES (777,8492,'Software Deployment and Hardware 
Technician','As an onsite Software Deployment and Hardware Technician on our 
project, you will be supporting the Department of Veterans'' Affairs. 
You''ll analyze problem areas and opportunities for improvement in this mission 
critical network.',35.00,70.00); 
INSERT INTO Position
VALUES (297,8492,'Software Deployment and Hardware Technician Intern',
'As an onsite Software Deployment and Hardware Technician on our 
project, you will be supporting the Department of Veterans'' Affairs. 
You''ll analyze problem areas and opportunities for improvement in this mission 
critical network.',35.00,50.00); 
INSERT INTO Position
VALUES(102,0493,'Software and Hardware Technician','The person in this position 
needs to frequently traverse around the site campus transporting equipment to 
various office buildings. Position also requires occasional unpacking/moving and
installation of IT equipment weighing up to 25 pounds',35.50,60.00);
INSERT INTO Position
VALUES(121,0493,'Application Software Engineer','A Software Developer is 
responsible for developing and modifying source code for software applications.
These applications are aimed at aiding customers with computer tasks or 
programs',25,35);
INSERT INTO Position 
VALUES(223,9387,'Application Software Engineer Intern','A Software Developer is 
responsible for helping develop and modify source code for software applications.
These applications are aimed at aiding customers with computer tasks or 
programs.',15,25);
INSERT INTO Position
VALUES(999,0493,'Data Processer','You receive information about sales for a given 
quarter, create a spreadsheet and input the sales data, organizing it by month, 
year, or another field. You may also link databases to spreadsheets and train 
employees on new software.',20,30);
INSERT INTO Position
VALUES(345,8305,'Data Processer','You receive information about sales for a given 
quarter, create a spreadsheet and input the sales data, organizing it by month, 
year, or another field. You may also link databases to spreadsheets and train 
employees on new software.',20,60);
INSERT INTO Position
VALUES(345,9390,'Data Processer','You receive information about sales for a given 
quarter, create a spreadsheet and input the sales data, organizing it by month, 
year, or another field. You may also link databases to spreadsheets and train 
employees on new software.',20,60);

INSERT INTO Skill
VALUES(0100,'Beginner','AJAX','AJAX''s core function is 
to update web content asynchronously (the “A” of AJAX), meaning a user''s 
web browser doesn''t need to reload an entire web page when only a small 
portion of content on the page needs to change.');
INSERT INTO Skill
VALUES(0101,'Advanced','AutoCad','AutoCAD Drafters specialize
in creating Computer-Aided Design (CAD) models using Autodesk''s AutoCAD software.     
These highly-trained draftsmen work with architects and engineers to design and 
create 2D and 3D computer models of buildings and machine parts from blueprints 
or from scratch.');
INSERT INTO Skill
VALUES(0110,'Beginner','Bash','Git Bash is an application 
for Microsoft Windows environments which provides an emulation layer for a Git 
command line experience.');
INSERT INTO Skill
VALUES(9219,'Medium','Android','Designing and developing 
advanced applications for the Android platform. Unit-testing code for 
robustness, including edge cases, usability, and general reliability. Bug 
fixing and improving application performance.');
INSERT INTO Skill
VALUES(0219,'Medium','Java','In general, they will be responsible to: Design, 
develop, implement, and maintain java application phases, code, and software.');
INSERT INTO Skill
VALUES(1219,'Advanced','Git','Git s software for tracking changes in any set of 
files, usually used for coordinating work among programmers collaboratively 
developing source code during software development');
INSERT INTO Skill
VALUES(3939,'Beginner','ICD-10','The International 
Classification of Diseases, Tenth Revision (ICD-10) is the newest version 
of the common tool used to turn diagnoses and procedures into a universally 
recognized machine-readable sequence. It replaces the decades-old ICD-9 code 
standard.');
INSERT INTO Skill
VALUES(7301,'Beginner','Hibernate','Hibernate ORM 
(or simply Hibernate) is an object–relational mapping tool for the Java 
programming language.');
INSERT INTO Skill
VALUES(0299,'Beginner','Geopak','GEOPAK is a comprehensive 
software package that covers every project phase from conceptualization to final
quantities');
INSERT INTO Skill
VALUES(1921,'Medium','Heroku','Heroku is a platform as a 
service (PaaS) that enables developers to build, run, and operate applications
entirely in the cloud.');
INSERT INTO Skill
VALUES(9001,'Medium','Hyper-V','Hyper-V is Microsoft''s
hardware virtualization product. It lets you create and run a software version 
of a computer, called a virtual machine.');
INSERT INTO Skill
VALUES(9301,'Advanced','C++','C++ is a general-purpose 
programming language created by Bjarne Stroustrup as an extension of the 
C programming language, or "C with Classes".');
INSERT INTO Skill
VALUES(0309,'Beginner','CSS','CSS stands for Cascading     
Style Sheets. CSS describes how HTML elements are to be displayed on screen, 
paper, or in other media. CSS saves a lot of work. It can control the layout 
of multiple web pages all at once. External stylesheets are stored in CSS 
files.');
INSERT INTO Skill
VALUES(8192,'Advanced','Cacti','Cacti is a complete 
network graphing solution designed to harness the power of RRDTool''s data 
storage and graphing functionality.');
INSERT INTO Skill
VALUES(9098,'Advanced','Data Visualization','Data visualization is the
graphical representation of information and data. By using visual elements
like charts, graphs, and maps, data visualization tools provide an accessible 
way to see and understand trends, outliers, and patterns in data.');
INSERT INTO Skill
VALUES(2922,'Beginner','Python','Python is an interpreted,
high-level and general-purpose programming language. Python''s design philosophy
emphasizes code readability with its notable use of significant indentation.'
);
INSERT INTO Skill
VALUES(9384,'Medium','Unix','Unix is a family of multitasking, multiuser computer 
operating systems that derive from the original AT AND T Unix, whose development
started in the 1970s at the Bell Labs research center by Ken Thompson, Dennis 
Ritchie, and others.');
INSERT INTO Skill
VALUES(2930,'Beginner','Tomcat','Everything you need to know about Tomcat: the 
high-availability Java application server for servlets, JSPs, and WebSockets.');
INSERT INTO Skill
VALUES(9387,'Beginner','Youtube','YouTube is a free video sharing website that makes 
it easy to watch online videos. You can even create and upload your own videos
to share with others. Originally created in 2005, YouTube is now one of the most
popular sites on the Web, with visitors watching around 6 billion hours of video
every month.');
INSERT INTO Skill
VALUES(8493,'Advanced','SQL','SQL (pronounced "ess-que-el") stands for Structured 
Query Language. SQL is used to communicate with a database.');
INSERT INTO Skill
VALUES(8709,'Medium','WordPerfect','WordPerfect is a word 
processing application, now owned by Corel, with a long history on 
multiple personal computer platforms. At the height of its popularity in the 
1980s and early 1990s, it was the dominant player in the word processor market, 
displacing the prior market leader WordStar.');
INSERT INTO Skill
VALUES(2348,'Beginner','Visual Studio','Microsoft Visual Studio is an 
integrated development environment from Microsoft. It is used to develop 
computer programs, as well as websites, web apps, web services and mobile apps.'
);
INSERT INTO Skill
VALUES(0984,'Advanced','Visual Design','Visual designers are 
the problem solvers of the design world. Rather than just bringing brands to 
life, they play a key role in defining what goes into a brand''s unique style
and voice. In addition to creating beautiful designs, they know how to explain 
design concepts and the decisions behind their work.');
INSERT INTO Skill
VALUES(9574,'Beginner','Wireshark','Wireshark is a free and 
open-source packet analyzer. It is used for network troubleshooting, analysis,
software and communications protocol development, and education. Originally 
named Ethereal, the project was renamed Wireshark in May 2006 due to trademark 
issues.');
INSERT INTO Skill
VALUES(4567,'Beginner','Ruby','A dynamic, open source 
programming language with a focus on simplicity and productivity.');

INSERT INTO Course
VALUES(1000,200.50,'Python is a versatile programming language, suitable for
projects ranging from small scripts to large systems.','Beginner','Python','Expired');
INSERT INTO Course
VALUES(1029,300.00,'This course introduces computer programming using the 
JAVA programming language with object-oriented programming principles.',
'Beginner','Java Programming','Active');
INSERT INTO Course
VALUES(1001,500.00,'Topics include hardware and software fundamentals, use 
of software packages, effective use of networks, Internet, and other 
communication tools, the design of management information systems, as well as
the ethical use of computers in business and society.','Medium','Systems',
'Active');
INSERT INTO Course
VALUES(2343,200.00,'The course focuses on basic and essential topics in data 
structures, including array-based lists, linked lists, skiplists, hash tables, 
recursion, binary trees, scapegoat trees, red–black trees, heaps, sorting 
algorithms, graphs, and binary trie.','Medium','Data Structures','Expired');
INSERT INTO Course
VALUES(2458,150.00,'This course introduces basic methods for the design
and analysis of efficient algorithms emphasizing methods useful in practice. 
Different algorithms for a given computational task are presented and their 
relative merits evaluated based on performance measures.','Medium','Algorithms',
'Active');
INSERT INTO Course
VALUES(5000,300.00,'It includes representing information with the 
relational database model, manipulating data with an interactive query 
language (SQL) and database programming, database development including internet
applications, and database security, integrity and privacy issues.','Advanced',
'Databases','Expired');
INSERT INTO Course
VALUES(2000,460.00,'This course will introduce students to all aspects
of computer graphics including hardware, software and applications.
Students will gain experience using a graphics application programming interface
(OpenGL) by completing several programming projects.','Medium',
'Computer Graphics','Expired');
INSERT INTO Course
VALUES(5003,600.00,'The video game design course provides an opportunity
for students to immerse themselves in the world of video game design and 
development. Students will explore conceptual and technical aspects of 
contemporary video game creation using Unity software, a robust and highly 
respected industry game development platform.','Advanced','Advanced Game 
Development','Active');

INSERT INTO Section
VALUES (002,5003,2017,'University of New Orleans','Online',to_date('28/12/2017', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (001,5003,2000,'Xaiver University','Online',to_date('28/05/2001', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (201,1000,2001,'Delgado','Classroom',to_date('12/12/2001', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (102,1000,1989,'MIT','Classroom',to_date('28/03/1990', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (309,1000,2000,'McCann School of Buisness And Technology College'
,'Online',to_date('10/12/2000', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (923,2458,2020,'Remington College','Online',
to_date('10/01/2020', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (967,5000,2021,'Dillard Univeristy','Online',
to_date('02/12/2021', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (765,2000,2021,'Dillard University','Classroom',
to_date('01/05/2022', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (348,1029,2016,'University of New Orleans','Classroom',
to_date('26/05/2017', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (100,1001,1978,'Louisiana State Univeristy','Online',
to_date('08/12/1978', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (323,2343,1978,'Louisiana State Univeristy','Classroom',
to_date('28/03/1979', 'dd/mm/yyyy'));
INSERT INTO Section
VALUES (421,2458,2000,'Louisiana State Univeristy','Online',
to_date('10/12/2000', 'dd/mm/yyyy'));

INSERT INTO Teaches
VALUES (5003,9301);
INSERT INTO Teaches
VALUES (5003,0101);
INSERT INTO Teaches
VALUES (1000,0110);
INSERT INTO Teaches
VALUES (1000,0219);
INSERT INTO Teaches
VALUES (1000,9301);
INSERT INTO Teaches 
VALUES (1029,0219);

INSERT INTO Takes
VALUES (10101,5003,002,2017);
INSERT INTO Takes
VALUES (10101,1000,201,2001);
INSERT INTO Takes
VALUES (10123,1000,201,2001);
INSERT INTO Takes
VALUES (10129,2000,765,2021);
INSERT INTO Takes
VALUES (10129,5000,967,2021);

INSERT INTO PossessesSkill 
VALUES(10101,0100);
INSERT INTO PossessesSkill 
VALUES(10101,0101);
INSERT INTO PossessesSkill 
VALUES(10101,0110);
INSERT INTO PossessesSkill 
VALUES(10132,9219);
INSERT INTO PossessesSkill 
VALUES(10101,2930);

INSERT INTO RequiresSkill
VALUES(000,0101,9390);
INSERT INTO RequiresSkill   
VALUES(000,2930,9390);
INSERT INTO RequiresSkill
VALUES(090,1921,9390);
INSERT INTO RequiresSkill
VALUES(090,0309,9390);
INSERT INTO RequiresSkill
VALUES(102,0219,0493);
INSERT INTO RequiresSkill
VALUES(777,9219,8492);
INSERT INTO RequiresSkill
VALUES(777,8493,8492);
INSERT INTO RequiresSkill
VALUES(777,1921,8492);

INSERT INTO WORKS
VALUES(10129,000,9390,to_date('28/12/2012', 'dd/mm/yyyy'),NULL);
INSERT INTO WORKS
VALUES(10132,000,9390,to_date('28/12/2012', 'dd/mm/yyyy'),
to_date('28/12/2021', 'dd/mm/yyyy'));
INSERT INTO WORKS
VALUES(10101,000,9390,to_date('28/12/2006', 'dd/mm/yyyy'),
to_date('28/12/2019', 'dd/mm/yyyy'));
INSERT INTO WORKS               
VALUES(10132,777,8492,to_date('01/01/2016', 'dd/mm/yyyy'),
to_date('08/02/2021','dd/mm/yyyy'));
INSERT INTO WORKS
VALUES(10132,345,8305,to_date('29/05/2010', 'dd/mm/yyyy'),NULL);
INSERT INTO WORKS
VALUES(10123,090,9390,to_date('01/01/1982', 'dd/mm/yyyy'),
to_date('03/09/2021','dd/mm/yyyy'));
INSERT INTO WORKS
VALUES(10129,102,0493,to_date('19/11/2001', 'dd/mm/yyyy'),
to_date('01/01/2021', 'dd/mm/yyyy'));
INSERT INTO WORKS
VALUES(10129,345,9390,to_date('19/11/2001', 'dd/mm/yyyy'),NULL);
INSERT INTO WORKS
VALUES(10123,333,8305,to_date('01/01/1982', 'dd/mm/yyyy'),NULL);


INSERT INTO Requirements
VALUES (8492,1921);
INSERT INTO Requirements
VALUES (8492,9301);
INSERT INTO Requirements
VALUES (9387,9301 );
INSERT INTO Requirements
VALUES (9387,8192);
INSERT INTO Requirements
VALUES (3920,0309 );
INSERT INTO Requirements
VALUES (3920,9301);

INSERT INTO Prerequisites
VALUES(1000,5000);
INSERT INTO Prerequisites
VALUES(1000,2000);
INSERT INTO Prerequisites
VALUES(2000,5000);
INSERT INTO Prerequisites
VALUES(2000,5003);
INSERT INTO Prerequisites
VALUES(5000,5003);