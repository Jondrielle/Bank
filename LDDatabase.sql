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

CREATE TABLE Phone(AreaCode      NUMBER(3),
                   SevenDigitNum NUMBER(7),
                   PersonID      NUMBER(7),
                   CONSTRAINT PhonePK PRIMARY KEY(AreaCode,SevenDigitNum,PersonID),
                   CONSTRAINT PhoneFK FOREIGN KEY(PersonID)
                        REFERENCES Person(PersonID)
                   );



CREATE TABLE Email(PersonEmail  VARCHAR(40),
                   PersonID     NUMBER(5),
                   CONSTRAINT EmailPK PRIMARY KEY(PersonEmail,PersonID),
                   CONSTRAINT EmailFK FOREIGN KEY(PersonID)
                        REFERENCES Person(PersonID)
                   );              



CREATE TABLE GICS(IndustryID        NUMBER(6),
                  ParentID          NUMBER(4),
                  IndustryTitle     VARCHAR2(300),
                  GICSLevel         NUMBER(1) CHECK (GICSLevel in(1,2,3)),
                  GICSDescription   VARCHAR2(600),
                  CONSTRAINT GICSPK PRIMARY KEY(IndustryID)
                  );
              

            
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

CREATE TABLE Job(JobCode       NUMBER(4) NOT NULL,
                 CompanyID     NUMBER(4)NOT NULL,
                 PayRate       NUMBER,
                 PayType       VARCHAR(6) CHECK (PayType in ('wage','salary')),
                 EmployeeMode  VARCHAR(8) CHECK (EmployeeMode in('Fulltime','Partime')),
                 CONSTRAINT JobPK PRIMARY KEY(JobCode),
                 CONSTRAINT JobCompanyFK FOREIGN KEY(CompanyID)
                         REFERENCES Company(CompanyID)
                );
         


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


CREATE TABLE Skill(SkillCode    NUMBER(4),
                   SkillLevel   VARCHAR(8) CHECK (SkillLevel in ('Beginner','Medium','Advanced')),
                   SkillTitle   VARCHAR(60),
                   SDescription VARCHAR2(500),
                   CONSTRAINT SkillPK PRIMARY KEY(SkillCode)
                   ); 
         

CREATE TABLE Course(CourseCode        NUMBER(4) NOT NULL,
                    RetailPrice       NUMBER(6,2)NOT NULL,
                    CourseDescription VARCHAR(400),
                    CourseLevel       VARCHAR(8) CHECK (CourseLevel in('Beginner','Medium','Advanced')),
                    Title             VARCHAR(40),
                    Status            VARCHAR(7) CHECK (Status in ('Active','Expired')),
                    CONSTRAINT CoursePK PRIMARY KEY(CourseCode)
                    );


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
                     

                    
CREATE TABLE Teaches(CourseCode NUMBER(4),
                     SkillCode  NUMBER(4),
                     CONSTRAINT TeachesPK PRIMARY KEY(CourseCode,SkillCode),
                     CONSTRAINT TeachesFK FOREIGN KEY(CourseCode)
                            REFERENCES Course(CourseCode),
                     CONSTRAINT TeachesSkill FOREIGN KEY(SkillCode)
                            REFERENCES Skill(SkillCode)
                    );
                    


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



            
CREATE TABLE PossessesSkill(PersonID    NUMBER(5),
                            SkillCode   NUMBER(4),
                            CONSTRAINT PossessesSkillPK PRIMARY KEY(PersonID,SkillCode),
                            CONSTRAINT PossessesSkillPersonFK FOREIGN KEY(PersonID)
                                    REFERENCES Person(PersonID),
                            CONSTRAINT PossessesSkillFK FOREIGN KEY (SkillCode)
                                    REFERENCES Skill(SkillCode)
                            ); 





CREATE TABLE RequiresSkill(PositionCode  NUMBER(3) NOT NULL,
                           SkillCode     NUMBER(4),
                           JobCode       NUMBER(4),
                           CONSTRAINT RequiresPK PRIMARY KEY (PositionCode,SkillCode),
                           CONSTRAINT RequiresSkillFK FOREIGN KEY(SkillCode)
                                REFERENCES Skill(SkillCode),
                           CONSTRAINT RequiresPositionFK FOREIGN KEY(PositionCode,JobCode)
                                REFERENCES Position(PositionCode,JobCode)
                           );

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


CREATE TABLE Requirements(JobCode   NUMBER(4),
                          SkillCode NUMBER(4),
                          CONSTRAINT RequirementsPK PRIMARY KEY(JobCode,SkillCode),
                          CONSTRAINT RequirementsFK FOREIGN KEY(JobCode)
                                REFERENCES Job(JobCode),
                          CONSTRAINT RequirementsSkillFK FOREIGN KEY(SkillCode)
                                REFERENCES Skill(SkillCode)
                         );



CREATE TABLE Prerequisites(RequiredCode NUMBER(4),
                           CourseCode NUMBER(4),
                           CONSTRAINT PrePK PRIMARY KEY(RequiredCode,CourseCode),
                           CONSTRAINT PreFK FOREIGN KEY(RequiredCode)
                                REFERENCES Course(CourseCode),
                           CONSTRAINT PreFK2 FOREIGN KEY(CourseCode)
                                REFERENCES Course(CourseCode)
            );
            










