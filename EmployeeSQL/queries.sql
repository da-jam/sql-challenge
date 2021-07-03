-- 1 - Employee sex and salary
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salary.salary
from salary
INNER JOIN employees ON
employees.emp_no=salary.emp_no;

-- 2 - employees 1986
select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date LIKE '%1986';

-- 3 - manager info
select n1.dept_no, n1.dept_name, employees.emp_no, employees.last_name, employees.first_name
from (
     select dept_manager.emp_no, departments.dept_no, departments.dept_name
     from dept_manager
     inner join departments on 
     dept_manager.dept_no=departments.dept_no
     ) as n1
inner join employees on
n1.emp_no=employees.emp_no
;

-- 4 - employee info
select employees.emp_no, employees.last_name, employees.first_name, n1.dept_name
from (
     select dept_emp.emp_no, departments.dept_no, departments.dept_name
     from dept_emp
     inner join departments on 
     dept_emp.dept_no=departments.dept_no
     ) as n1
inner join employees on
n1.emp_no=employees.emp_no
;

 -- 5 employee Hercules
select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name = 'Hercules'
and employees.last_name LIKE 'B%'
;
 
-- 6 Sales dept employees
select employees.emp_no, employees.last_name, employees.first_name, n1.dept_name
from (
     select dept_emp.emp_no, departments.dept_no, departments.dept_name
     from dept_emp
     inner join departments on 
     dept_emp.dept_no=departments.dept_no
     ) as n1
inner join employees on
n1.emp_no=employees.emp_no
where n1.dept_name = 'Sales'
;

-- 7 Sales and Dev dept employees
select employees.emp_no, employees.last_name, employees.first_name, n1.dept_name
from (
     select dept_emp.emp_no, departments.dept_no, departments.dept_name
     from dept_emp
     inner join departments on 
     dept_emp.dept_no=departments.dept_no
     ) as n1
inner join employees on
n1.emp_no=employees.emp_no
where n1.dept_name = 'Sales' or n1.dept_name = 'Development'
;

--8 last names counts
select employees.last_name,COUNT(*) as "Last_Name_Count" 
from employees
group by employees.last_name
order by COUNT(*) DESC
;


