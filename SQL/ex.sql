/*
Simple requests SQL
*/

SELECT ProgName, Cost
From Prog;

SELECT DISTINCT ProgName
FROM Prog;

SELECT *
FROM User 
WHERE Country LIKE "USA";

SELECT *
FROM User
WHERE LecNumber = 1;

SELECT *
FROM USER
WHERE LecNumber > 1;

SELECT *
FROM User
WHERE Country LIKE "USA"
AND LecNumber >1;

SELECT *
FROM User
WHERE Country LIKE "USA"
OR LecNumber = 1;

SELECT *
FROM User 
WHERE Country LIKE "USA"
ANd NOT LecNumber = 1;


SELECT *
FROM User
WHERE Country LIKE "USA"
AND (LecNumber = 1 OR LecNumber = 2);

SELECT *
FROm User
WHERE Country LIKE "USA" or Country LIKE "RUSSIAN" 
OR  Country LIKE "GERMANY";

SELECT *
FROM User
WHERE Country IN ("USA", "RUSSIAN", "GERMANY");

SELECT *
FROM USer
WHERE LecNumber IN (1, 2, 3);

SELECT *
FROM User
WHERE LecNumber NOT IN (1, 2, 3);

SELECT *
FROM User
WHERE LecNumber >= 1 AND <= 5;

SELECT *
FROM User
WHERE LEcNumber BETWEEN 1 AND 5;

SELECT *
From User
WHERE Country BETWEEN "A" AND "R";

SELECT *
FROM User
WHERE Country NULL;

SELECT *
FROM User
WHERE Country LIKE "R%";

SELECT *
FROM User
WHERE Country LIKE "U_A";

/*
Working with multiple tables
*/

SELECT *
FROM Prog, User
WHERE Prog.Key1 = User.Key2;

SELECT *
FROM Prog, User
WHERE Prog.Key1 = Key2
        AND ProgName LIKE 'Windows 95';

SELECT Prog.Key1, Prog.ProgName, Prog.Cost*2,
    Cost.Key1, Cost.Key2, Cost.LastName
FROM Prog, User
WHERE Prog.Key1 = Key2;

SELECT Prog.Key1, Prog.ProgName, Prog.Cost*2 'rub'
    Cost.Key1, Cost.Key2, Cost.LastName
FROM Prog, User
WHERE Prog.Key1 = Key2;

SELECT *
From Prog
Order BY ProgName;

SELECT *
FROM Prog, User
WHERE Prog.Key1 = Key2
ORDER BY ProgName, Country ASK;

/*
SQL Calculate
*/

SELECT COUNT(LecNumber)
FROM User
WHERE LecNumber = 1;

SELECT COUNT(DISTINCT Country)
FROM User;

SELECT SUM(LecNumber)
FROM User;

SELECT LecNumber + 'шт.'
FROM User;

SELECT LecNumber + 1
FROM User;

SELECT LecNumber + Cost
FROM User;

/*
Associations SQL
*/

SELECT *
FRON User1.db
WHERE OC LIKE 'Unix'
    UNION
        SELECT *
        FROM User2.db
        WHERE OC LIKE 'Unix';

SELECT Key1, OC, LastName
FROM User1.db
WHERE OC LIKE 'Unix'
    UNION
        SELECT Key1, OC, 'NO FOUND'
        FROM User2.db
        WHERE OC LIKE 'Unix';

SELECT Key1, OC, LastName, 'Table 1'
FROM User1.db
WHERE OC LIKE 'Unix'
    UNION 
        SELECT Key1, OC, 'NO FOUND', 'Table 2'
        FROM User2.db 
        WHERE OC LIKE 'Unix';

SELECT Key1, OC, LastName, 'Table 1'
FROM User1.db 
WHERE OC LIKE 'Unix'
    UNION
        SELECT Key1, OC, 'NO FOUND', 'Table 2'
        FROM User2.db  
        WHERE OC LIKE 'Unix'
            ORDER BY 3;

/*
Queries with subqueries SQL
*/

SELECT *
FROM User1.db  
WHERE Key2 = 
    ( SELECT Key1 
    FROM Prog
    WHERE ProgName LIKE 'MyProg.exe');

SELECT *
FROM User1.db 
WHERE Key2 IN
    ( SELECT Key1
    FROM Prog
    WHERE ProgName LIKE 'MyProg.exe');

SELECT *
FROM User1.db OUTER
WHERE Key2 =
    ( SELECT Key1
    FROM Prog INNER
    WHERE Key1 = outer.Key2);

/*
Operator EXISTS SQL
*/

SELECT cnum, cname, city
FROM User1
WHERE EXISTS
    ( SELECT *
    FROM User2
    WHERE OC = "Unix" );

/*
Operator ANY or SOMe SQL
*/

SELECT cnum, cname, city
FROM User1
WHERE OC = ANY /*(SOME, IN)*/ 
    ( SELECT OC
    FROM User2 );

/*
Operator ALL SQL
*/

SELECT cnum, cname, city
FROm User1
WHERE NumberLesens > ALL
    ( SELECT NumberLesens
    FROM User2 );

/*
Working with fields SQL
*/

ISERT INTO User1
VALUES (Id, Name, Password);

ISERT INTO User1
VALUES (Id, Name, NULL);

ISERT INTO User1 (Id, Name)
VALUES (Id, Name);

INSERT INTO User1
SELECT *
FROM User2
WHERE AGE = 10;

INSERT INTO User1 (Id, Name)
SELECT Id, Name
FROM User2
WHERE Age = 10;

UPDATE USer1
SET age = 65

UPDATE User1
SET age=65
WHERE Name LIKE 'Vasya'

UPDATE User1
SET age = age + 1

UPDATE User1
SET age = age + 1, Name = 'Ivan'
WHERE Family LIKE 'Sidorov'

DELETE FROM User1
WHERE Age =  10

CREATE TABLE
(id INT,
 Name CHAR (255),
 Family CHAR (255));

ALTER TABLE Test ADD Test_string CHAR (255)

ALTER TABLE Test DROP Test_string

DROP TABLE Test






