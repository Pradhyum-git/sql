-- ==============================================================================================
--           							JOINS
--      1)Basic Joins:NO JOIN,Inner Join,Left Join,Right Join,Full outer join,Cross Join
--      2)Advanced Joins:
-- ==============================================================================================

-- No join
USE salesdb;
SELECT 
* 
FROM
customers;
SELECT 
* FROM 
orders;

-- Inner Join : Return rows only if matching left and right table
--		Query: Get all customers and along with their orders but only customers who placed orders
SELECT
c.customer_id,
o.order_id
FROM customers c
INNER JOIN
orders o
ON c.customer_id=o.customer_id;

-- Left Join : Return all rows from left table and return matching rows from right table
-- 			Query : Get all customer details with there orders, including customer those without orders
SELECT
c.customer_id,
o.order_id
FROM customers c
LEFT JOIN
orders o
ON c.customer_id=o.customer_id;


-- Right Join : Return all rows from right table and return matching rows from left tables
-- Get all customer details with there orders, including orders those without customers

SELECT
c.customer_id,
o.order_id
FROM customers c
RIGHT JOIN
orders o
ON c.customer_id=o.customer_id;


-- Full Join : Return all rows from left and right table even if there is no match
-- 		Query: Get all customers and order details 
SELECT
c.customer_id,
o.order_id
FROM customers c
LEFT JOIN
orders o
ON c.customer_id=o.customer_id
UNION
SELECT
c.customer_id,
o.order_id
FROM customers c
RIGHT JOIN
orders o
ON c.customer_id=o.customer_id;


-- Cross Join : combines every row in table1 with every row in table2

SELECT
c.customer_id,
o.order_id
FROM customers c
CROSS JOIN
orders o;

