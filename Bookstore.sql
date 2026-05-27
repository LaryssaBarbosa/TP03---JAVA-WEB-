CREATE DATABASE Bookstore;

USE Bookstore;

CREATE TABLE book (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(128) NOT NULL,
    author VARCHAR(45) NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY (book_id),
    UNIQUE KEY title_UNIQUE (title)
);
show DATABASES 
USE Bookstore;

SHOW TABLES;
SELECT * FROM book;