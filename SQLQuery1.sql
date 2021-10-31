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

ALTER TABLE employee_payroll
ADD employee_phone varchar(20);

ALTER TABLE employee_payroll
ADD employee_address varchar(50);

ALTER TABLE employee_payroll
ADD employee_department varchar(50);

UPDATE employee_payroll
SET employee_phone = '9897139203', employee_address= 'Defence Colony Agra',employee_department='Mechanical'
WHERE employee_id = 1;

UPDATE employee_payroll
SET employee_gender='F',employee_phone = '7017362779', employee_address= 'Asroi Hathras',employee_department='Service'
WHERE employee_id = 2;

UPDATE employee_payroll
SET  employee_gender='M',employee_phone = '9912237599', employee_address= 'Devri Road Agra',employee_department='IT'
WHERE employee_id = 3;

UPDATE employee_payroll
SET  employee_gender='T',employee_phone = '9627074345', employee_address= 'Agra Cantt',employee_department='Photographer'
WHERE employee_id = 4;

ALTER TABLE employee_payroll
ADD employee_Basic_Pay int;

ALTER TABLE employee_payroll
ADD employee_Deduction int;

ALTER TABLE employee_payroll
ADD employee_TaxablePay int;

ALTER TABLE employee_payroll
ADD employee_IncomeTax int;

ALTER TABLE employee_payroll
ADD employee_NetPay int;

UPDATE employee_payroll
SET  employee_Basic_Pay=9500,employee_Deduction = 1027, employee_TaxablePay= 660,employee_IncomeTax=534, employee_NetPay=14300
WHERE employee_id = 1;

UPDATE employee_payroll
SET  employee_Basic_Pay=10500,employee_Deduction = 1327, employee_TaxablePay= 630,employee_IncomeTax=534, employee_NetPay=16300
WHERE employee_id = 2;

UPDATE employee_payroll
SET  employee_Basic_Pay=9500,employee_Deduction = 1027, employee_TaxablePay= 660,employee_IncomeTax=534, employee_NetPay=14300
WHERE employee_id = 3;

UPDATE employee_payroll
SET  employee_Basic_Pay=9500,employee_Deduction = 1027, employee_TaxablePay= 660,employee_IncomeTax=534, employee_NetPay=14300
WHERE employee_id = 4;