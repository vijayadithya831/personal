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

select * from emp_details order by designation_id;
select * from emp_details order by designation_id desc;

select dep_no, count(emp_id) as emp_count from emp_details group by dep_no;
select * from emp_details limit 10;
select * from emp_details order by emp_id desc limit 10;

select * from emp_details where emp_name like '%an';
select * from emp_details where emp_name not like '%an';
select * from emp_details where date_of_join between '2022-05-0' and '2022-06-01';

select sum(amount) as branch_241_amount from sal_details where branch_id = 241;
select avg(amount) as branch_241_average from sal_details where branch_id = 241;
select max(amount) as min_amount from sal_details;
select min(amount) as min_amount from sal_details;
select count(salary_id) as sal_count from sal_details;

select emp_name, lcase(emp_name) as lower_case_name from emp_details;
select emp_name, ucase(emp_name) as upper_case_name from emp_details;
select emp_name, left(emp_name, 3) as left_name from emp_details;
select emp_name, right(emp_name, 2) as left_name from emp_details;
select emp_name, concat(emp_name, " 'last_name'") as full_name from emp_details;
select trim('        Vijay Adithya R S      ') as trim_function_output;
select dep_name, char_length(dep_name) as dept_char_length from dept_details;
select dep_name, mid(dep_name, 1, 10) as mid_dep_name from dept_details;
select dep_name, mid(dep_name, 2, 8) as mid_dept_name, length(mid(dep_name, 2, 8)) as dept_length from dept_details;

select emp_id, emp_name, date_of_join, date_add(date_of_join, interval 3 month) as added_date from emp_details;
select emp_id, emp_name, date_of_join, datediff(curdate(), date_of_join) as working_days from emp_details;

select date_of_join, year(date_of_join) as year_of_join, month(date_of_join) as month_of_join, day(date_of_join) as day_of_join from emp_details;

select *, if(amount>=25000, 'High Salary','Low Salary') as salary_grade from sal_details;

select *, if((((branch_id = 241) or (branch_id = 243)) and amount > 25000), 'Successful Employees', 'Require Improvement') as emp_feedback from sal_details;
select * from sal_details;

select count(if(amount>=25000, 1, null)) as good_salary_count from sal_details;

select * from emp_details e, sal_details s where e.emp_id = s.emp_id;

select * from emp_details e, sal_details s, desig_details d where e.emp_id = s.emp_id and e.designation_id = d.designation_id;

select * from emp_details e inner join sal_details s on e.emp_id = s.emp_id;
select * from emp_details e left join desig_details d on e.designation_id = d.designation_id;
select * from emp_details e right join desig_details d on e.designation_id = d.designation_id;
select * from emp_details e join dept_details d on e.dep_no = d.dep_no;
select * from emp_details e cross join desig_details d on e.designation_id = d.designation_id;

select e.emp_id, s.salary_id, e.emp_name, s.amount,
case
	when s.amount >= 30000 then 'High Salary'
    when s.amount >= 20000 then 'Good Salary'
    when s.amount >= 10000 then 'Low Salary'
end as salary_grade from emp_details e inner join sal_details s on e.emp_id = s.emp_id;

