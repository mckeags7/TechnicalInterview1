DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS readings;
DROP DATABASE IF EXISTS studentbooks;
CREATE DATABASE studentbooks;
USE studentbooks;

CREATE TABLE students (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE books AS (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    CONSTRAINT fk_books FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE SET NULL
);

CREATE TABLE readings AS (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    duration TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    book_id INTEGER,
    student_id INTEGER,
    CONSTRAINT fk_readings FOREIGN KEY (reading_id) REFERENCES readings(id) ON DELETE SET NULL,
    CONSTRAINT fk_students FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE SET NULL
);

