--1
select first_name , hire_date, first_name from hr.employees
where first_name like 'J%'
    
--3
select first_name , salary from hr.employees
order by salary desc

--4
select job_id , salary , first_name from hr.employees
where salary >8000

--5
select employee_id, first_name, salary , department_id from hr.employees
where department_id in (30,50,80) order by department_id desc

--6
select employee_id, first_name, salary from hr.employees
where employee_id>105

--7
select JOB_ID, salary from hr.employees
where salary <6000

--8
select * from hr.jobs j 
full join hr.employees e 
on j.job_id=e.job_id
where first_name  not like 'Clerk%'


--9
select * from hr.departments    
where department_name like '%ing'
    
select department_name, employee_id, first_name 
from hr.employees e inner join hr.departments d 
on e.department_id=d.department_id 
where department_name like '%es'; 

--10
select job_title, salary , first_name 
from hr.employees e inner join hr.jobs j 
on e.job_id=j.job_id
where salary between 5000 and 7000

--11
select employee_id, first_name, salary, hire_date from hr.employees
where hire_date > '01-jan-2004' and hire_date<'31-dec-2004'
order by salary desc

--12

select employee_id, first_name, salary , job_title  from hr.employees e 
inner join  hr.jobs j on e.job_id = j.job_id
where job_title like '%Clerk' or job_title like '%Analysts'

--13
select job_title , salary from hr.employees e inner join hr.jobs j
on e.job_id=j.job_id 
where job_title like 'S%'

--14
select first_name, salary, employee_id, department_id
from hr.employees
where department_id not in (30,60,90);

--15
select employee_id, first_name,  salary, hire_date from hr.employees
where hire_date<'01-jan-2006'
order by hire_date

--16
select job_title, salary  from hr.employees e inner join hr.jobs j on e.job_id=j.job_id
where salary>(select round(avg(salary)) from hr.employees)
order by salary desc

--17
select employee_id,  first_name,  salary , department_name 
from hr.employees e inner join hr.departments d
on e.department_id=d.department_id
where department_name like '%tion%' 

--18
select employee_id, first_name as NAME from hr.employees
where employee_id>110 

--19
select job_title, salary from hr.jobs j 
inner join hr.employees e on j.job_id=e.job_id
where salary > 10000
order by salary 

--20
select employee_id,  first_name,  salary , department_name from hr.employees e
inner join hr.departments d on e.department_id=d.department_id
where department_name not like '%HR%' and department_name not like '%Marketing%'
