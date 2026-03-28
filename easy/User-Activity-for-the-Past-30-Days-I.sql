-- Leetcode: User Activity for the Past 30 Days I
-- Level: easy

SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date

/*
Explanation:
 Step 1: Use WHERE to filter by the 30 days ending 2019-07-27.

 Step 2: Use GROUP BY to group by activity_date.

 Step 3: In the SELECT function, use COUNT and DISTINCT to count the unique users active on the same day.

Concepts:
 - GROUP BY
 - COUNT, DISTINCT
*/
