-- LeetCode: Employees Earning More Than Their Managers
-- Level: easy

SELECT e.name as Employee
FROM employee AS e
JOIN employee AS m ON e.managerId = m.id
WHERE e.salary > m.salary

/*
- Explanation:
Step 1: Name the main table 'e', ​
        ​then create a copy of the original and name it 'm'.

Step 2: Use JOIN to combine the ID of table m with the managerId of table e.

Step 3: Use WHERE to filter (employees earn more than their managers).

- Concepts: 
 - JOIN
 - WHERE
*/
