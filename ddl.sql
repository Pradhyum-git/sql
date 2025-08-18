-- DDL Commands


-- CREATE : creates a new table in selected database
CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    country VARCHAR(15)
);

-- ALTER : modifies the table definition

-- add column
ALTER TABLE customers ADD COLUMN phone_number INT;

-- drop column
ALTER TABLE customers DROP COLUMN phone_number;

-- modify column 
ALTER TABLE customers MODIFY COLUMN country VARCHAR(50);

-- Truncate : Removes all records from selected table
TRUNCATE TABLE customers;

-- DROP : DROPS the whole table from database
DROP TABLE cutomers;
