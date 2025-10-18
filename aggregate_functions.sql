/*
-----------------------------------------------------------------------------
					Aggregate Functions
-----------------------------------------------------------------------------
*/
USE salesdb;

-- COUNT(*) : Counts the number of rows

SELECT COUNT(*) FROM customers;

-- COUNT(col) : Count the number of non null values in column
SELECT COUNT(last_name) FROM customers;

-- COUNT(1) : it works same as the COUNT(*)

-- MIN(col) : Gives the minimum value of a column
SELECT MIN(score) FROM customers;

-- MAX(col) : Gives the maximum value in a given column
SELECT MAX(score) FROM customers;

-- AVG(col) : Average value of given numerical column
SELECT AVG(score) FROM customers;

-- SUM(col) : Total sum of given numerical column
SELECT SUM(score) FROM customers;