-- Leet code: Capital Gain Loss
-- Level: medium

SELECT stock_name,
        SUM(CASE 
                WHEN operation = 'Buy' THEN -price
                ELSE price
            END) AS capital_gain_loss
FROM Stocks
GROUP BY stock_name
ORDER BY stock_name

/*
Explanation:
 Step 1: Use GROUP BY to group rows based on the stock_name condition.

 Step 2: Use ORDER BY to sort by stock_name.

 Step 3: Use CASE WHEN to calculate the price. If the condition 'operation = 'Buy' is met, 
        change the price sign; otherwise, keep it as is. Use SUM to calculate the total price.

Concepts: 
 - GROUP BY
 - CASE WHEN
*/
