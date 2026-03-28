-- Leetcode: Group Sold Products By The Date
-- Level: easy

SELECT sell_date,
        COUNT(DISTINCT product) AS num_sold,
        STRING_AGG(DISTINCT product, ',' ORDER BY product ASC) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date

/*
Explanation:
 Step 1: Use GROUP BY to combine rows based on the conditions of the sell_date column.

 Step 2: Use ORDER BY to sort by sell_date.

 Step 3: Use COUNT and DISTINCT to count unique products.

 Step 4: Use SRING_AGG to merge unique product columns, and use ORDER BY to sort alphabetically.

Concepts:
 - GROUP BY
 - COUNT
 - STRING_AGG
*/
