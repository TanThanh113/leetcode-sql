-- Leetcode: Product Price at a Given Date
-- Level: medium

WITH rnk_new_price AS (
    SELECT product_id, new_price
            ,ROW_NUMBER() OVER(PARTITION BY product_id ORDER BY change_date DESC) AS rnk
    FROM Products 
    WHERE change_date <= '2019-08-16'
),
All_product_id AS (
    SELECT DISTINCT product_id
    FROM Products
)
SELECT a.product_id, COALESCE(r.new_price, 10) AS price
FROM All_product_id AS a
LEFT JOIN rnk_new_price AS r ON a.product_id = r.product_id AND r.rnk = 1

/*
Explanation:
 Step 1: Create Window function. Inside, use ROW_NUMBER to number columns 
        from top to bottom, and use PARTITION BY and ORDER BY to group columns
        with the same product_id. The columns will be sorted from highest to 
        lowest based on change_date(set as rnk).

 Step 2: Use WHERE to filter for years smaller than the problem statement.

 Step 3: Create a temporary table and use DISTINCT to filter for unique values.

 Step 4: Use LEFT JOIN to merge the two temporary tables, with matching 
        product_id and the additional condition that rnk = 1.
 
 Step 5: Use COALESCE to remove NULL values ​​and replace them with 10.

Concepts:
 - Window function
 - PARTITION, DISTINCT, COALESCE
 - LEFT JOIN
*/
