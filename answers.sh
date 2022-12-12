## Basic Queries
"
1- SELECT name FROM students;

2-SELECT ID,name,Age,Gender,Points FROM students WHERE Age>30;

3-SELECT name,gender,Age FROM students WHERE gender="F" AND Age>=30;

4-SELECT name,Points FROM students WHERE name="Alex";

5-INSERT INTO students (name,Age,Gender,Points)
VALUES ("khaled","26","M","200");

6-UPDATE students
SET Points= '350'
WHERE name = 'Basma';

7-UPDATE students
SET Points= '350'
WHERE name = 'Basma' AND 'she solved one exercice';

8-UPDATE students
SET Points= '150'
WHERE name = 'Alex' AND 'he is late today';
"
######Creating table graduate 

"
CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER NOT NULL,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT),
	UNIQUE("Age")
);
"


"
INSERT INTO graduates (Name,Age,Points)
SELECT name, Age, Points FROM students
WHERE name='layal';
"
"
 UPDATE graduates SET Graduation = '08/09/2018'
 WHERE name = 'layal';
"
"
DELETE FROM students WHERE Name='Layal';
"

########################Joins#############################################
1-SELECT employees.name ,employees.Company ,companies.Date 
FROM employees INNER JOIN companies on companies.Name = employees.Company;

2-SELECT employees.name FROM employees INNER JOIN companies on employees.Company = companies.name 
WHERE companies.Date< 2000;

3-SELECT companies.Name FROM companies INNER JOIN employees on employees.Company = companies.Name 
WHERE Role = 'graphic designer';
##########################################################################




###############################Count & Filter###################################
1-SELECT * FROM students
WHERE Points = (SELECT max(points) FROM students);

2-SELECT avg(points) FROM students;

3-SELECT count(ID) FROM students 
WHERE Points ='500';

4-SELECT name FROM students
WHERE name like '%S%';

5-SELECT * FROM students ORDER by	Points  DESC ;
