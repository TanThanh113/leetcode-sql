-- LeetCode: Nth Highest Salary
-- Level: Medium

CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  RETURN QUERY
    -- Write your PostgreSQL query statement below.
    SELECT (
        SELECT DISTINCT tmp.salary
        FROM (
            SELECT e.salary, DENSE_RANK() OVER (ORDER BY e.salary DESC) as rnk
            FROM employee e
        ) AS tmp
        WHERE tmp.rnk = N
    );
END;
$$ LANGUAGE plpgsql;

/* 
Explanation:
 Step 1: Use DENSE_RANK() to assign a rank to each salary in descending order.
         Salaries with the same value will have the same rank.

 Step 2: Wrap the result in a subquery so we can filter by rank.

 Step 3: Select the salary where rank = N to get the N-th highest salary.

 Concepts:
 - Subquerry
 - Window function
 - DISTINCT
 *\
