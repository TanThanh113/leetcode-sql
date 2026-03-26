-- Leetcode: Sales Person
-- Level: easy

SELECT s.name
FROM SalesPerson AS s
WHERE sales_id NOT IN(
    SELECT o.sales_id
    FROM Orders AS o
    JOIN Company AS c ON c.com_id = o.com_id
    WHERE c.name = 'RED'
)

/*
Explannation:
Step 1: Use JOIN to merge the company table (denoted as c) 
        into the orders table (denoted as o) by: c.com_id = o.com_id.

Step 2: Use WHERE to filter out salespeople who work for the RED company.

Step 3: Put everything into the WHERE field and use NOT IN 
        to find the employees who meet the requirements.

Concepts:
 - JOIN
 - NOT IN
*/
