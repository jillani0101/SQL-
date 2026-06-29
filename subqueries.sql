CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;


DROP TABLE IF EXISTS emp_projects;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS students;


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
INSERT INTO students VALUES (5, 'Usman Ali', 23, 'Peshawar', 55, 'C');
INSERT INTO students VALUES (6, 'Ayesha Malik', 20, 'Lahore', 88, 'A');
INSERT INTO students VALUES (7, 'Bilal Shah', 24, 'Islamabad', 45, 'D');
INSERT INTO students VALUES (8, 'Zara Ahmed', 22, 'Karachi', 78, 'B');
INSERT INTO students VALUES (9, 'Hamza Tariq', 21, 'Lahore', 92, 'A');
INSERT INTO students VALUES (10, 'Nadia Iqbal', 19, 'Peshawar', 63, 'C');


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
INSERT INTO departments VALUES (5, 'Operations', 'Peshawar', 180000);


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
INSERT INTO employees VALUES (5, 'Rizwan Ahmed', 'IT', 70000, 'Lahore', 3);
INSERT INTO employees VALUES (6, 'Maria Khan', 'HR', 48000, 'Islamabad', 2);
INSERT INTO employees VALUES (7, 'Junaid Alam', 'Finance', 65000, 'Karachi', 4);
INSERT INTO employees VALUES (8, 'Sobia Naz', 'Marketing', 55000, 'Lahore', NULL);
INSERT INTO employees VALUES (9, 'Farhan Qureshi', 'Marketing', 52000, 'Peshawar', 8);
INSERT INTO employees VALUES (10, 'Lubna Akhtar', 'Finance', 62000, 'Islamabad', 4);


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
INSERT INTO products VALUES (5, 'Monitor', 'Electronics', 20000, 75);
INSERT INTO products VALUES (6, 'Keyboard', 'Accessories', 5000, 300);
INSERT INTO products VALUES (7, 'Mouse', 'Accessories', 2000, 400);
INSERT INTO products VALUES (8, 'Printer', 'Electronics', 35000, 40);
INSERT INTO products VALUES (9, 'Webcam', 'Accessories', 6000, 150);
INSERT INTO products VALUES (10, 'Speaker', 'Accessories', 12000, 90);


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
INSERT INTO orders VALUES (4, 'Fatima Noor', 'Laptop', 1, 85000, '2024-02-18', 'Karachi');
INSERT INTO orders VALUES (5, 'Usman Ali', 'Headphones', 3, 8000, '2024-03-01', 'Peshawar');
INSERT INTO orders VALUES (6, 'Ayesha Malik', 'Phone', 1, 30000, '2024-03-12', 'Lahore');
INSERT INTO orders VALUES (7, 'Bilal Shah', 'Monitor', 2, 20000, '2024-04-07', 'Islamabad');
INSERT INTO orders VALUES (8, 'Zara Ahmed', 'Keyboard', 4, 5000, '2024-04-20', 'Karachi');
INSERT INTO orders VALUES (9, 'Hamza Tariq', 'Laptop', 2, 85000, '2024-05-05', 'Lahore');
INSERT INTO orders VALUES (10, 'Nadia Iqbal', 'Mouse', 5, 2000, '2024-05-18', 'Peshawar');


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
INSERT INTO emp_projects VALUES (5, 'App Development', 5, 'In Progress');
INSERT INTO emp_projects VALUES (6, 'SEO Campaign', 8, 'Completed');
INSERT INTO emp_projects VALUES (7, 'Cloud Setup', 3, 'In Progress');
INSERT INTO emp_projects VALUES (8, 'HR Portal', 2, 'Pending');



--   SUBQUERY


 select * from students 
 where marks > (select avg(marks) from students);

select * from 
employees 
where salary > (select avg(salary) from employees);

select * from 
students 
where marks = (select max(marks) from students);

select * from 
students 
WHERE city = (select city from students where student_id = 1);

select * from employees 
where salary > (select salary from employees where emp_id = 5);

select * from students 
where city in (select distinct city from employees);


update students 
set grade = 'A+' 
where marks = (select max_marks from (select MAX(marks) as max_marks from students) as m);

delete from emp_projects 
where emp_id in (select emp_id from employees where department = 'Operations');