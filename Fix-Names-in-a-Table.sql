-- Leetcode: Fix Names in a Table
-- Level: easy

SELECT user_id, CONCAT(UPPER(SUBSTR(name, 1, 1)), LOWER(SUBSTR(name, 2))) AS "name"
FROM Users
ORDER BY user_id

/*
Explanation: 
 Step 1: Use the SUBSTR function to capitalize the first letter of UPPER 
        and lowercase the remaining letters, then use CONCAT to combine those two.

 Step 2: Use Where to filter by user_id

Concepts:
 - CONCAT, SUBSTR
 - LOWER, UPPER
*/
