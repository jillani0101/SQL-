CREATE DATABASE IF NOT EXISTS falty_base;
USE falty_base;

CREATE TABLE students (

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
INSERT INTO students VALUES (4, 'Fatima Noor', 21, 'Karachi', 60, 'C');



CREATE TABLE departments (

    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    location VARCHAR(100),
    budget INT
    
);

INSERT INTO departments VALUES (1, 'IT', 'Karachi', 500000);
INSERT INTO departments VALUES (2, 'HR', 'Lahore', 200000);
INSERT INTO departments VALUES (3, 'Finance', 'Islamabad', 350000);
INSERT INTO departments VALUES (4, 'Marketing', 'Karachi', 250000);


CREATE TABLE employees (

    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary INT,
    city VARCHAR(100),
    manager_id INT
    
);

INSERT INTO employees VALUES (1, 'Kamran Arif', 'IT', 75000, 'Karachi', NULL);
INSERT INTO employees VALUES (2, 'Sana Javed', 'HR', 50000, 'Lahore', 1);
INSERT INTO employees VALUES (3, 'Tariq Mehmood', 'IT', 80000, 'Islamabad', 1);
INSERT INTO employees VALUES (4, 'Hina Baig', 'Finance', 60000, 'Karachi', 1);



CREATE TABLE products (

    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    price INT,
    stock INT
    
);

INSERT INTO products VALUES (1, 'Laptop', 'Electronics', 85000, 50);
INSERT INTO products VALUES (2, 'Phone', 'Electronics', 30000, 120);
INSERT INTO products VALUES (3, 'Tablet', 'Electronics', 45000, 30);
INSERT INTO products VALUES (4, 'Headphones', 'Accessories', 8000, 200);



CREATE TABLE orders (

    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    quantity INT,
    price INT,
    order_date DATE,
    city VARCHAR(100)
    
);

INSERT INTO orders VALUES (1, 'Ali Hassan', 'Laptop', 1, 85000, '2024-01-10', 'Karachi');
INSERT INTO orders VALUES (2, 'Sara Khan', 'Phone', 2, 30000, '2024-01-15', 'Lahore');
INSERT INTO orders VALUES (3, 'Ahmed Raza', 'Tablet', 1, 45000, '2024-02-05', 'Islamabad');



CREATE TABLE emp_projects (

    proj_id INT PRIMARY KEY,
    proj_name VARCHAR(100),
    emp_id INT,
    status VARCHAR(50)
    
);

INSERT INTO emp_projects VALUES (1, 'Website Redesign', 1, 'Completed');
INSERT INTO emp_projects VALUES (2, 'Payroll System', 2, 'In Progress');
INSERT INTO emp_projects VALUES (3, 'Data Migration', 3, 'Completed');
INSERT INTO emp_projects VALUES (4, 'Budget Analysis', 4, 'Pending');



--   ORDER BY

SELECT * FROM students ORDER BY marks DESC;
SELECT * FROM employees ORDER BY salary asc;


SELECT * FROM 
students 
WHERE city = 'Karachi' 
ORDER BY marks DESC;

SELECT * FROM 
employees 
WHERE department = 'IT' 
ORDER BY salary DESC;

SELECT * FROM 
students 
WHERE marks > 70 
ORDER BY name ASC;

SELECT * FROM 
orders 
WHERE product = 'Laptop' 
ORDER BY order_date ASC;

SELECT * FROM 
employees 
WHERE salary > 60000 
ORDER BY salary DESC;


SELECT * FROM 
students 
WHERE marks < 60 
ORDER BY marks ASC;