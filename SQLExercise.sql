-- find all products
SELECT * FROM bestbuy.products;

-- find all products that cost $1400
SELECT * FROM products
 WHERE price = 1400;
 
-- find all products that cost $11.99 or $13.99
select * from products 
where price = 11.99 or price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
Select * FROM products
WHERE NOT price = 11.99;

-- find all products and sort them by price from greatest to least
select * from products
ORDER BY price DESC;

-- find all employees who don't have a middle initial
SELECT * FROM employees
WHERE MiddleInitial is null;

-- find distinct product prices
SELECT distinct (price) from products;

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees
WHERE FirstName LIKE 'j%';

-- find all Macbooks
select * from products
Where Name Like "%Macbook%";

-- find all products that are on sale
select * from products
Where onsale =1;
 
-- find the average price of all products
select AVG(price) from products;

-- find all Geek Squad employees who don't have a middle initial
select * from employees
where Title like '%Greek Squad%' AND MiddleInitial is null;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from products
where stocklevel between 500 and 1200
Order by price asc;
