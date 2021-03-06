DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(32) NOT NULL,
	password VARCHAR(32) NOT NULL,
	name VARCHAR(32) NOT NULL,
	email VARCHAR(32) NOT NULL,
	surname VARCHAR(32) NOT NULL,
	address VARCHAR(128) NOT NULL,
	is_admin BOOLEAN DEFAULT FALSE,
	PRIMARY KEY (id),
	UNIQUE(username)
);

DROP TABLE IF EXISTS categories;
CREATE TABLE categories(
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(32) NOT NULL,
	description TEXT NULL,
	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS products;
CREATE TABLE products(
	id INT NOT NULL AUTO_INCREMENT,
	category_id INT NOT NULL,
	title VARCHAR(256) NOT NULL,
	image VARCHAR(256) NULL,
	description TEXT NULL,
	price DECIMAL(15, 0) NOT NULL,
	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
	id INT NOT NULL AUTO_INCREMENT,
	user_id INT NOT NULL,
	time TIMESTAMP,
	status ENUM('order', 'processing', 'archive') NOT NULL DEFAULT 'order',
	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS basket_products;
CREATE TABLE basket_products(
	id INT NOT NULL AUTO_INCREMENT,
	user_id INT NOT NULL,
	product_id INT NOT NULL,
	count INT NOT NULL DEFAULT 1,
	PRIMARY KEY (id),
	UNIQUE(user_id, product_id)
);

DROP TABLE IF EXISTS order_products;
CREATE TABLE order_products(
	id INT NOT NULL AUTO_INCREMENT,
	order_id INT NOT NULL,
	product_id INT NOT NULL,
	count INT NOT NULL DEFAULT 1,
	PRIMARY KEY (id),
	UNIQUE(order_id, product_id)
);

INSERT INTO users(username, password, email, name, surname, address, is_admin)
VALUES('root', 'root', 'root', 'root', 'root', 'root', TRUE);