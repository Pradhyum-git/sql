-- Drop the database if sales data exists in data base
DROP DATABASE IF EXISTS salesdb;

-- Create the sales database 
CREATE DATABASE salesdb;

-- use the sales database to perfrom crud operations on it
USE salesdb;

-- create the customers table
CREATE TABLE customers(
	customer_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	country VARCHAR(50),
	score INT
);

-- Insert into customers table
INSERT INTO customers (`customer_id`,`first_name`,`last_name`,`country`,`score`) VALUES
  (1, 'Jossef', 'Goldberg', 'Germany', 350),
  (2, 'Kevin', 'Brown', 'USA', 900),
  (3, 'Mary', NULL, 'USA', 750),
  (4, 'Mark', 'Schwarz', 'Germany', 500),
  (5, 'Anna', 'Adams', 'USA', NULL);
  
-- create the products table
CREATE TABLE products
(
	product_id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    price INT
);

-- Insert into products table 
INSERT INTO `products` (`product_id`,`product`,`category`,`price`) VALUES
  (101, 'Bottle', 'Accessories', 10),
  (102, 'Tire', 'Accessories', 15),
  (103, 'Socks', 'Clothing', 20),
  (104, 'Caps', 'Clothing', 25),
  (105, 'Gloves', 'Clothing', 30);
  
-- create employee table
CREATE TABLE employees
(	employee_id INT PRIMARY KEY,
	first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(25),
    birth_date DATE,
    gender VARCHAR(8),
    salary INT,
    manager_id INT,
    INDEX (manager_id),
    CONSTRAINT fk_employee_manager
    FOREIGN KEY(manager_id)  REFERENCES employees(employee_id)
);

-- insert into employees
INSERT INTO `employees` (`employee_id`,`first_name`,`last_name`,`department`,`birth_date`,`gender`,`salary`,`manager_id`) VALUES
  (1, 'Frank', 'Lee', 'Marketing', '1988-12-05', 'M', 55000, NULL),
  (2, 'Kevin', 'Brown', 'Marketing', '1972-11-25', 'M', 65000, 1),
  (3, 'Mary', NULL, 'Sales', '1986-01-05', 'F', 75000, 1),
  (4, 'Michael', 'Ray', 'Sales', '1977-02-10', 'M', 90000, 2),
  (5, 'Carol', 'Baker', 'Sales', '1982-02-11', 'F', 55000, 3);

-- create the orders table
CREATE TABLE orders
(
	order_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    salesPerson_id INT,
    orderdate DATE,
    shipdate DATE,
    orderstatus VARCHAR(50),
    ship_address VARCHAR(255),
    bill_address VARCHAR(255),
    quantity INT,
    sales INT,
    creationtime TIMESTAMP,
    CONSTRAINT fk_orders_product
    FOREIGN KEY(product_id) REFERENCES products(product_id),
    CONSTRAINT fk_orders_customer
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_orders_saleperson 
    FOREIGN KEY(salesPerson_id) REFERENCES employees(employee_id)
);

-- insert into orders table
INSERT INTO `orders` VALUES
  (1, 101, 2, 3, '2025-01-01', '2025-01-05', 'Delivered', '9833 Mt. Dias Blv.', '1226 Shoe St.', 1, 10, '2025-01-01 12:34:56'),
  (2, 102, 3, 3, '2025-01-05', '2025-01-10', 'Shipped', '250 Race Court', NULL, 1, 15, '2025-01-05 23:22:04'),
  (3, 101, 1, 5, '2025-01-10', '2025-01-25', 'Delivered', '8157 W. Book', '8157 W. Book', 2, 20, '2025-01-10 18:24:08'),
  (4, 105, 1, 3, '2025-01-20', '2025-01-25', 'Shipped', '5724 Victory Lane', '', 2, 60, '2025-01-20 05:50:33'),
  (5, 104, 2, 5, '2025-02-01', '2025-02-05', 'Delivered', NULL, NULL, 1, 25, '2025-02-01 14:02:41'),
  (6, 104, 3, 5, '2025-02-05', '2025-02-10', 'Delivered', '1792 Belmont Rd.', NULL, 2, 50, '2025-02-06 15:34:57'),
  (7, 102, 1, 1, '2025-02-15', '2025-02-27', 'Delivered', '136 Balboa Court', '', 2, 30, '2025-02-16 06:22:01'),
  (8, 101, 4, 3, '2025-02-18', '2025-02-27', 'Shipped', '2947 Vine Lane', '4311 Clay Rd', 3, 90, '2025-02-18 10:45:22'),
  (9, 101, 2, 3, '2025-03-10', '2025-03-15', 'Shipped', '3768 Door Way', '', 2, 20, '2025-03-10 12:59:04'),
  (10, 102, 3, 5, '2025-03-15', '2025-03-20', 'Shipped', NULL, NULL, 0, 60, '2025-03-16 23:25:15');


