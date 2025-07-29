select * 
from employee_demographics
where employee_id in   ##operator (operand)
				(select employee_id
					from employee_salary
                    where dept_id = 1
);
## finding the employees with dept_id 1 in subquery and 
## showing employees with those emp_ids in first table


select first_name, salary, 
(select avg(salary)
from employee_salary)
from employee_salary
group by first_name, salary;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;
## Better table below

select gender, avg(`max(age)`)
from
(select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender) as agg_table
group by gender
;