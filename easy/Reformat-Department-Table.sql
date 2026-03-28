-- Leetcode: Reformat Department Table
-- Level: easy

SELECT id,
        SUM(CASE WHEN month = 'Jan' THEN revenue else null end) AS Jan_Revenue,
        SUM(CASE WHEN month = 'Feb' THEN revenue else null end) AS Feb_Revenue,
        SUM(CASE WHEN month = 'Mar' THEN revenue else null end) AS Mar_Revenue,
        SUM(CASE WHEN month = 'Apr' THEN revenue else null end) AS Apr_Revenue,
        SUM(CASE WHEN month = 'May' THEN revenue else null end) AS May_Revenue,
        SUM(CASE WHEN month = 'Jun' THEN revenue else null end) AS Jun_Revenue,
        SUM(CASE WHEN month = 'Jul' THEN revenue else null end) AS Jul_Revenue,
        SUM(CASE WHEN month = 'Aug' THEN revenue else null end) AS Aug_Revenue,
        SUM(CASE WHEN month = 'Sep' THEN revenue else null end) AS Sep_Revenue,
        SUM(CASE WHEN month = 'Oct' THEN revenue else null end) AS Oct_Revenue,
        SUM(CASE WHEN month = 'Nov' THEN revenue else null end) AS Nov_Revenue,
        SUM(CASE WHEN month = 'Dec' THEN revenue else null end) AS Dec_Revenue
FROM Department
GROUP BY id
ORDER BY id

/*
Explanation:
 Step 1: Use GROUP BY to group rows based on an ID condition.

 Step 2: Use ORDER BY to rearrange by ID.

 Step 3: Use the SUM and CASE WHEN functions to calculate the sum of the months
        ; if none exists, return NULL.

Concepts:
 - GROUP BY
 - CASE WHEN
*/
