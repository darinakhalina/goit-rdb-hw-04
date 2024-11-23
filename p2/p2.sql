USE LibraryManagement;

INSERT INTO authors (author_name) VALUES 
('Taras Shevchenko'),
('Lesya Ukrainka'),
('Ivan Franko');

INSERT INTO genres (genre_name) VALUES 
('Poetry'),
('Prose'),
('Drama');

INSERT INTO books (title, publication_year, author_id, genre_id) VALUES 
('Kobzar', 1901, 1, 1), 
('Forest Song', 1911, 2, 3), 
('Zahar Berkut', 1903, 3, 2);

INSERT INTO users (username, email) VALUES 
('Ivan Petrenko', 'ivan.petrenko@example.com'),
('Olena Honchar', 'olena.honchar@example.com'),
('Mykola Koval', 'mykola.koval@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES 
(1, 1, '2024-10-20', '2024-11-01'),
(2, 2, '2024-11-01', '2024-11-15'),
(3, 3, '2024-11-05', '2024-11-20');
