-- Q1
select "Employees".emp_no as "Employee Number"
, "Employees".last_name as "Last Name"
, "Employees".first_name as "First Name"
, "Employees".sex
, "salaries".salary
from "Employees"
inner join "salaries"
on "Employees".emp_no = "salaries".emp_no;

-- Q2
select "Employees".first_name as "First Name"
, "Employees".last_name as "Last Name"
, "Employees".hire_date as "Hire Date"
from "Employees"
where "Employees".hire_date like '%1986%';

--Q3
select "Dept_manager".dept_no as "Department Number"
, "Dept_manager".emp_no as "Manager Number"
, "Employees".last_name as "Last Name"
, "Employees".first_name as "First Name"
, "Departments".dept_name as "Department Name"
from "Departments"
inner join "Dept_manager"
on "Departments".dept_no = "Dept_manager".dept_no
inner join "Employees"
on "Dept_manager".emp_no = "Employees".emp_no;

--Q4
select "Demp_emp".demp_no as "Department Number"
, "Demp_emp".emp_no as "Employee Number"
, "Employees".last_name as "Last Name"
, "Employees".first_name as "First Name"
, "Departments".dept_name as "Department Name"
from "Departments"
inner join "Demp_emp"
on "Departments".dept_no = "Demp_emp".demp_no
inner join "Employees"
on "Demp_emp".emp_no = "Employees".emp_no;

--Q5
select "Employees".last_name as "Last Name"
, "Employees".first_name as "First Name"
, "Employees".sex
from "Employees"
where "Employees".first_name = 'Hercules' and "Employees".last_name like '%B%';

--Q6
select "Employees".emp_no as "Employee Number"
, "Employees".last_name as "Last Name"
, "Employees".first_name as "First Name"
, "Departments".dept_name as "Department Name"
from "Employees"
inner join "Demp_emp"
on "Employees".emp_no = "Demp_emp".emp_no
inner join "Departments"
on "Demp_emp".demp_no = "Departments".dept_no
where "Demp_emp".demp_no = (select "Departments".dept_no
	   from "Departments"
	   where "Departments".dept_name like 'Sales');
	   
--Q7
select "Employees".emp_no as "Employee Number"
, "Employees".last_name as "Last Name"
, "Employees".first_name as "First Name"
, "Departments".dept_name as "Department Name"
from "Employees"
inner join "Demp_emp"
on "Employees".emp_no = "Demp_emp".emp_no
inner join "Departments"
on "Demp_emp".demp_no = "Departments".dept_no
where "Demp_emp".demp_no = (select "Departments".dept_no
	   from "Departments"
	   where "Departments".dept_name like 'Sales')
or "Demp_emp".demp_no = (select "Departments".dept_no
	   from "Departments"
	   where "Departments".dept_name like 'Development');
	   
--Q8
select "Employees".last_name as "Last Name"
, count("Employees".last_name) as "Frequency"
from "Employees"
group by "Employees".last_name
order by "Frequency" desc;
	   
	   

