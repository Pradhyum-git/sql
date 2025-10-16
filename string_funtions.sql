/*
--------------------------------------------------------------------
			           String Functions
--------------------------------------------------------------------
1)Manipulation
2)Calculation
3)String Extraction
*/


/*
------------------------------------------------------------------
                  Manipulation Functions
------------------------------------------------------------------
*/
USE salesdb; # select the database to perform operations on the tables 

-- CONCAT(string1,string2,..,string_n) : Combines multiple strings into new one
SELECT 
CONCAT(first_name,' ',last_name) AS full_name 
FROM
customers;
-- Drawback : If any customers first_name and last name is missing then it gives full name as nan

SELECT 
CONCAT(COALESCE(first_name,''),' ',COALESCE(last_name,'')) AS full_name 
FROM
customers;

-- LOWER(string): Converts string into lower case
SELECT LOWER(first_name) as firstname FROM customers; 

-- UPPER(string) : Converts string into upper case
SELECT UPPER(first_name) as firstname FROM customers;

 -- TRIM(string) : Removes trailing and leading space from the string 

 SELECT TRIM('    PRADHYUM  CHAVALA    ') as fullname ;

-- REPLACE(string1,replacable_string,replacing_string) : Replace the substring with another sub string

SELECT REPLACE('hello pradhyum ','ll','x') as replaced_string;

/*
----------------------------------------------------------
				Calculation
----------------------------------------------------------
*/

-- LEN(string) : Returns the length of the string
SELECT first_name ,LENGTH(first_name) as length FROM customers; 

/*
----------------------------------------------------------
				String Extraction
----------------------------------------------------------
*/

-- LEFT(string,n) : Extracts specific number of  characters from the start
SELECT first_name,LEFT(first_name,3) as first_three_char FROM customers;				

-- RIGHT(string,n) : Extracts specific number of  characters from the end
SELECT first_name,RIGHT(first_name,3) as last_three_char FROM customers;

-- SUBSTR(string,start_index,end_index) : Extracts substring from the string
SELECT first_name,SUBSTR(first_name,1,4) as substring FROM customers;