-- LeetCode: Combine Two Tables
-- Level: Easy

SELECT firstName, lastName, city, state
FROM person
left join address
on person.personId = address.personId

-- Explanation:
-- Use LEFT JOIN to keep all records from Person
-- If no matching Address, city and state will be NULL

-- Concept:
-- - LEFT JOIN
