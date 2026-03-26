-- Leetcode: Top Travellers
-- Level: easy

SELECT u.name, COALESCE(SUM(r.distance), 0) AS travelled_distance
FROM Users AS u
LEFT JOIN Rides AS r ON u.id = r.user_id
GROUP BY r.user_id, u.name
ORDER BY travelled_distance DESC, u.name ASC

/*
Explanation: 
 Step 1: Use LEFT JOIN to merge the two tables by setting u.id = r.user_id.

 Step 2: Use GROUP BY to combine rows based on two columns: r.user_id and u.name.

 Step 3: Use COALESCE and SUM to find the person with the highest distance 
        (if there is no such person, fill in 0).

 Step 4: Use ORDER BY to filter by distance from largest to smallest and by letter.

Concepts: 
 - GROUP BY
 - COALESCE, SUM
*/
