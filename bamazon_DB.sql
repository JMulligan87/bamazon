DROP DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
	item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    price DECIMAL(10,4) NOT NULL,
    stock_quantity INT NOT NULL
);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUE ("Mustard", "Groceries", 2.99, 13);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUE ("Lanyard", "Accessories", 1.93, 52);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUE ("Kayak", "Sports and Outdoors", 299, 32);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUE ("Oven Mitt", "Kitchen", 11.98, 24);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUE ("Water Bottle", "Sports and Outdoors", 12, 67);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUE ("Turtleneck Sweater", "Clothing", 42.97, 30);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUE ("Electric Guitar", "Instruments", 699.97, 42);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUE ("Record Player", "Music", 299.98, 22);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUE ("Popcorn Maker", "Kitchen", 89.99, 15);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUE ("Dr. Dre The Chronic 2001 Cd", "Music", 15.99, 67);


