DROP TABLE PHONE;
DROP TABLE EMAIL;
DROP TABLE TEACHES;
DROP TABLE TAKES;
DROP TABLE SECTION;
DROP TABLE POSSESSESSKILL;
DROP TABLE REQUIRESSKILL;
DROP TABLE REQUIREMENTS;
DROP TABLE PREREQUISITES;
DROP TABLE WORKS;
DROP TABLE COURSE;
DROP TABLE POSITION;
DROP TABLE JOB;
DROP TABLE SKILL;
DROP TABLE COMPANY;
DROP TABLE GICS;
DROP TABLE PERSON;
CREATE TABLE Person(PersonID  NUMBER(5) NOT NULL,
                    Gender    VARCHAR(6),
                    MIName    VARCHAR(1),
                    LastName  VARCHAR(30),
                    FirstName VARCHAR(30),
                    ZipCode   NUMBER(5),
                    Street    VARCHAR(40),
                    City      VARCHAR(30),
                    CONSTRAINT PersonPK PRIMARY KEY(PersonID)
                    );
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

CREATE TABLE Phone(AreaCode      NUMBER(3),
                   SevenDigitNum NUMBER(7),
                   PersonID      NUMBER(7),
                   CONSTRAINT PhonePK PRIMARY KEY(AreaCode,SevenDigitNum,PersonID),
                   CONSTRAINT PhoneFK FOREIGN KEY(PersonID)
                        REFERENCES Person(PersonID)
                   );

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

CREATE TABLE Email(PersonEmail  VARCHAR(40),
                   PersonID     NUMBER(5),
                   CONSTRAINT EmailPK PRIMARY KEY(PersonEmail,PersonID),
                   CONSTRAINT EmailFK FOREIGN KEY(PersonID)
                        REFERENCES Person(PersonID)
                   );              

INSERT INTO Email
VALUES('Kgoat1999@gmail.com',10132);
INSERT INTO Email
VALUES('ForestMarie@hotmail.com',10101);
INSERT INTO Email
VALUES('youngin@aol.com',12390);
INSERT INTO Email
VALUES('Goldstarsrock@yahoo.com',12390);

CREATE TABLE GICS(IndustryID        NUMBER(6),
                  ParentID          NUMBER(4),
                  IndustryTitle     VARCHAR2(300),
                  GICSLevel         NUMBER(1) CHECK (GICSLevel in(1,2,3)),
                  GICSDescription   VARCHAR2(600),
                  CONSTRAINT GICSPK PRIMARY KEY(IndustryID)
                  );
              
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
            
CREATE TABLE Company(Website         VARCHAR(100),
                     CompanyID       NUMBER(4),
                     CompanyName     VARCHAR2(80),
                     IndustryTitle   VARCHAR(60),
                     SubIndustryID   NUMBER(8),
                     IndustryID      NUMBER(6),
                     Street          VARCHAR(40),
                     City            VARCHAR(30),
                     CompanyState    VARCHAR(30),
                     ZipCode         NUMBER(7),
                     CONSTRAINT CompanyPK PRIMARY KEY(CompanyID),
                     CONSTRAINT CompanyGICSFK FOREIGN KEY(IndustryID)
                            REFERENCES GICS(IndustryID)
                     );   
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

CREATE TABLE Job(JobCode       NUMBER(4) NOT NULL,
                 CompanyID     NUMBER(4)NOT NULL,
                 PayRate       NUMBER,
                 PayType       VARCHAR(6) CHECK (PayType in ('wage','salary')),
                 EmployeeMode  VARCHAR(8) CHECK (EmployeeMode in('Fulltime','Partime')),
                 CONSTRAINT JobPK PRIMARY KEY(JobCode),
                 CONSTRAINT JobCompanyFK FOREIGN KEY(CompanyID)
                         REFERENCES Company(CompanyID)
                );
         
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

