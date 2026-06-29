CREATE DATABASE IF NOT EXISTS faltubase;
USE faltubase;


CREATE TABLE students(

    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100),
    marks INT,
    grade VARCHAR(5)
    
);
CREATE TABLE departments(

    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    location VARCHAR(100),
    budget INT
    
);

CREATE TABLE employees(

    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary INT,
    city VARCHAR(100),
    manager_id INT
    
);

CREATE TABLE products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    price INT,
    stock INT
    
);

CREATE TABLE orders(

    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    quantity INT,
    price INT,
    order_date DATE,
    city VARCHAR(100)
);


CREATE TABLE emp_projects (

    proj_id INT PRIMARY KEY,
    proj_name VARCHAR(100),
    emp_id INT,
    status VARCHAR(50)
    
);


INSERT INTO students VALUES (1, 'Ali Hassan', 20, 'Karachi', 85, 'A');
INSERT INTO students VALUES (2, 'Sara Khan', 22, 'Lahore', 72, 'B');
INSERT INTO students VALUES (3, 'Ahmed Raza', 19, 'Islamabad', 91, 'A');


INSERT INTO departments VALUES (1, 'IT', 'Karachi', 500000);
INSERT INTO departments VALUES (2, 'HR', 'Lahore', 200000);
INSERT INTO departments VALUES (3, 'Finance', 'Islamabad', 350000);



INSERT INTO employees VALUES (1, 'Kamran Arif', 'IT', 75000, 'Karachi', NULL);
INSERT INTO employees VALUES (2, 'Sana Javed', 'HR', 50000, 'Lahore', 1);
INSERT INTO employees VALUES (3, 'Tariq Mehmood', 'IT', 80000, 'Islamabad', 1);
INSERT INTO employees VALUES (4, 'Hina Baig', 'Finance', 60000, 'Karachi', 1);




INSERT INTO products VALUES (1, 'Laptop', 'Electronics', 85000, 50);
INSERT INTO products VALUES (2, 'Phone', 'Electronics', 30000, 120);
INSERT INTO products VALUES (3, 'Tablet', 'Electronics', 45000, 30);
INSERT INTO products VALUES (4, 'Headphones', 'Accessories', 8000, 200);


INSERT INTO orders VALUES (1, 'Ali Hassan', 'Laptop', 1, 85000, '2024-01-10', 'Karachi');
INSERT INTO orders VALUES (2, 'Sara Khan', 'Phone', 2, 30000, '2024-01-15', 'Lahore');
INSERT INTO orders VALUES (3, 'Ahmed Raza', 'Tablet', 1, 45000, '2024-02-05', 'Islamabad');
INSERT INTO orders VALUES (4, 'Fatima Noor', 'Laptop', 1, 85000, '2024-02-18', 'Karachi');



INSERT INTO emp_projects VALUES (1, 'Website Redesign', 1, 'Completed');
INSERT INTO emp_projects VALUES (2, 'Payroll System', 2, 'In Progress');
INSERT INTO emp_projects VALUES (3, 'Data Migration', 3, 'Completed');
INSERT INTO emp_projects VALUES (4, 'Budget Analysis', 4, 'Pending');


-- operators

SELECT * FROM 
students 
WHERE city = 'Karachi' AND marks > 80;

SELECT * FROM 
employees 
WHERE department = 'IT' AND salary > 70000;

SELECT * FROM
students 
WHERE marks >= 60 AND marks <= 90;


SELECT * FROM
students
WHERE city = 'Karachi' OR city = 'Lahore';

SELECT * FROM 
employees 
WHERE department = 'IT' OR department = 'HR';




SELECT * FROM 
students 
WHERE NOT city = 'Karachi';



SELECT * FROM 
students 
WHERE (city = 'Karachi' OR city = 'Lahore') AND marks > 75;

SELECT * FROM 
employees 
WHERE (department = 'IT' OR department = 'Finance') AND NOT city = 'Karachi';
