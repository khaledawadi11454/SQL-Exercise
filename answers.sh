--Basic Queries
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
