CREATE TABLE classroom
(
    rollno INT8 PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age int not null,
    house CHAR(12) NOT NULL,
    grade CHAR(1)
);

INSERT INTO classroom (rollno, name, age, house, grade)
VALUES
    (1, 'Sam', 21, 'Akash', 'B'),
    (2, 'Ram', 34, 'Agni', 'A'),
    (3, 'Shyam', 32, 'Jal', 'B'),
    (4, 'Sundar', 24, 'Agni', 'A');

-- where clause (conditions)
SELECT name
FROM classroom
WHERE grade = 'A';

-- limit
SELECT name
FROM classroom
LIMIT 3;

-- order by clause
SELECT *
FROM classroom
ORDER BY age ASC;



Select * from classroom
