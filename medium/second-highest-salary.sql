-- LeetCode: Second Highest Salary
-- Level: Medium

SELECT MAX(salary) as SecondHighestSalary
FROM employee
WHERE salary < (SELECT MAX(salary) FROM employee)

-- Explanation:
-- Step 1: Find the highest salary
-- Step 2: Filter all salaries less than the highest
-- Step 3: Get the maximum of remaining salaries (second highest)

-- Notes:
-- If no second highest salary exists, the result will be NULL

-- Concepts:
-- - Subquery
-- - MAX()
-- - Filtering with WHERE
