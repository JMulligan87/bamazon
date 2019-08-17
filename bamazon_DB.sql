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