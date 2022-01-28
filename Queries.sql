Q1
SELECT DISTINCT FirstName,MiName,LastName
FROM Person,Works
WHERE Person.PersonID = Works.PersonID
ORDER BY LastName;

Q2
SELECT PersonID,PayRate
FROM Job,Works
WHERE Works.JobCode = Job.JobCode 
AND PayType in ('salary')
ORDER BY PayRate DESC;

Q3

Q4
SELECT SkillTitle,PositionTitle
FROM RequiresSkill RS,Position P,Skill S
WHERE RS.skillCode = S.skillCode
AND P.positionCode = RS.positionCode
ORDER BY SkillTitle;

Q5
SELECT DISTINCT FirstName,MiName,LastName,SkillTitle
FROM Person,PossessesSkill,Skill
WHERE Person.PersonID = PossessesSkill.PersonID
AND Skill.SkillCode = PossessesSkill.SkillCode
ORDER BY LastName;

Q6
(SELECT SkillTitle
FROM RequiresSkill RS,Skill S,Position P
WHERE RS.skillCode = S.skillCode
AND RS.positionCode = 777)
MINUS 
(SELECT SkillTitle
FROM PossessesSkill PS,Person P,Skill S
WHERE PS.skillCode = S.skillCode
AND Ps.personID = 10132);
        
Q7
Q8
Q9
Q10
Q11
Q12

Q13
SELECT DISTINCT FirstName,MiName,LastName,PositionTitle,Start_Date,End_Date
FROM Works W ,Person P,Position Po
WHERE W.PositionCode = Po.PositionCode
AND P.personID = W.personID
ORDER BY LastName;


Q14
SELECT FirstName,LastName,PositionTitle,Start_Date,End_Date
FROM ((Position P JOIN Works W 
ON P.positionCode = W.positionCode)JOIN Person Pe
ON W.personID = Pe.personID)
WHERE P.positionCode = 777;

Q15
SELECT * 
FROM Person P,Works W
WHERE P.personID = W.personID
AND End_Date IS NOT NULL
AND positionCode = 000;

Q16
SELECT G.IndustryTitle,AVG(payRate * 1920),MIN(payRate * 1920),MAX(payRate * 1920)
FROM Job J,Company C,GICS G
WHERE J.companyID = C.companyID 
AND G.IndustryID = C.IndustryID
AND J.payType = 'wage'
GROUP BY G.IndustryTitle
HAVING

Q17
Industry, and industry group in terms of number of employees. (Note: This should be three separate queries)
SELECT CompanyID,COUNT(PersonID) AS Employees
FROM Job NATURAL JOIN Works
WHERE END_Date IS NULL
GROUP BY CompanyID
HAVING COUNT(PersonID) = (SELECT MAX(COUNT(PersonID))
                          FROM Job NATURAL JOIN Works
                          WHERE END_Date IS NULL
                          GROUP BY CompanyID);
                          
SELECT IndustryID,COUNT(PersonID) AS Ind_employees
FROM Company NATURAL JOIN Job NATURAL JOIN Works
WHERE END_Date IS NULL
GROUP BY IndustryID
HAVING COUNT(PersonID) = (SELECT MAX(COUNT(PersonID))
                          FROM  Company NATURAL JOIN Job NATURAL JOIN Works
                          WHERE END_Date IS NULL
                          GROUP BY IndustryID);
                          
SELECT SubIndustryID,COUNT(PersonID) AS Subind_employees
FROM Company NATURAL JOIN Job NATURAL JOIN Works
WHERE END_Date IS NULL
GROUP BY SubIndustryID
HAVING COUNT(PersonID) = (SELECT MAX(COUNT(PersonID))
                          FROM  Company NATURAL JOIN Job NATURAL JOIN Works
                          WHERE END_Date IS NULL
                          GROUP BY SubIndustryID);

Q18
SELECT G.IndustryTitle,COUNT(*) AS NumEmploy
FROM (((Company C JOIN Job J 
ON C.companyID = J.companyID) JOIN Works W 
ON J.JobCode = W.JobCode) JOIN GICS G
ON G.IndustryID = C.IndustryID)
WHERE End_Date IS NULL
GROUP BY G.IndustryTitle;

Q19
SELECT CourseCode,Title
FROM Teaches NATURAL JOIN Course 
NATURAL JOIN RequiresSkill 
WHERE SkillCode IN (SELECT RS.skillCode 
                    FROM RequiresSkill RS JOIN PossessesSkill PS 
                    ON RS.skillCode = PS.skillCode 
                    WHERE RS.positionCode = 000
                    AND PS.personID = 10101);


Q20
SELECT FirstName, LastName,P.positionTitle,MAX(CASE payType WHEN 'wage' 
                                               THEN (J.payRate * 1920) 
                                               ELSE J.payRate END)
FROM Requirements R JOIN Job J ON J.jobCode = R.jobCode 
    JOIN PossessesSkill PS ON PS.skillCode = R.skillCode
    JOIN Person Pe ON PS.personID = Pe.personID
    JOIN Position P ON P.JobCode = J.JobCode
    JOIN RequiresSkill RS ON P.positionCode = RS.positionCode
WHERE Pe.personID = 10101
GROUP BY FirstName, LastName,P.positionTitle;

Q21
SELECT FirstName,LastName,PersonEmail
FROM (((Person P JOIN Email E ON 
P.personID = E.personID)JOIN PossessesSkill PS 
ON P.personID = PS.personID) JOIN RequiresSkill RS 
ON PS.skillCode = RS.skillCode) 
WHERE RS.positionCode = 777;


Q22. 
SELECT FirstName,MiName,LastName
FROM Person
WHERE personID IN 
    (SELECT personID
    FROM PossessesSkill 
    WHERE 4 > 
    (SELECT COUNT(skillTitle)
    FROM Skill 
    WHERE skillCode IN(SELECT skillCode               
    FROM RequiresSkill
    WHERE skillCode NOT IN(SELECT skillCode
    FROM PossessesSkill)
    AND positionCode = 000))
);


23. 
SELECT P.personID,COUNT(PS.skillCode)
FROM Person P, RequiresSkill R,PossessesSkill PS
WHERE R.skillCode IN (SELECT skillCode FROM RequiresSkill MINUS 
SELECT skillCode FROM PossessesSkill)
AND P.personID = PS.personID
GROUP BY P.personID));

24. 
CREATE VIEW SkillsNeeded AS 
SELECT skillCode
FROM Requirements
WHERE jobCode = 3920;


25. 
DROP VIEW JobWorks;
DROP VIEW Increased;
CREATE VIEW JobWorks AS
SELECT personID, start_Date, end_Date, EmployeeMode, payType, payRate 
FROM Job J NATURAL JOIN Works W;

CREATE VIEW Increased AS 
SELECT S.personID,COUNT(S.personID) AS increasedCount
FROM JobWorks S JOIN JobWorks T 
ON S.payRate > T.payRate AND S.start_Date > T.start_Date
GROUP BY S.personID
ORDER BY increasedCount;

SELECT *
FROM Increased;