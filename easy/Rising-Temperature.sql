-- Leetcode: Rising Temperature
-- Level: easy

SELECT w.id AS ID
FROM Weather AS w
JOIN Weather AS w_y ON w.recordDate - w_y.recordDate = 1
WHERE w.temperature > w_y.temperature 

/*
Explanation: 
 Step 1: Use JOIN to join the main body of the table together 
        (describe them as w and w_y), with ON being w.recordDate - w_y.recordDate

Step 2: Use WHERE to filter based on the condition that the 
        temperature on the following day is higher than the previous day.

Concepts:
 - SELF JOIN
*/
