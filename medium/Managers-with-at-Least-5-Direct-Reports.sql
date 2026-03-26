-- LeetCode: Managers with at Least 5 Direct Reports
-- Level: medium

SELECT m.name
FROM employee AS e
JOIN employee AS m ON e.managerId = m.id
GROUP BY m.id, m.name
HAVING COUNT(e.id) >= 5

/*
- Explanation:
Step 1: Create a copy of the main table, merge the two tables using JOHN 
        (since JOIN ignores NULL values, it will be faster), and match 
        the manager_id of the main table with the ID of the secondary table.

Step 2: Use GROUP BY to group rows in a secondary table.

Step 3: Use HAVING and COUNT to filter managers with more than 5 direct reports.

- Concepts: 
 - JOIN
 - GROUP BY
 - COUNT
 - HAVING
*/
