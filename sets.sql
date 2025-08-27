-- ===========================================================================
--        Sets:Combines ther result of multiple queries into single result
-- ===========================================================================

-- Let's create a sample table to perform set operations
USE salesdb;
DROP TABLE  IF EXISTS employees_set;
CREATE TABLE employees_set(
	 FirstName VARCHAR(25),
     LastName VARCHAR(25)
);

-- insert into the table
INSERT INTO employees_set VALUES
('Pradhyum','Chavala'),
('Pranitha','Chavala'),
('Venkatesh','Chavala'),
('Swapna','Chavala'),
('Mahesh','Nakka'),
('Murali','Manam');


DROP TABLE IF EXISTS customers_set;
CREATE TABLE customers_set
(
	FirstName VARCHAR(25),
    LastName VARCHAR(25)
);
INSERT INTO customers_set VALUES
('Pradhyum','Chavala'),
('Pranitha','Chavala'),
('Venkatesh','Chavala'),
('Swapna','Chavala'),
('Maneesh','Karnati'),
('Eliyaz','Gangaram');

SELECT
FirstName,LastName
FROM employees_set;

SELECT FirstName,LastName
FROM customers_set;

-- Union: Return  all distinct rows from both tables
SELECT
FirstName,LastName
FROM employees_set
UNION
SELECT
FirstName,LastName
FROM customers_set;

-- UNION ALL : Returns all rows from both the tables
SELECT
FirstName,LastName
FROM employees_set
UNION ALL
SELECT
FirstName,LastName
FROM customers_set;

-- Except : Returns all distinct rows in first table that are not in second table
SELECT
FirstName,LastName
FROM employees_set
EXCEPT
SELECT
FirstName,LastName
FROM customers_set;

-- Intercest : Return rows that are present in both tables
SELECT
FirstName,LastName
FROM employees_set
INTERSECT
SELECT
FirstName,LastName
FROM customers_set;



