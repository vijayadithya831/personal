create database mocktest01;
use mocktest01;

select * from emp_info;
alter table emp_info modify hire_date date;
alter table emp_info add constraint primary key(emp_id);
select * from dept_info;
alter table dept_info rename column dep_no to dept_no;

-- name starting with s and with 5 letters
select * from emp_info where emp_name like 's____';

-- name with 4 char and 3rd char is r
select * from emp_info where emp_name like '__r_';

select * from emp_info where emp_name like 's___h';

select * from emp_info where month(hire_date) = 1;

select * from emp_info where date_format(hire_date, '%M') like '_a%';

select * from emp_info where salary like '___0';

select * from emp_info where emp_name like '%ll%';

select * from emp_info where year(hire_date) between 1980 and 1989;

select * from emp_info where dept_no <> 20;

select * from emp_info where job not in ('president', 'manager') order by salary;

select * from emp_info where year(hire_date) <> 1981;

select * from emp_info where emp_id not like '78%';
select * from emp_info;


select * from emp_info where month(hire_date) <> 3;

select * from emp_info where job = 'clerk' and dept_no = 20;

select * from emp_info where dept_no in (10, 30) and year(hire_date) = 1981;

select * from emp_info where emp_name = 'Smith';

select * from dept_info;

select e.emp_id, e.emp_name, d.location from emp_info e inner join dept_info d on e.dept_no = d.dept_no where e.emp_name = 'smith';

select * from emp_info;

select e.*, d.dep_name, d.location from emp_info e inner join dept_info d on e.dept_no = d.dept_no where d.dep_name in ('accounting', 'research') order by e.dept_no;

select e.emp_id, e.emp_name, e.salary, d.dep_name from emp_info e inner join dept_info d on e.dept_no = d.dept_no where e.mgr is not null
and e.job = 'analyst' and d.location in ('new york', 'dallas') and e.commission is null and datediff(curdate(), e.hire_date)/365 >= 40 order by d.location;


create table emp_dep_grades as select *,
case
	when salary >= 4000 then 'Very High Salary'
    when salary >= 3000 then 'High Salary'
    when salary >= 2000 then 'Good Salary'
    when salary >= 1000 then 'Average Salary'
    when salary >= 0 then 'Low Salary'
end as sal_grade from emp_info order by salary;

select * from emp_dep_grades;

select * from emp_info where salary*12 between 22000 and 45000;

create table emp_details (emp_id int primary key, emp_name varchar(40), date_of_birth date, mail_id varchar(60));

create table emp_comment (comment_id int primary key, remarks varchar(100));

delimiter //
create trigger mail_check after insert on emp_details for each row
begin
if new.mail_id is null then insert into emp_comment values (new.emp_id, concat('Hi ', new.emp_name , ', Kindly Update Your Mail_id'));
end if;
end //
delimiter ;

insert into emp_details values
(143001, 'Guru', '1998-04-28', 'veer245@gmail.com'),
(143002, 'Gopi', '1995-09-13', null);

select * from emp_details;
select * from emp_comment;