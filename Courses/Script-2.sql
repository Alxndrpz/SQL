select employees.employee_name, salary.monthly_salary
from employees
join employee_salary on 
employee_salary.employee_id = employees.id 
join salary on
salary.id = employee_salary.salary_id;



select employees.employee_name, salary.monthly_salary
from employees
join employee_salary on 
employee_salary.employee_id = employees.id 
join salary on
salary.id = employee_salary.salary_id
where monthly_salary < 2000;
 


select employees.employee_name, roles.role_name 
from employees 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id;


select employees.employee_name, roles.role_name 
from employees 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Java %';


select employees.employee_name, roles.role_name 
from employees 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';


select employees.employee_name, roles.role_name 
from employees 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';


select employees.employee_name, roles.role_name 
from employees 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Manual QA%';


select employees.employee_name, roles.role_name 
from employees 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Automation QA%';


select employees.employee_name, salary.monthly_salary
from employees 
join employee_salary on 
employee_salary.employee_id = employees.id 
join salary on 
employee_salary.salary_id = salary.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%';


select employees.employee_name, salary.monthly_salary
from employees 
join employee_salary on 
employee_salary.employee_id = employees.id 
join salary on 
employee_salary.salary_id = salary.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Middle%';


select employees.employee_name, salary.monthly_salary
from employees 
join employee_salary on 
employee_salary.employee_id = employees.id 
join salary on 
employee_salary.salary_id = salary.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Senior%';


select  salary.monthly_salary
from salary
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Java %';


select  salary.monthly_salary
from salary
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';


select  salary.monthly_salary, employees.employee_name
from salary
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Junior Python%';


select  salary.monthly_salary, employees.employee_name
from salary
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Middle JavaScript%';


select  salary.monthly_salary, employees.employee_name
from salary
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Senior Java %';


select  salary.monthly_salary
from salary
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%QA%' and roles.role_name like '%Junior%';


select round(avg(salary.monthly_salary))
from salary 
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%';  


select sum(salary.monthly_salary)
from salary 
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%JavaScript%'; 


select min(salary.monthly_salary)
from salary 
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%QA%'; 


select max(salary.monthly_salary)
from salary 
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%QA%'; 


select count(role_name)
from roles
where role_name like '%QA%'; 


select count(role_name)
from roles
where role_name like '%Middle%'; 


select count(role_name)
from roles
where role_name like '%developer%'; 



select sum(salary.monthly_salary)
from salary 
join employee_salary on 
employee_salary.salary_id = salary.id 
join employees on 
employee_salary.employee_id = employees.id 
join roles_employee on
roles_employee.employee_id = employees.id 
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%developer%'; 


select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees 
join employee_salary on 
employees.id = employee_salary.employee_id 
join salary on 
salary.id = employee_salary.salary_id 
join roles_employee on 
roles_employee.employee_id = employees.id 
join roles on 
roles_employee.role_id = roles.id 
order by 3 asc; 


select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees 
join employee_salary on 
employees.id = employee_salary.employee_id 
join salary on 
salary.id = employee_salary.salary_id 
join roles_employee on 
roles_employee.employee_id = employees.id 
join roles on 
roles_employee.role_id = roles.id 
where monthly_salary between 1700 and 2300
order by 3 asc;


select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees 
join employee_salary on 
employees.id = employee_salary.employee_id 
join salary on 
salary.id = employee_salary.salary_id 
join roles_employee on 
roles_employee.employee_id = employees.id 
join roles on 
roles_employee.role_id = roles.id 
where monthly_salary < 2300
order by 3 asc;


select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees 
join employee_salary on 
employees.id = employee_salary.employee_id 
join salary on 
salary.id = employee_salary.salary_id 
join roles_employee on 
roles_employee.employee_id = employees.id 
join roles on 
roles_employee.role_id = roles.id 
where monthly_salary in (1100, 1500, 2000)
order by 3 asc;






