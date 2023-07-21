/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select P.name as ProductName, C.name as CategoryName
 from products as P 
 Inner Join categories as C 
 on C.categoryID = P.categoryID
 where C.name = "computers";
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select products.name,
 products.price, reviews.rating
from products inner join reviews 
on reviews.productID = products.ProductID
where reviews.rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select employees.FirstName, employees.LastName,
Sum(sales.Quantity) as total
from sales inner join employees 
on employees.employeeID = sales.EmployeeID
group by employees.employeeID order by total desc
limit 4;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
select departments.name as "Department Name", categories.name as 'Category Name'
from departments inner join categories on 
categories.DepartmentID = departments.DepartmentID
where categories.name = 'Appliances' or categories.name = 'Games';


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select products.Name, sum(sales.Quantity) as 'Total Sold' , 
sum(sales.PricePerUnit * sales.Quantity) as 'Total Price'
from products  inner join sales 
 on products.ProductID = sales.ProductID
 where products.ProductID = 97; 


/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select products.Name, reviews.Reviewer, reviews.Rating, reviews.Comment
from products inner join
reviews on products.ProductID = reviews.ProductID
where products.Name like '%visio%';

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

select e.EmployeeID, e.firstName, e.lastName, p.name,
sum(s.quantity) as 'total sold'
from sales as s inner join
employees as e on e.EmployeeID = s.EmployeeID
inner join products as p on p.ProductID = s.ProductID
group by e.EmployeeID, p.ProductID
order by e.FirstName;

