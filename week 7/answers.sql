-- Question 1: Achieving 1NF (First Normal Form)
-- Split multi-valued 'Products' column into atomic rows
WITH RECURSIVE ProductSplit AS (
  SELECT
    OrderID,
    CustomerName,
    TRIM(SUBSTRING_INDEX(Products, ',', 1)) AS Product,
    -- everything after the first comma
    TRIM(SUBSTRING(Products, LENGTH(SUBSTRING_INDEX(Products, ',', 1)) + 2)) AS Rest
  FROM ProductDetail
  UNION ALL
  SELECT
    OrderID,
    CustomerName,
    TRIM(SUBSTRING_INDEX(Rest, ',', 1)) AS Product,
    TRIM(SUBSTRING(Rest, LENGTH(SUBSTRING_INDEX(Rest, ',', 1)) + 2))
  FROM ProductSplit
  WHERE Rest <> ''
)
SELECT
  OrderID,
  CustomerName,
  Product
FROM ProductSplit
ORDER BY OrderID;

-- Question 2: Achieving 2NF (Second Normal Form)
-- Remove partial dependency of CustomerName on OrderID

-- 2.1 Create Customers table (OrderID → CustomerName)
CREATE TABLE Customers AS
SELECT DISTINCT
  OrderID,
  CustomerName
FROM OrderDetails;

-- 2.2 Create OrderLineItems table (composite key → Product, Quantity)
CREATE TABLE OrderLineItems AS
SELECT
  OrderID,
  Product,
  Quantity
FROM OrderDetails;

-- (Optional) Verify new schema:
-- DESCRIBE Customers;
-- DESCRIBE OrderLineItems;