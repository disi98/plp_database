-- Query 1: Retrieve checkNumber, paymentDate, and amount from payments table
SELECT checkNumber, paymentDate, amount
FROM payments;

-- Query 2: Retrieve orderDate, requiredDate, and status of 'In Process' orders sorted by orderDate DESC
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- Query 3: Display firstName, lastName, and email of 'Sales Rep' employees ordered by employeeNumber DESC
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- Query 4: Retrieve all columns and records from offices table
SELECT *
FROM offices;

-- Query 5: Fetch productName and quantityInStock from products table sorted by buyPrice ASC and limit to 5 records
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;