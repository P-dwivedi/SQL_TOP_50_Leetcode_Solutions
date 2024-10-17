# Write your MySQL query statement below
SELECT a.user_id, IFNULL(ROUND(SUM(action='confirmed')/COUNT(*),2),0.00) AS confirmation_rate
FROM Signups as a
LEFT JOIN Confirmations as b
ON a.user_id = b.user_id
GROUP BY user_id;