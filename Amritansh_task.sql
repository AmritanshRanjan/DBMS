-- creating database inventoryDB
CREATE DATABASE inventoryDB;

-- now using that database
USE inventoryDB;

-- creating table and adding specified columns
CREATE table products(
  name VARCHAR(30),
  description VARCHAR(500),
  price numeric,
  quantity int,
  category varchar(30)
);

-- inserting data into table
INSERT INTO products
(name,description,price,quantity,category)
VALUES
('Arduino','Microcontroller',700,5,'Electronics'),
('Servomotor','Microcontroller',700,12,'Electronics'),
('Television','4k UHD',90000,1,'Electronics'),
('Ball','Cricket equipment',200,100,'Sports'),
('Books','Study Material',2000,10,'Education');


-- query to retrieve all the products.
SELECT * FROM products; 

-- using where clause to get a product with quantity more than a specified number
SELECT * FROM products 
WHERE quantity>=3; 


--  using where clause to get a product with a price less that specified
SELECT * FROM products 
WHERE price<1500;

-- filtering them together using and datatype 
SELECT * FROM products
 WHERE price<1500 AND quantity>=3;

-- using update to update price of television
-- removing safe mode to make the updates
-- using set sql safe update to update the it intentionally
SET SQL_SAFE_UPDATES=0;
UPDATE products
SET price=65000
WHERE name='Television';

-- deleting a product from Products table.
DELETE FROM products
WHERE name="Servomotor";

-- final database
SELECT * FROM products;

