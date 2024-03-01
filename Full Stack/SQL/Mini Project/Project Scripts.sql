create database besantproject001;
use besantproject001;
show databases;

-- all the tables are imported as csv files from local folders!
show tables;
select * from emp_details;
describe emp_details;
alter table emp_details add constraint primary key(emp_id);

select * from sal_details;
describe sal_details;
alter table sal_details add constraint primary key(salary_id);
alter table sal_details rename column `branch id` to branch_id;
alter table sal_details modify salary_date date;

select * from desig_details;
describe desig_details;
alter table desig_details add constraint primary key(designation_id);

select * from dept_details;
describe dept_details;
alter table dept_details add constraint primary key(dep_no);

-- scripts

create database dummy01;
drop database dummy01;

show tables;

insert into emp_details values (17034, 'Vijay', 3003, 50, '2022-08-31');

create table dummy_table (dummy_id int, dummy_name varchar(40), age int, marks int);

drop table dummy_table;

alter table emp_details add column new_column varchar(20);

alter table emp_details modify new_column int;

alter table emp_details drop column new_column;

alter table emp_details rename employee_details;
alter table employee_details rename emp_details;

update emp_details set emp_name = 'Vijay Adithya' where emp_id = 17034;
delete from emp_details where emp_id = 17034;

select * from emp_details WHERE dep_no = 70;

select * from sal_details where (branch_id = 241 or branch_id = 242)
and amount >= 15000;

select * from sal_details where branch_id in (243, 244);

select * from sal_details where branch_id not in (241, 242);

select * from sal_details where amount >= 25000;
select * from sal_details where amount < 20000;
select * from sal_details where amount = 28000;
select * from sal_details where amount <> 28000;
select * from emp_details;
select count(emp_id) as dep_count from emp_details where dep_no = 50;
select distinct(dep_no) as dep_nos from emp_details;
select count(distinct(dep_no)) as dep_count from emp_Details;