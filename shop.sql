-- DROP DATABASE shop;

CREATE DATABASE shop;

USE shop;

CREATE TABLE categories
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE products
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(7,1) NOT NULL,
    categoryId INT NOT NULL,
    FOREIGN KEY (categoryId) REFERENCES categories(id)
);

INSERT INTO products(name, price, categoryId)
VALUES 
	('Audi A7', 5000.00, 1),
    ('Audi A8', 5100.00, 1),
    ('BMW M5', 5300.00, 1),
	('BMW M6', 5400.00, 1),
    ('КАМАЗ 65115', 4000.00, 2),
    ('КАМАЗ 65116', 4100.00, 2);

INSERT INTO categories(name)
VALUES ('Категория В'), ('Категория С');

DELETE FROM products
WHERE price >= 100;

UPDATE products
SET name = 'BMW M8', price = 5500.00
WHERE id = 4;    