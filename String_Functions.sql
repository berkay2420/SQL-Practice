SELECT length('BLUE');

SELECT first_name, length(first_name) 
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');
SELECT lower('sky');

##Trim is for removing whitespaces 
SELECT trim('       skyrockets  ');
#ltrim & rtrim

SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics;
#First 4 characters from left 
#Reverse is RIGHT (starts from end)

SELECT first_name, SUBSTRING(first_name, 3, 2), 
birth_date, substring(birth_date, 6, 2) as 'Birth Months'
FROM employee_demographics;

select first_name, replace(first_name, 'a', 'z') as 'a replaced with z'
from employee_demographics;

select locate('x', 'alexander');

select first_name, locate('An', first_name)
from employee_demographics;


select first_name, last_name,
CONCAT(first_name,' ' ,last_name) as 'full name'
from employee_demographics;

