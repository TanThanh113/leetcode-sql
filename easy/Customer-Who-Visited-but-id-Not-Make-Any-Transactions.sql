-- LeetCode: Customer Who Visited but Did Not Make Any Transactions
-- Level: easy

SELECT v.customer_id, COUNT(v.visit_id) as count_no_trans
FROM visits AS v
LEFT JOIN transactions AS t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id

 /*
- Explanation:
Step 1: We use LEFT JOIN to merge the transactions table into the visits table.

Step 2: Use WHERE to filter out non-NULL values ​
        ​(when merging tables, visits_id without transaction_id will have a NULL value).

Step 3: Use GROUP BY to combine rows in the customer_id column, 
        and use COUNT to count the remaining values ​​after filtering.

- Concepts: 
 - LEFT JOIN
 - GROUP BY
 - COUNT
*/