CREATE TABLE Position(PositionCode      NUMBER(3),
                      JobCode           NUMBER(4),
                      PositionTitle     VARCHAR(60),
                      PDescription      VARCHAR2(600),
                      PayRangeLow       NUMBER(4,2),
                      PayRangeHigh      NUMBER(8,2),
                      CONSTRAINT PositionPK PRIMARY KEY(PositionCode,JobCode),
                      CONSTRAINT PositionFK FOREIGN KEY(JobCode)
                            REFERENCES Job(JobCode)
                     );           
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

CREATE TABLE Skill(SkillCode    NUMBER(4),
                   SkillLevel   VARCHAR(8) CHECK (SkillLevel in ('Beginner','Medium','Advanced')),
                   SDescription VARCHAR2(500),
                   SkillTitle   VARCHAR(60),
                   CONSTRAINT SkillPK PRIMARY KEY(SkillCode)
                   ); 
         
INSERT INTO Skill
VALUES(0100,'Beginner','AJAX''s core function is 
to update web content asynchronously (the “A” of AJAX), meaning a user''s 
web browser doesn''t need to reload an entire web page when only a small 
portion of content on the page needs to change.','AJAX');
INSERT INTO Skill
VALUES(0101,'Advanced','AutoCAD Drafters specialize
in creating Computer-Aided Design (CAD) models using Autodesk''s AutoCAD software.     
These highly-trained draftsmen work with architects and engineers to design and 
create 2D and 3D computer models of buildings and machine parts from blueprints 
or from scratch.','AutoCad');
INSERT INTO Skill
VALUES(0110,'Beginner','Git Bash is an application 
for Microsoft Windows environments which provides an emulation layer for a Git 
command line experience.','Bash');
INSERT INTO Skill
VALUES(9219,'Medium','Designing and developing 
advanced applications for the Android platform. Unit-testing code for 
robustness, including edge cases, usability, and general reliability. Bug 
fixing and improving application performance.','Android');
INSERT INTO Skill
VALUES(0219,'Medium','In general, they will be responsible to: Design, 
develop, implement, and maintain java application phases, code, and software.',
'Java');
INSERT INTO Skill
VALUES(1219,'Advanced','Git s software for tracking changes in any set of 
files, usually used for coordinating work among programmers collaboratively 
developing source code during software development','Git');
INSERT INTO Skill
VALUES(3939,'Beginner','The International 
Classification of Diseases, Tenth Revision (ICD-10) is the newest version 
of the common tool used to turn diagnoses and procedures into a universally 
recognized machine-readable sequence. It replaces the decades-old ICD-9 code 
standard.','ICD-10');
INSERT INTO Skill
VALUES(7301,'Beginner','Hibernate ORM 
(or simply Hibernate) is an object–relational mapping tool for the Java 
programming language.','Hibernate');
INSERT INTO Skill
VALUES(0299,'Beginner','GEOPAK is a comprehensive 
software package that covers every project phase from conceptualization to final
quantities','Geopak');
INSERT INTO Skill
VALUES(1921,'Medium','Heroku is a platform as a 
service (PaaS) that enables developers to build, run, and operate applications
entirely in the cloud.','Heroku');
INSERT INTO Skill
VALUES(9001,'Medium','Hyper-V is Microsoft''s
hardware virtualization product. It lets you create and run a software version 
of a computer, called a virtual machine.','Hyper-V');
INSERT INTO Skill
VALUES(9301,'Advanced','C++ is a general-purpose 
programming language created by Bjarne Stroustrup as an extension of the 
C programming language, or "C with Classes".','C++');
INSERT INTO Skill
VALUES(0309,'Beginner','CSS stands for Cascading     
Style Sheets. CSS describes how HTML elements are to be displayed on screen, 
paper, or in other media. CSS saves a lot of work. It can control the layout 
of multiple web pages all at once. External stylesheets are stored in CSS 
files.','CSS');
INSERT INTO Skill
VALUES(8192,'Advanced','Cacti is a complete 
network graphing solution designed to harness the power of RRDTool''s data 
storage and graphing functionality.','Cacti');
INSERT INTO Skill
VALUES(9098,'Advanced','Data visualization is the
graphical representation of information and data. By using visual elements
like charts, graphs, and maps, data visualization tools provide an accessible 
way to see and understand trends, outliers, and patterns in data.',
'Data Visualization');
INSERT INTO Skill
VALUES(2922,'Beginner','Python is an interpreted,
high-level and general-purpose programming language. Python''s design philosophy
emphasizes code readability with its notable use of significant indentation.'
,'Python');
INSERT INTO Skill
VALUES(9384,'Medium','Unix is a family of multitasking, multiuser computer 
operating systems that derive from the original AT AND T Unix, whose development
started in the 1970s at the Bell Labs research center by Ken Thompson, Dennis 
Ritchie, and others.','Unix');
INSERT INTO Skill
VALUES(2930,'Beginner','Everything you need to know about Tomcat: the 
high-availability Java application server for servlets, JSPs, and WebSockets.',
'Tomcat');
INSERT INTO Skill
VALUES(9387,'Beginner','YouTube is a free video sharing website that makes 
it easy to watch online videos. You can even create and upload your own videos
to share with others. Originally created in 2005, YouTube is now one of the most
popular sites on the Web, with visitors watching around 6 billion hours of video
every month.','Youtube');
INSERT INTO Skill
VALUES(8493,'Advanced','SQL (pronounced "ess-que-el") stands for Structured 
Query Language. SQL is used to communicate with a database.','SQL');
INSERT INTO Skill
VALUES(8709,'Medium','WordPerfect is a word 
processing application, now owned by Corel, with a long history on 
multiple personal computer platforms. At the height of its popularity in the 
1980s and early 1990s, it was the dominant player in the word processor market, 
displacing the prior market leader WordStar.','WordPerfect');
INSERT INTO Skill
VALUES(2348,'Beginner','Microsoft Visual Studio is an 
integrated development environment from Microsoft. It is used to develop 
computer programs, as well as websites, web apps, web services and mobile apps.'
,'Visual Studio');
INSERT INTO Skill
VALUES(0984,'Advanced','Visual designers are 
the problem solvers of the design world. Rather than just bringing brands to 
life, they play a key role in defining what goes into a brand''s unique style
and voice. In addition to creating beautiful designs, they know how to explain 
design concepts and the decisions behind their work.','Visual Design');
INSERT INTO Skill
VALUES(9574,'Beginner','Wireshark is a free and 
open-source packet analyzer. It is used for network troubleshooting, analysis,
software and communications protocol development, and education. Originally 
named Ethereal, the project was renamed Wireshark in May 2006 due to trademark 
issues.','Wireshark');
INSERT INTO Skill
VALUES(4567,'Beginner','A dynamic, open source 
programming language with a focus on simplicity and productivity.','Ruby');

CREATE TABLE Course(CourseCode        NUMBER(4) NOT NULL,
                    RetailPrice       NUMBER(6,2)NOT NULL,
                    CourseDescription VARCHAR(400),
                    CourseLevel       VARCHAR(8) CHECK (CourseLevel in('Beginner','Medium','Advanced')),
                    Title             VARCHAR(40),
                    Status            VARCHAR(7) CHECK (Status in ('Active','Expired')),
                    CONSTRAINT CoursePK PRIMARY KEY(CourseCode)
                    );

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

CREATE TABLE Section(SectionNo      NUMBER(3), 
                     CourseCode     NUMBER(4) NOT NULL,
                     SectionYear    NUMBER(4),
                     OfferedBy      VARCHAR(60),
                     SectionFormat  VARCHAR(9) CHECK (SectionFormat IN ('Classroom','Online')),
                     CompletionDate DATE,
                     CONSTRAINT SectionPK PRIMARY KEY(CourseCode,SectionNo,SectionYear),
                     CONSTRAINT SectionFK FOREIGN KEY(CourseCode)
                            REFERENCES Course(CourseCode)
                     );  
                     
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
                    
CREATE TABLE Teaches(CourseCode NUMBER(4),
                     SkillCode  NUMBER(4),
                     CONSTRAINT TeachesPK PRIMARY KEY(CourseCode,SkillCode),
                     CONSTRAINT TeachesFK FOREIGN KEY(CourseCode)
                            REFERENCES Course(CourseCode),
                     CONSTRAINT TeachesSkill FOREIGN KEY(SkillCode)
                            REFERENCES Skill(SkillCode)
                    );
                    
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

CREATE TABLE Takes(PersonID    NUMBER(5),
                   CourseCode  NUMBER(4),
                   SectionNo   NUMBER(3),
                   SectionYear NUMBER(4),
                   CONSTRAINT TakesPK PRIMARY KEY(PersonID,CourseCode,SectionNo),
                   CONSTRAINT TakesFK FOREIGN KEY(PersonID)
                        REFERENCES Person(PersonID),
                   CONSTRAINT TakesSectionFK FOREIGN KEY(SectionNo,CourseCode,SectionYear)
                        REFERENCES Section(SectionNo,CourseCode,SectionYear)
                   );

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


            
CREATE TABLE PossessesSkill(PersonID    NUMBER(5),
                            SkillCode   NUMBER(4),
                            CONSTRAINT PossessesSkillPK PRIMARY KEY(PersonID,SkillCode),
                            CONSTRAINT PossessesSkillPersonFK FOREIGN KEY(PersonID)
                                    REFERENCES Person(PersonID),
                            CONSTRAINT PossessesSkillFK FOREIGN KEY (SkillCode)
                                    REFERENCES Skill(SkillCode)
                            ); 

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



CREATE TABLE RequiresSkill(PositionCode  NUMBER(3) NOT NULL,
                           SkillCode     NUMBER(4),
                           JobCode       NUMBER(4),
                           CONSTRAINT RequiresPK PRIMARY KEY (PositionCode,SkillCode),
                           CONSTRAINT RequiresSkillFK FOREIGN KEY(SkillCode)
                                REFERENCES Skill(SkillCode),
                           CONSTRAINT RequiresPositionFK FOREIGN KEY(PositionCode,JobCode)
                                REFERENCES Position(PositionCode,JobCode)
                           );
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

CREATE TABLE Works(PersonID     NUMBER(5) NOT NULL,
                   PositionCode NUMBER(3) NOT NULL,
                   JobCode      NUMBER(4),
                   Start_Date   Date,
                   End_Date     Date,
                   CONSTRAINT Datevalidity CHECK(End_Date >= Start_Date),
                   CONSTRAINT WorksPK PRIMARY KEY(PersonID,PositionCode,JobCode),
                   CONSTRAINT WorksFK FOREIGN KEY(PersonID)   
                        REFERENCES Person(PersonID),
                   CONSTRAINT WorksPositionFK FOREIGN KEY(PositionCode,JobCode) 
                        REFERENCES Position(PositionCode,JobCode)    
);

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

CREATE TABLE Requirements(JobCode   NUMBER(4),
                          SkillCode NUMBER(4),
                          CONSTRAINT RequirementsPK PRIMARY KEY(JobCode,SkillCode),
                          CONSTRAINT RequirementsFK FOREIGN KEY(JobCode)
                                REFERENCES Job(JobCode),
                          CONSTRAINT RequirementsSkillFK FOREIGN KEY(SkillCode)
                                REFERENCES Skill(SkillCode)
                         );

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

CREATE TABLE Prerequisites(RequiredCode NUMBER(4),
                           CourseCode NUMBER(4),
                           CONSTRAINT PrePK PRIMARY KEY(RequiredCode,CourseCode),
                           CONSTRAINT PreFK FOREIGN KEY(RequiredCode)
                                REFERENCES Course(CourseCode),
                           CONSTRAINT PreFK2 FOREIGN KEY(CourseCode)
                                REFERENCES Course(CourseCode)
            );
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

