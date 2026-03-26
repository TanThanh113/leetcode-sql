-- Leetcode: 
-- Level: easy

SELECT name AS "Customers"
FROM Customers
WHERE id NOT IN(
    SELECT customerId FROM Orders
)

/*
Explanation:
 Step 1: Ues subquerries to select customerId

 Step 2: Use the NOT IN function to exclude the IDs of customerId.

 Concepts:
  - Subquery
  - NOT IN
*/
