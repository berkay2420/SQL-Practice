## They're only visible to session they created in 

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(250)
);

INSERT INTO temp_table (first_name, last_name, favorite_movie)
VALUES ('Berkay', 'Aydın', 'Oldboy');

SELECT *
FROM temp_table;

SELECT *
FROM employee_salary;


CREATE TEMPORARY TABLE salary_over_50K
SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM salary_over_50K;
