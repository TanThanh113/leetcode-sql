-- Leetcode: Department Top Three Salaries
-- Level: hard

WITH RnkSalaryEmployee AS(
    SELECT id, name, salary, departmentId
            ,DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee
)
SELECT d.name AS "Department", e.name AS "Employee", e.salary AS Salary
FROM RnkSalaryEmployee AS e
JOIN Department AS d ON e.departmentId = d.id
WHERE rnk <= 3

/*
Explanation:
 Step 1: Create a CTE, use the Window function (DENSE_RANK()) to number the 
        highest-paid employees in each department (use PARTITION to categorize employees into groups).

 Step 2: Use JOIN to merge the Department( and Employee) tables based on a condition e.departmentId = d.id

 Step 3: Use WHERE to filter the top 3 highest-paid employees in each department.

Concepts:
 - Window function(DENSE_RANK())
 - CTE
 - PARTITION BY

*/
