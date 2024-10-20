# Write your MySQL query statement below
SELECT a.machine_id, ROUND(AVG(b.timestamp - a.timestamp), 3) AS processing_time
FROM Activity as a
JOIN Activity as b
ON a.process_id = b.process_id
AND a.machine_id = b.machine_id
AND a.timestamp < b.timestamp
GROUP BY a.machine_id;