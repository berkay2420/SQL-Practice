select first_name,
last_name,
age,
case
	when age <= 30 then 'young'
    when age between 31 and 50 then 'old'
    when age >= 50 then 'close do end'
end as Age_Bracket
from employee_demographics;

select * 
from parks_departments;

select *
from employee_salary;

-- pay increase + bonus
-- < 50000 = 5% 
-- > 50000 = 7%
-- if finance 10% bonus
select first_name, last_name,
case
	when salary < 50000  then salary * 1.05
    when salary > 50000  then salary * 1.07
end as 'New Salary',
case
	when dept_id = 6 then salary * 0.1
end as 'bonus'
from employee_salary;