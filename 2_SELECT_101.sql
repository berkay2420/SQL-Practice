SELECT *
FROM parks_and_recreation.employee_demographics;

#COMMENTS 

SELECT first_name, 
last_name, 
birth_date,
age,
(age + 10) * 10 AS new_ages
FROM parks_and_recreation.employee_demographics;


SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;


# WHERE

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;

SELECT *
FROM employee_salary
WHERE salary <= 50000
;


SELECT * 
FROM employee_demographics
WHERE gender != 'female'
;

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;


SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Tom' AND age>20) OR age > 35
;

#LIKE STATEMENT

SELECT *
FROM employee_demographics 
WHERE first_name LIKE  '%er%'
;

SELECT *
FROM employee_demographics 
WHERE first_name LIKE  'a__%'
; 


