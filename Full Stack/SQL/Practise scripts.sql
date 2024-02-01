-- "--this is not a comment line"
-- this is a comment line, bcoz after double hyphen, we should add a space

create database BesantPractice;
show databases;
use besantpractice;
-- table creation

create table Student_det (S_no int, Student_name varchar(25), marks int, gender varchar(10), primary key(S_no));
show tables;
describe student_det;
select * from student_det;

-- delete from student_det where s_no = 5;

insert into student_det values(1, 'Guru', 35, 'Male'), (2, 'Gopi', 54, 'Male'), (3, 'Sudhakar', 78, 'Male'), (4, 'Mani', 98, 'Male'), (5, 'Moorthy', 87, 'Male');

-- new database
create database acc_dept;

use acc_dept;

create table emp_info (emp_id int, emp_name varchar(20), city_state varchar(20), income int, phone bigint, primary key(emp_id));

describe emp_info;
select * from emp_info;

insert into emp_info values(101, 'Adhavan', 'Chennai', 10000, 7200784563), (102, 'Anand', 'Trichy', 25000, 8608914600), (103, 'Abhi', 'Madurai', 15000, 8765432198);

-- alter table and add extra columns
-- 1. single add
alter table emp_info add gender varchar(10);
-- 2. drop
alter table emp_info drop gender;
-- 3. multiple add
alter table emp_info add gender varchar(8), add age int;
-- 4. rename
alter table emp_info rename to emp_det;
alter table emp_det rename to emp_info;
-- 5. drop primary key
alter table emp_info drop primary key;
-- 6. add primary key
alter table emp_info add primary key(emp_id);
-- 7. modify
alter table emp_info modify gender varchar(15);

-- update concept
-- 1. single set
update emp_info set gender = 'Male' where emp_id = 101;
update emp_info set age = 32 where emp_id = 101;
-- 2. multiple set
update emp_info set gender = 'Female' , age = 27 where emp_id = 103;
-- inserting values into tables using excel and notepad

show tables;
create table Stud_det(st_id int primary key auto_increment, st_name varchar(25), city varchar(20), age int, result varchar(20), marks int);
insert into stud_det values(1,	'Geetha',	'Erode',	21,	'No Rank',	37),
(2,	'Guru',	'Tiruppur',	20,	'No Rank',	28),
(3,	'Gokul',	'Tiruchirapalli',	18,	'Average',	40),
(4,	'Mani',	'Kumarapalayam',	24,	'No Rank',	31),
(5,	'Moorthy',	'Salem',	18,	'Very Good',	86),
(6,	'Amutha',	'Chennai',	17,	'Average',	61),
(7,	'Jaga',	'Madurai',	24,	'Very Good',	89),
(8,	'Pavithra',	'Erode',	23,	'Average',	68),
(9,	'Arthi',	'Tiruppur',	17,	'Average',	53),
(10,	'Kabilan',	'Tiruchirapalli',	24,	'Average',	67),
(11,	'Manasi',	'Kumarapalayam',	17,	'Excellent',	97),
(12,	'Suja',	'Salem',	23,	'Very Good',	85),
(13,	'Arun',	'Chennai',	22,	'No Rank',	32),
(14,	'Deepa',	'Madurai',	20,	'Average',	49),
(15,	'Sindhu',	'Erode',	22,	'Average',	65),
(16,	'Madhavi',	'Tiruppur',	20,	'Good',	78),
(17,	'Swetha',	'Tiruchirapalli',	17,	'Good',	73),
(18,	'Selvi',	'Kumarapalayam',	22,	'Average',	47),
(19,	'Pooja',	'Salem',	19,	'Very Good',	88),
(20,	'Lakshmi',	'Chennai',	17,	'Excellent',	99),
(21,	'Veeramani',	'Madurai',	21,	'Average',	67),
(22,	'Pandian',	'Erode',	21,	'Good',	72),
(23,	'Veera',	'Tiruppur',	20,	'Average',	51),
(24,	'Devi',	'Tiruchirapalli',	20,	'Excellent',	96),
(25,	'Devan',	'Kumarapalayam',	21,	'Excellent',	100),
(26,	'Keerthi',	'Salem',	17,	'Very Good',	89),
(27,	'Venkatesh',	'Chennai',	24,	'Good',	75),
(28,	'Raja',	'Madurai',	24,	'Average',	42);
select * from stud_det;

-- or condition (same columns)
select * from stud_det where city='chennai' or city='madurai' or city='tiruppur';
-- in condition (substitute for or condition)
select * from stud_det where city in('chennai', 'madurai', 'tiruppur');
-- or with and condition (different columns)
select * from stud_det where (city='chennai' or city='madurai') and age = 22;