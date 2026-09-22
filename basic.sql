CREATE TABLE customer 
(
    CustID INT PRIMARY KEY,
    CustName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    City CHAR(50),
    Salary DECIMAL(10),
    Gender CHAR(10)
);

-- insert
INSERT INTO customer
(CustID, CustName, Age, City, Salary, Gender)
VALUES
(1, 'Sam', 26, 'Delhi', 9000, 'M'),
(2, 'Ram', 19, 'Bangalore', 11000, 'M'),
(3, 'Pam', 31, 'Mumbai', 6000, 'M'),
(4, 'Jam', 42, 'Pune', 10000, 'M');

-- update
UPDATE customer
SET CustName = 'Xam',
    Age = 32,
    City = 'Patna'
WHERE CustID = 2;

-- alter (add column)
ALTER TABLE customer
ADD COLUMN Roles VARCHAR(10);

-- alter (modify column)
ALTER TABLE customer
MODIFY COLUMN Gender CHAR(10);

-- alter (delete column)
ALTER TABLE customer
DROP COLUMN Gender;

-- delete values
DELETE FROM customer
WHERE CustID = 3;

-- display result
SELECT * FROM customer;

-- remove all rows
TRUNCATE TABLE customer;

-- delete entire table
DROP TABLE customer;

--after truncate & drop we can't retrive SELECT * from customer 
SELECT * from customer
