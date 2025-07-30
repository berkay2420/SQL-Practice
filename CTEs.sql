WITH CTE_Example AS
(
SELECT gender, AVG(salary) avg_Sal, MAX(salary) max, MIN(salary) min, COUNT(salary) salary_count
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example 
;

##Same query with subquery
SELECT AVG(avg)
FROM (SELECT gender, AVG(salary) avg, MAX(salary) max, MIN(salary) min, COUNT(salary) salary_count
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) example_subquery
;

WITH CTE_Example2 AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics
WHERE birth_date > '1985-01-01'
),
CTE_Example3 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT * 
FROM CTE_Example2
JOIN CTE_Example3
	ON CTE_Example2.employee_id = CTE_Example3.employee_id
;

##Giving Column Names From CTE
WITH CTE_Example (gender, avg_sal,  max,  min,  salary_count) AS
(
SELECT gender, AVG(salary) avg, MAX(salary) max, MIN(salary) min, COUNT(salary) salary_count
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example 
;