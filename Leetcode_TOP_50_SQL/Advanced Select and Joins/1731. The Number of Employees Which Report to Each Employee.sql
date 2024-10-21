# Write your MySQL query statement below
SELECT manager.employee_id, manager.name, COUNT(emp.employee_id) as reports_count,
ROUND(AVG(emp.age)) as average_age
FROM Employees as emp
JOIN Employees as manager
ON emp.reports_to = manager.employee_id
GROUP BY employee_id
ORDER BY employee_id;