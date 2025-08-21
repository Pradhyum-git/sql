--  ===========================================================
--                 Filtering Data using Where Condition
--  ===========================================================

USE salesdb;
SELECT * FROM orders;

-- ==================================
--     Comparsion Operators
-- ==================================

-- Equal to (=) operator 
--        Select the orders which are delivered to customer
SELECT * FROM orders WHERE orderstatus='Delivered';

-- Not equal (<>) to opeartor
--            Select the order other single quantity
SELECT * FROM orders WHERE quantity<>1;

--  Greater than (>)
--         Select the orders whose sales are getting greater than 50
SELECT * FROM orders WHERE sales>60;

-- Greater than or equal to (>=)
-- 			Query : Select the orders whose sales are getting greater than or equal to 60
SELECT * FROM orders WHERE sales>=60;

-- Less than operator (<)
--      Query:Select the orders whose sales are getting less than 60
SELECT * FROM orders WHERE sales<60;

-- Less than or equal to (<=)
-- 		Query : Select the orders whose sales are getting less than or equal to 60
SELECT * FROM orders WHERE sales<=60;


-- ==================================
--     Logical Operators
-- ==================================

Select * from employees;

-- AND Operator
-- 		QUERY : Select the employees who is working in sales department and getting the salary above 60000
SELECT 
* 
FROM employees 
WHERE department='Sales' AND salary>60000;


-- OR operator
-- 		QUERY : SELECT THE EMPLOYEES either working in marketing department or they are females
SELECT
*
FROM employees
WHERE department='Marketing' OR gender='F';

-- NOT operator
-- 		QUERY : Select the employees not working in sales department
SELECT
*
FROM employees
WHERE NOT department='Sales';


-- ===================================
--        Range Operator
-- ===================================

-- Between Operator
-- 			QUERY : Select the employees whose salary is less than 75000 and greater than 50000
SELECT
*
FROM employees
WHERE salary BETWEEN 50000 AND 75000;



-- ========================================
--    Membership Operator
-- ========================================

SELECT 
*
FROM orders;

-- IN Operator
-- 			QUERY : Select the orders whose sales are 10,15,90,60
SELECT 
* 
FROM orders 
WHERE sales IN (10,15,60,90);

-- NOT IN Operator
-- 			Query : Select the orders whose sales are not 10,15,90,60
SELECT 
* 
FROM orders 
WHERE sales NOT IN (10,15,60,90);


-- LIKE Operator
-- 			Query : Select the customers whose first name start with M
SELECT
*
FROM customers
WHERE first_name LIKE 'M%';


-- 			Query : Select the customers whose first name starts with M and ends with 
SELECT
*
FROM customers
WHERE first_name LIKE 'M%' AND first_name LIKE '%y';



