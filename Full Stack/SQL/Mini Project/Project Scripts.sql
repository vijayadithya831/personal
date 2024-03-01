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
alter table sal_details modify branch_id int;
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

select e.emp_id, e.emp_name,
case
	when e.dep_no = 50 then case
		when s.amount >= 30000 then s.amount/30
	end
end as production_daily_sal from emp_details e inner join dept_details d
on e.dep_no = d.dep_no right join sal_details s on e.emp_id = s.emp_id where e.dep_no = 50;

select e.emp_id, e.emp_name, ds.designation, dp.dep_name,
case
	when e.designation_id = 3004 and e.dep_no = 60
		then datediff(curdate(), e.date_of_join)
end as hr_experience from emp_details e inner join desig_details ds on e.designation_id = ds.designation_id
inner join dept_details dp on e.dep_no = dp.dep_no where e.designation_id = 3004 and e.dep_no = 60;

select e.emp_id, e.emp_name, ds.designation, dp.dep_name,
case
	when e.designation_id = 3003 or e.designation_id = 3007
		then datediff(curdate(), e.date_of_join)
end as senoir_experience from emp_details e inner join desig_details ds on e.designation_id = ds.designation_id
inner join dept_details dp on e.dep_no = dp.dep_no where e.designation_id = 3003 or e.designation_id = 3007;

select emp_id, emp_name, (select avg(amount) from sal_details) as average_salary from emp_Details;

select dep_no, count(emp_id) as emp_count from emp_details group by dep_no having emp_count>1;

create table employement_process as select e.emp_id, e.emp_name, e.date_of_join,
s.salary_id, s.salary_date, s.amount, ds.designation_id, ds.designation, dp.dep_no,
dp.dep_name, dp.branch_id, dp.branch_name
from emp_details e inner join sal_details s on e.emp_id = s.emp_id
inner join desig_details ds on e.designation_id = ds.designation_id
inner join dept_details dp on e.dep_no = dp.dep_no order by e.emp_id;

select * from employement_process;

delimiter //
create procedure display_all_tables()
begin
select * from emp_details;
select * from sal_details;
select * from desig_details;
select * from dept_details;
end //
delimiter ;

call display_all_tables;

delimiter //
create procedure calculate_average_salary()
begin
declare average int;
select avg(amount) into average from sal_details;
select average;
end //
delimiter ;

call calculate_average_salary;

delimiter //
create trigger assign_dept before insert on emp_details for each row
begin
    if new.designation_id = 3004 or new.designation_id = 3007 then
        set new.dep_no = 60;
    end if;
end //
delimiter ;

insert into emp_details values (17034, 'Vijay', 3004, 0, '2022-06-12');

select * from emp_details;
delete from emp_details where emp_id = 17034;



create table emp_details_backup (emp_id int primary key, emp_name varchar(40), designation_id int, dep_no int, date_of_join date);

delimiter //
create trigger backup_emp_det after insert on emp_details for each row
begin
insert into emp_details_backup values
(new.emp_id, new.emp_name, new.designation_id, new.dep_no, new.date_of_join);
end //
delimiter ;

insert into emp_details values (17034, 'Vijay', 3004, 0, '2022-06-12');

select * from emp_details;
select * from emp_details_backup;

select * from sal_details;

insert into sal_details values (18034, 17034, '2022-07-12', 243, 25000);

delimiter //
create trigger sal_update before update on sal_details for each row
begin
if new.amount >=30000 and old.amount < 30000 then set new.amount = new.amount+100;
end if;
end //
delimiter ;
update sal_details set amount = 35000 where salary_id = 18034;
select * from sal_details;
describe sal_details;


create table sal_details_backup
(salary_id int primary key, emp_id int, salary_date date, branch_id int, amount varchar(40));

delimiter //
create trigger sal_update_backup after update on sal_details for each row
begin
if new.amount >= 30000 then insert into sal_details_backup values
(new.salary_id, new.emp_id, new.salary_date, new.branch_id, 'High Salary');
end if;
end //
delimiter ;

select * from sal_details;
update sal_details set amount = 35000 where salary_id = 18034;
select * from sal_details_backup;

select * from emp_details;
select * from sal_details;
select * from emp_details_backup;
select * from sal_details_backup;

delimiter //
create trigger emp_deletion before delete on emp_details for each row
begin
insert into emp_details_backup values
(old.emp_id, old.emp_name, old.designation_id, old.dep_no, old.date_of_join);
end //
delimiter ;

delete from emp_details where emp_id = 17034;
select * from emp_details_backup;

delimiter //
create trigger salary_grade after insert on sal_details for each row
begin
if new.amount >= 30000 then insert into sal_details_backup values
(new.salary_id, new.emp_id, new.salary_date, new.branch_id, 'High Salary');
elseif new.amount >= 20000 then insert into sal_details_backup values
(new.salary_id, new.emp_id, new.salary_date, new.branch_id, 'Average Salary');
elseif new.amount >= 10000 then insert into sal_details_backup values
(new.salary_id, new.emp_id, new.salary_date, new.branch_id, 'Low Salary');
else insert into sal_details_backup values
(new.salary_id, new.emp_id, new.salary_date, new.branch_id, 'Poor Salary');
end if;
end //
delimiter ;

insert into sal_details values
(18034, 17034, '2022-07-12', 243, 25000),
(18035, 17035, '2022-09-23', 241, 34000),
(18036, 17036, '2022-12-31', 242, 12000);
select * from sal_details;
select * from sal_details_backup;