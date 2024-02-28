create database besantproject001;
use besantproject001;
-- all the tables are imported as csv files from local folders!
show tables;
select * from emp_details;
describe emp_details;
alter table emp_details add constraint primary key(emp_id);

select * from sal_details;
describe sal_details;
alter table sal_details add constraint primary key(salary_id);
alter table sal_details modify salary_date date;

select * from desig_details;
describe desig_details;
alter table desig_details add constraint primary key(designation_id);

select * from dept_details;
describe dept_details;
alter table dept_details add constraint primary key(dep_no);

-- scripts

