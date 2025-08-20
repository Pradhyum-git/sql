-- ===================================================
--          DML :  Data Manipulation Language
--           Operations:INSERT,UPDATE,DELETE
-- ====================================================

-- let's first what is there in the table
USE salesdb;
SELECT * FROM employees;
-- INSERT : insert values into the table 
INSERT INTO employees(employee_id,first_name,last_name,department,birth_date,gender,salary,manager_id)
VALUES(7,'pradhyum','chavala','tech','2005-02-25','M',40000,NULL);
 
 -- after inserting the table is 
 SELECT * FROM employees;

-- let's do multiple inserts  into table in one statements
INSERT INTO employees
VALUES(8,'mahesh','nakka','embedded','2004-05-12','M',30000,2),
(9,'Vamsi','annareddy','tech','2004-08-12','M',3000,7),
(11,'Rajesh','Macha','tech','2004-10-2','M',4000,7);

SELECT * FROM employees;

-- Update : update the value 
UPDATE employees
SET salary=40000,last_name='bodeboina'
WHERE employee_id=6;

-- after updation
SELECT * FROM employees;
-- Delete: Delete the rows based on condition
DELETE FROM employees
WHERE employee_id=11;

-- after deletion employee_id = 11
SELECT * FROM employees;

-- Delete - delete the multiple row once
DELETE FROM employees
WHERE employee_id IN (6,8,9);

-- we are deleting employee_id=7 at last because the there is a foreign constraint as manager id employees_id 7 is the manager id of 9 and 11 employees
-- so first we need to delete the children
DELETE FROM employees
WHERE employee_id=7;

SELECT * FROM employees;




