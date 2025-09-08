# Question 1: Write an SQL query to get the firstName, lastName, email, and officeCode of all employees.  
Use an INNER JOIN to combine the employees table with the offices table using the officeCode column.
-- Get employee details with office code
SELECT 
e.firstName, 
e.lastName, 
e.email, 
o.officeCode
FROM 
    employees e
INNER JOIN 
    offices o ON e.officeCode = o.officeCode;

# Question 2: Write an SQL query to get the productName, productVendor, and productLine from the products table.  
Use a LEFT JOIN to combine the products table with the productlines table using the productLine column.
-- Get product details with product line
SELECT 
    p.productName, 
    p.productVendor, 
    pl.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl ON p.productLine = pl.productLine;

# Question 3: Write an SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.  
Use a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column.
-- Get order details with customer number
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    c.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o ON o.customerNumber = c.customerNumber
LIMIT 10;

-- These queries provide the required data from the respective tables.