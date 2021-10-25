create database payroll_services

use payroll_services

create table employee_payroll(
employee_id int,
employee_name varchar(50),
employee_salary int,
employee_Start_date varchar(50))

select *from employee_payroll;

insert into employee_payroll values(1,'Amit',18000,'15Sep');
insert into employee_payroll values(2,'Krishna',57000,'17Sep');
insert into employee_payroll values(3,'Satty',11000,'11Oct');
insert into employee_payroll values(4,'Lala',23000,'1Aug');

select employee_salary from employee_payroll where employee_name = 'Krishna';

alter table employee_payroll
add employee_gender varchar(1);

update employee_payroll set employee_gender = 'M' where employee_name = 'Amit'; 

select MIN(employee_salary)
from employee_payroll;

select MAX(employee_salary)
from employee_payroll;

SELECT COUNT(employee_salary)
FROM employee_payroll;

SELECT AVG(employee_salary)
FROM employee_payroll;

SELECT SUM(employee_salary)
FROM employee_payroll;