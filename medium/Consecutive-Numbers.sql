-- Leetcode: Consecutive Numbers
-- Level: medium

WITH leastThreeTimes AS (
    SELECT  id, num 
            ,LAG(num) OVER(ORDER BY id) AS prev_num
            ,LEAD(num) OVER(ORDER BY id) AS next_num
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM leastThreeTimes
WHERE prev_num = num AND num = next_num

/*
Explanation:
 Step 1: Create Window function. In this process, LAG() and LEAD() are 
         used to create columns for the preceding and succeeding numbers.

 Step 2: Use WHERE to filter numbers that appear at least 3 times.

 Step 3: Use DISTINCT to get the unique value.

 Concepts:
  - Window function(LAG(), LEAD())
  - CTE
  - DISTINCT
*/
