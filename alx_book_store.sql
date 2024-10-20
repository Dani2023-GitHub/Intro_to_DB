CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE Books(
	book_id INT PRIMARY KEY,
	title VARCHAR(130) NOT NULL,
	author_id INT,
	price FLOAT
	public_date DATE,
	FOREIGN KEY(author_id) REFERENCES Autors(author_id)
)

CREATE TABLE Authors(
	author_id INT PRIMARY KEY,
	author_name VARCHAR(215)
)

CREATE TABLE Customers(
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT
)

CREATE TABLE Orders(
	order_id INT PRIMARY KEY,
	customer_id INT,
	order_date DATE,
	FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
)

CREATE TABLE Order_Details(
	order_detail_id INT PRIMARY KEY,
	oder_id INT FOREIGN KEY REFERENCES Orders(order_id),
	book_id INT FOREIGN KEY REFERENCES Books(book_id),
	quantity FLOAT
)
