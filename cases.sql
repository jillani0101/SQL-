
-- give grade label based on marks

select name, marks,

case
    when marks >= 90 then 'Excellent'
    when marks >= 80 then 'Very Good'
    when marks >= 70 then 'Good'
    when marks >= 60 then 'Average'
    else 'Poor'
end as performance

from students;


-- check if employee salary is high medium or low

select name, salary,
case
    when salary >= 80000 then 'High'
    when salary >= 60000 then 'Medium'
    else 'Low'
end as salary_range
from employees;


-- label product price as expensive moderate or cheap

select product_name, price,
case
    when price >= 50000 then 'Expensive'
    when price >= 15000 then 'Moderate'
    else 'Cheap'
end as price_label
from products;


-- check stock level of products

select product_name, stock,
case
    when stock >= 300 then 'High Stock'
    when stock >= 100 then 'Medium Stock'
    else 'Low Stock'
end as stock_status
from products;


-- label project status with a friendly message

select proj_name,
case status
    when 'Completed' then 'This project is done'
    when 'In Progress' then 'This project is running'
    when 'Pending' then 'This project has not started'
    else 'Unknown'
end as status_message
from emp_projects;


-- give students a pass or fail label

select name, marks,
case
    when marks >= 50 then 'Pass'
    else 'Fail'
end as result
from students;


-- label employees by department type

select name, department,
case
    when department in ('IT', 'Finance') then 'Technical'
    when department = 'HR' then 'Human Resource'
    when department = 'Marketing' then 'Sales Side'
    else 'Other'
end as dept_type
from employees;


-- check if order quantity is small medium or bulk

select customer_name, product, quantity,
case
    when quantity >= 4 then 'Bulk Order'
    when quantity >= 2 then 'Medium Order'
    else 'Small Order'
end as order_size
from orders;


-- label each city as north south or central pakistan

select name, city,
case city
    when 'Peshawar' then 'North Pakistan'
    when 'Islamabad' then 'Central Pakistan'
    when 'Lahore' then 'Central Pakistan'
    when 'Karachi' then 'South Pakistan'
    else 'Unknown Region'
end as region
from students;


-- case inside order by to sort employees by department priority

select name, department, salary
from employees
order by
case department
    when 'IT' then 1
    when 'Finance' then 2
    when 'HR' then 3
    when 'Marketing' then 4
    else 5
end;



