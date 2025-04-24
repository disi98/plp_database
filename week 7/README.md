# Week 7: SQL Normalization Exercises

## Files
- `answers.sql`: Contains SQL scripts that:
  1. Split multi-valued columns into atomic rows for 1NF.
  2. Remove partial dependencies to achieve 2NF.

### Questions

1. **First Normal Form (1NF)**
   - Convert the `ProductDetail` table’s multi-valued `Products` column into atomic entries using a recursive query.

2. **Second Normal Form (2NF)**
   - Eliminate partial dependency of `CustomerName` on `OrderID` by creating two new tables: `Customers` and `OrderLineItems`.
