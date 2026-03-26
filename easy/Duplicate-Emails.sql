-- Leetcode: Duplicate Emails
-- Level: easy

SELECT email as Email
FROM Person
GROUP BY email
HAVING COUNT(id) >= 2

/*
Explanation:
 Step 1: Use GROUP BY to merge all duplicate emails.

 Step 2: Use HAVING and COUNT to find emails that are more than 2 in number.

Concepts:
 - GROUP BY
 - COUNT
*/
