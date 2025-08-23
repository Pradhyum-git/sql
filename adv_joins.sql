/*
===============================================
          Advance Joins
   1)Left anti Join
   2)Right Anti Join
   3)Cross Join
   4)Full Anti Join
===============================================
*/
-- Left Anti Join : Returns  rows from left table which are not matching with right table
-- 			Query : check the customers who haven't placed any order yet
USE salesdb;
SELECT 
*
FROM
customers c
LEFT JOIN
orders o
ON c.customer_id=o.customer_id
WHERE o.customer_id IS NULL;

-- Right Anti Join : Return rows from right table which has no match in left table
SELECT
*
FROM
customers c
RIGHT JOIN
orders o
on c.customer_id=o.customer_id
WHERE c.customer_id IS NULL;

-- FULL OUTER ANTI JOIN : Return rows from both tables that has no match in the other table
SELECT
*
FROM
customers c
LEFT JOIN 
orders o
ON c.customer_id=o.customer_id
WHERE o.customer_id IS NULL
UNION
SELECT
*
FROM
customers c
RIGHT JOIN 
orders o
ON c.customer_id=o.customer_id
WHERE c.customer_id IS NULL;


-- Cross Join : returns cartesian product of two tables

SELECT
c.customer_id,
o.order_id
FROM customers c
CROSS JOIN
orders o;

