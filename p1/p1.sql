CREATE SCHEMA LibraryManagement;

USE LibraryManagement;

CREATE TABLE authors (
	author_id INT AUTO_INCREMENT PRIMARY KEY,
	author_name VARCHAR(50) NOT NULL
);

CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publication_year YEAR NOT NULL,
    author_id INT,
    genre_id INT,
    CONSTRAINT fk_books_authors FOREIGN KEY (author_id) REFERENCES authors(author_id),
    CONSTRAINT fk_books_genres FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(255)
);

CREATE TABLE borrowed_books (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT,
    borrow_date DATE,
    return_date DATE,
    CONSTRAINT fk_borrowed_books_books FOREIGN KEY (book_id) REFERENCES books (book_id),
    CONSTRAINT fk_borrowed_books_users FOREIGN KEY (user_id) REFERENCES users (user_id)
);
