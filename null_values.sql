CREATE DATABASE IF NOT EXISTS faltubase_2;
USE faltubase_2;


CREATE TABLE students(
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100),
    marks INT,
    grade VARCHAR(5)
    
);

INSERT INTO students VALUES (1, 'Ali Hassan', 20, 'Karachi', 85, 'A');
INSERT INTO students VALUES (2, 'Sara Khan', 22, 'Lahore', 72, 'B');
INSERT INTO students VALUES (3, 'Ahmed Raza', 19, 'Islamabad', 91, 'A');


CREATE TABLE departments(

    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    location VARCHAR(100),
    budget INT
    
);

INSERT INTO departments VALUES (1, 'IT', 'Karachi', 500000);
INSERT INTO departments VALUES (2, 'HR', 'Lahore', 200000);

INSERT INTO students VALUES (11, 'Waqar Hussain', 22, NULL, 70, NULL);


SELECT * FROM students WHERE city IS NULL;
SELECT * FROM students WHERE city IS NOT NULL;

