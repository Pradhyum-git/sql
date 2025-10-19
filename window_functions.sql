/*
-----------------------------------------------------------------------------------
					Window Functions :
	 Performs calculation on subset of data without losing the details of data
-----------------------------------------------------------------------------------

Syntax :
		window_function() OVER(PARTITION BY column ORDER BY column Frame Size)

PARTITION BY : Divides the rows into groups based on column
ORDER BY : Sorts the data within window
Frame size : It is used to frame

Window Functions are of three types
1)Aggregate Functions
2)Ranking Functions
3)Analytical Functions
*/

-- ------------------------------------------------------------------
--                    Aggregate Functions
-- ------------------------------------------------------------------
USE salesdb;

-- AVG(numerical column) OVER() :  Calculates the average value for each group without losing row details
SELECT
*,
AVG(score) OVER(PARTITION BY country) as average_score
FROM 
customers;

-- SUM(numerical column) OVER() : Calculates the total sum of given column for each subset without losing details of row level.
SELECT
*,
SUM(score) OVER(PARTITION BY country ORDER BY score ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as total_sum
FROM
customers;

-- COUNT(Any data type) : Returns the value of each window
SELECT
*,
COUNT(*) OVER(PARTITION BY country ORDER BY score ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)  as count
FROM
customers;

-- MIN(Numerical column) OVER () : Returns the minimum value of each window
SELECT
*,
MIN(score) OVER(PARTITION BY country ORDER BY score )  as min_value
FROM
customers;

-- MAX(Numerical column) OVER() : Returns the maximum value of each window
SELECT
*,
MAX(score) OVER(PARTITION BY country ORDER BY score DESC) as max_value
FROM
customers;

-- ----------------------------------------------------------------------------
-- 							Ranking Functions
-- ----------------------------------------------------------------------------

-- let's insert some data into customers table to understand the rank functions clearly
INSERT INTO customers VALUES (6,"Pradhyum","Chavala",'Germany',500),
(7,"Eliyaz","Shaik","USA",750),
(8,'Konda',"Danda","Germany",800);


-- ROW_NUMBER() : Assigns a unqiue row number to each row in a window
SELECT 
*,
ROW_NUMBER() OVER(PARTITION BY country ORDER BY score) as rn
FROM 
customers;

-- RANK() OVER() : Assign rank to each row in a window with gaps
SELECT 
*,
RANK() OVER(PARTITION BY country ORDER BY score) as rn
FROM 
customers;

-- DENSE_RANK() OVER() : Assings rank to each row in a window without gaps.
SELECT 
*,
DENSE_RANK() OVER(PARTITION BY country ORDER BY score) as rn
FROM 
customers;

-- NTILE(n) OVER() : Divides the rows into a specified number of approxamitely equal groups
SELECT 
*,
NTILE(2) OVER(ORDER BY score) as group_number
FROM
customers;

-- -------------------------------------------------------
-- 				Analytical Functions
-- -------------------------------------------------------

-- LAG(Any Data Type,n,default value) : Returns the specified previous number value .
SELECT 
*,
LAG(score,2,'N/A') OVER(PARTITION BY country ORDER BY score) as prev_2
FROM 
customers;

-- lead(column,n,default_value) : Returns next nth value for current row
SELECT 
*,
LEAD(score,2,"N/A") OVER(PARTITION BY country ORDER BY score) as next_2
FROM 
customers;

-- FIRST_VALUE(column) OVER() : Returns the first value for window
SELECT 
*,
FIRST_VALUE(score) OVER(PARTITION BY country ORDER BY score) as `first`
FROM 
customers;

-- LAST_VALUE(column) OVER() : Return the last value for window
SELECT 
*,
LAST_VALUE(score) OVER(PARTITION BY country ORDER BY score ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as `last`
FROM 
customers;