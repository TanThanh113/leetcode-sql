-- Leetcode: Department Highest Salary
-- Level: medium

WITH RankEmployee AS(
    SELECT  d.name AS Department, e.name AS Employee, salary AS Salary,
            RANK() OVER(PARTITION BY d.id ORDER BY e.salary DESC) as rnk
    FROM Employee AS e
    JOIN Department AS d ON d.id = e.departmentId
)
SELECT Department, Employee, Salary
FROM RankEmployee
WHERE rnk = 1

/*
Explanation:
 Step 1: Create a Window function named RankEmployee.
 
 Step 2: Use JOIN to merge the Department table into the Employee table.

 Step 3: The SELECT function in Window functions uses PARTITION to sort 
        the table by Department ID, uses RANK() OVER and ORDER BY to number 
        the employees with the highest salaries in each department, and finally sets that column as rnk.

 Step 4: Use WHERE to filter out those whose rnk = 1

 Concepts:
  - Window Function
  - RANK() OVER()
  - PARTITION BY
*/
