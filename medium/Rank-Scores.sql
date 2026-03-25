-- LeetCode: Rank Scores
-- Level: Medium

SELECT score
    , DENSE_RANK() OVER (ORDER BY score DESC) AS "rank"
FROM scores

/*
Explanation:
Step 1: Use DENSE_RANK() to assign a rank to each score in descending order.
        Scores with the same value will have the same rank, 
        and there will be no gaps between rank values.

Step 2: Select the score and the calculated rank. 
        Ensure the rank column is aliased as "rank" (in quotes) 
        because it is a reserved keyword in PostgreSQL.

 Concepts:
 - Window function
 - Column Aliasing / Reserved keywords
*\
