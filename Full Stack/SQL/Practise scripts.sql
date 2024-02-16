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


create database db001;
use db001;
CREATE TABLE STUDENT_INFO  (Student_ID INT NOT NULL AUTO_INCREMENT,	
Student_Name VARCHAR(20) NOT NULL,	City_State VARCHAR(15) NOT NULL,	
Age INT NOT NULL,	Result VARCHAR(15) NOT NULL, 	Marks INT NOT NULL,PRIMARY KEY (STUDENT_ID));
INSERT INTO STUDENT_INFO 
 VALUES (1,	'Vasanth',	'Erode',	21,	'NoRank',	37),
(2,	'Guru',	'Tiruppur',	20,	'NoRank',	28),
(3,	'Gokul',	'Tiruchirapalli',	18,	'Average',	40),
(4,	'Mani',	'Kumarapalayam',	24,	'NoRank',	31),
(5,	'Moorthy',	'Salem',	18,	'VeryGood',	86),
(6,	'Amutha',	'Chennai',	17,	'Average',	61),
(7,	'Jaga',	'Madurai',	24,	'VeryGood',	89),
(8,	'Pavithra',	'Erode',	23,	'Average',	68),
(9,	'Arthi',	'Tiruppur',	17,	'Average',	53),
(10,	'Kabilan',	'Tiruchirapalli',	24,	'Average',	67),
(11,	'Manasi',	'Kumarapalayam',	17,	'Excellent',	97),
(12,	'Suja',	'Salem',	23,	'VeryGood	', 85),
(13,	'Arun',	'Chennai',	22,	'NoRank',	32),
(14,	'Deepa',	'Madurai',	20,	'Average',	49),
(15,	'Sindhu',	'Erode',	22,	'Average',	65),
(16,	'Madhavi',	'Tiruppur',	20,	'Good',	78),
(17,	'Swetha',	'Tiruchirapalli',	17,	'Good',	73),
(18,	'Selvi',	'Kumarapalayam',	22,	'Average',	47),
(19,	'Pooja',	'Salem',	19,	'VeryGood',	88),
(20,	'Lakshmi',	'Chennai',	17,	'Excellent',	99),
(21,	'Veeramani',	'Madurai',	21,	'Average',	67),
(22,	'Pandian',	'Erode',	21,	'Good',	72),
(23,	'Veera',	'Tiruppur',	20,	'Average',	51),
(24,	'Devi',	'Tiruchirapalli',	20,	'Excellent',	96),
(25,	'Devan',	'Kumarapalayam',	21,	'Excellent',	100),
(26,	'Keerthi',	'Salem',	17,	'VeryGood	',89),
(27,	'Venkatesh',	'Chennai',	24,	'Good',	75),
(28,	'Raja',	'Madurai',	24,	'Average',	42);

-- filtering values
select student_name, city_state, marks from student_info;

select * from student_info;

select * from student_info where city_state = 'chennai' and result = 'average' order by city_state;

select * from student_info where (city_state = 'chennai' or city_state = 'madurai') and result = 'average';

select * from student_info where city_state not in('chennai', 'madurai', 'salem');

select * from student_info where marks >= 89;

select count(*) as total_count from student_info;

select count(distinct(city_state)) as unique_city_count from student_info;

-- group by
select city_state, count(student_id) as student_city from student_info group by city_state;

-- order by
select * from student_info order by student_name desc;

select * from student_info order by marks desc;

-- limit condition (given in 2 arguements, first one indicates the nth row, so that (n+1)th row is taken as first row to return, and the 2nd arguement indicates the number of rows that is needed to be returned
select * from student_info order by student_id limit 12,5;

-- like (applied mostly in strings
-- the position of the percentage symbols indicate where you are relating the data with
select * from student_info where student_name not like '%a%r%';
select * from student_info where student_name like '__r_';
-- select city_state, count(student_id) as student_count from student_info group by city_state having age = 20 order by student_id (i wanna figure this out soon);

-- between
select * from student_info where marks between 21 and 31;
select * from student_info;
-- methods
select sum(marks) from student_info;
select sum(marks) from student_info where student_id in(25, 20, 11, 24);

-- round funtion, the number after the attribute indicates the number of decimal places after the decimal point to be rounded and displayed.
select round(avg(marks),0) from student_info;
-- min and max
-- normal method
select min(marks) from student_info;
select * from student_info where marks = 28;
-- inner query(nested query)
select * from student_info  where marks = (select min(marks) from student_info);
-- usage of inner query is not allowed when the class is taken LOL
create table student_det (student_id int, student_name varchar(30),
student_initial varchar(25), marks int, Gender varchar(30),
primary key(student_id));

insert into Student_det values
(14001,	'Guru',	'L',	35,	'Male'),
(14002,	'Gopi',	'S',	54,	'Male'),
(14003,	'Sudhakar',	'D',	78,	'Male');

select * from student_det;
-- string functions
select *, lcase(student_name) as lcase_name, ucase(student_name) as ucase_name from student_det;
select left(student_id, 2) as default_id from student_det;-- takes the left most n characters/individual elements (n is the number mentioned)
select right(student_id, 3) as student_id from student_det;-- takes the right most n characters/individual elements (n is the number mentioned)
-- combination
select left(student_id,2) as default_id, right(student_id,3) as student_id from student_det;
select *, concat(student_name, ' ', student_initial) as student_full_name from student_det;

-- length
select length(student_name) from student_det;
-- select right(name,4) from table_name where name like(% ____); this gives all the people's name who have only 4 characters in their lastname
-- string functions continuation
select left(student_id,2) as default_id, right(student_id,3) as student_id from student_det;

-- mid function, same as left and right functions
-- mid has 3 parameters, first is as usual the field name, 2nd is the starting character count that is the nth character we have to start from, and the 3rd paramter is the number of characters we need from the nth character.
select mid(student_id, 3,2) from student_det;
select *, concat(student_name, ' ', student_initial) as student_full_name from student_det;

select trim(student_name) from student_det;
select *, char_length(student_name) as student_name_length from student_det;
select *, length(student_name) as student_name_length from student_det;

select * from student_det where length(student_name) = 4;

-- logical functions
create table Att_info (Att_id int, student_name varchar(50),
student_id int, Att_date date, Att_status varchar(25),
Primary key(Att_id));

insert into Att_info values
(1,	'Vasanth',	1,	'2022-11-01' ,	' P'),
(2,	'Vasanth',	1,	'2022-11-02' ,	' P'),
(3,	'Vasanth',	1,	'2022-11-03' ,	' P'),
(4,	'Vasanth',	1,	'2022-11-04' ,	' A'),
(5,	'Guru',	2,	'2022-11-01' ,	' P'),
(6,	'Guru',	2,	'2022-11-02' ,	' P'),
(7,	'Guru',	2,	'2022-11-03' ,	' A'),
(8,	'Guru',	2,	'2022-11-04' ,	' A'),
(9,	'Gokul',	3,	'2022-11-01' ,	' A'),
(10,	'Gokul',	3,	'2022-11-02' ,	' A'),
(11,	'Gokul',	3,	'2022-11-03' ,	' P'),
(12,	'Gokul',	3,	'2022-11-04' ,	' A'),
(13,	'Mani',	4,	'2022-11-01' ,	' A'),
(14,	'Mani',	4,	'2022-11-02' ,	' P'),
(15,	'Mani',	4,	'2022-11-03' ,	' P'),
(16,	'Mani',	4,	'2022-11-04' ,	' A'),
(17,	'Moorthy',	5,	'2022-11-01' ,	' P'),
(18,	'Moorthy',	5,	'2022-11-02' ,	' A'),
(19,	'Moorthy',	5,	'2022-11-03' ,	' P'),
(20,	'Moorthy',	5,	'2022-11-04' ,	' A'),
(21,	'Amutha',	6,	'2022-11-01' ,	' P'),
(22,	'Amutha',	6,	'2022-11-02' ,	' P'),
(23,	'Amutha',	6,	'2022-11-03' ,	' A'),
(24,	'Amutha',	6,	'2022-11-04' ,	' A'),
(25,	'Jaga',	7,	'2022-11-01' ,	' A'),
(26,	'Jaga',	7,	'2022-11-02' ,	' A'),
(27,	'Jaga',	7,	'2022-11-03' ,	' P'),
(28,	'Jaga',	7,	'2022-11-04' ,	' P'),
(29,	'Pavithra',	8,	'2022-11-01' ,	' P'),
(30,	'Pavithra',	8,	'2022-11-02' ,	' A'),
(31,	'Pavithra',	8,	'2022-11-03' ,	' P'),
(32,	'Pavithra',	8,	'2022-11-04' ,	' A'),
(33,	'Arthi',	9,	'2022-11-01' ,	' A'),
(34,	'Arthi',	9,	'2022-11-02' ,	' A'),
(35,	'Arthi',	9,	'2022-11-03' ,	' A'),
(36,	'Arthi',	9,	'2022-11-04' ,	' P'),
(37,	'Kabilan',	10,	'2022-11-01' ,	' P'),
(38,	'Kabilan',	10,	'2022-11-02' ,	' P'),
(39,	'Kabilan',	10,	'2022-11-03' ,	' A'),
(40,	'Kabilan',	10,	'2022-11-04' ,	' P'),
(41,	'Manasi',	11,	'2022-11-01' ,	' P'),
(42,	'Manasi',	11,	'2022-11-02' ,	' A'),
(43,	'Manasi',	11,	'2022-11-03' ,	' A'),
(44,	'Manasi',	11,	'2022-11-04' ,	' P'),
(45,	'Suja',	12,	'2022-11-01' ,	' P'),
(46,	'Suja',	12,	'2022-11-02' ,	' A'),
(47,	'Suja',	12,	'2022-11-03' ,	' P'),
(48,	'Suja',	12,	'2022-11-04' ,	' P'),
(49,	'Arun',	13,	'2022-11-01' ,	' P'),
(50,	'Arun',	13,	'2022-11-02' ,	' P'),
(51,	'Arun',	13,	'2022-11-03' ,	' A'),
(52,	'Arun',	13,	'2022-11-04' ,	' P'),
(53,	'Deepa',	14,	'2022-11-01' ,	' P'),
(54,	'Deepa',	14,	'2022-11-02' ,	' A'),
(55,	'Deepa',	14,	'2022-11-03' ,	' P'),
(56,	'Deepa',	14,	'2022-11-04' ,	' A'),
(57,	'Sindhu',	15,	'2022-11-01' ,	' P'),
(58,	'Sindhu',	15,	'2022-11-02' ,	' A'),
(59,	'Sindhu',	15,	'2022-11-03' ,	' P'),
(60,	'Sindhu',	15,	'2022-11-04' ,	' A'),
(61,	'Madhavi',	16,	'2022-11-01' ,	' P'),
(62,	'Madhavi',	16,	'2022-11-02' ,	' P'),
(63,	'Madhavi',	16,	'2022-11-03' ,	' A'),
(64,	'Madhavi',	16,	'2022-11-04' ,	' P'),
(65,	'Swetha',	17,	'2022-11-01' ,	' A'),
(66,	'Swetha',	17,	'2022-11-02' ,	' P'),
(67,	'Swetha',	17,	'2022-11-03' ,	' P'),
(68,	'Swetha',	17,	'2022-11-04' ,	' P'),
(69,	'Selvi',	18,	'2022-11-01' ,	' P'),
(70,	'Selvi',	18,	'2022-11-02' ,	' P'),
(71,	'Selvi',	18,	'2022-11-03' ,	' P'),
(72,	'Selvi',	18,	'2022-11-04' ,	' P'),
(73,	'Pooja',	19,	'2022-11-01' ,	' A'),
(74,	'Pooja',	19,	'2022-11-02' ,	' A'),
(75,	'Pooja',	19,	'2022-11-03' ,	' A'),
(76,	'Pooja',	19,	'2022-11-04' ,	' P'),
(77,	'Lakshmi',	20,	'2022-11-01' ,	' A'),
(78,	'Lakshmi',	20,	'2022-11-02' ,	' A'),
(79,	'Lakshmi',	20,	'2022-11-03' ,	' P'),
(80,	'Lakshmi',	20,	'2022-11-04' ,	' P'),
(81,	'Veeramani',	21,	'2022-11-01' ,	' A'),
(82,	'Veeramani',	21,	'2022-11-02' ,	' A'),
(83,	'Veeramani',	21,	'2022-11-03' ,	' P'),
(84,	'Veeramani',	21,	'2022-11-04' ,	' A'),
(85,	'Pandian',	22,	'2022-11-01' , ' P'),
(86,	'Pandian',	22,	'2022-11-02' , ' P'),
(87,	'Pandian',	22,	'2022-11-03' ,	' P'),
(88,	'Pandian',	22,	'2022-11-04' ,	' A'),
(89,	'Veera',	23,	'2022-11-01' ,	' P'),
(90,	'Veera',	23,	'2022-11-02' ,	' A'),
(91,	'Veera',	23,	'2022-11-03' ,	' P'),
(92,	'Veera',	23,	'2022-11-04' ,	' A'),
(93,	'Devi',	24,	'2022-11-01' ,	' P'),
(94,	'Devi',	24,	'2022-11-02' ,	' P'),
(95,	'Devi',	24,	'2022-11-03' ,	' A'),
(96,	'Devi',	24,	'2022-11-04' ,	' A'),
(97,	'Devan',	25,	'2022-11-01' ,	' A'),
(98,	'Devan',	25,	'2022-11-02' ,	' A'),
(99,	'Devan',	25,	'2022-11-03' ,	' P'),
(100,	'Devan',	25,	'2022-11-04' ,	' P'),
(101,	'Keerthi',	26,	'2022-11-01' ,	' P'),
(102,	'Keerthi',	26,	'2022-11-02' ,	' P'),
(103,	'Keerthi',	26,	'2022-11-03' ,	' A'),
(104,	'Keerthi',	26,	'2022-11-04' ,	' A'),
(105,	'Venkatesh',	27,	'2022-11-01' ,	' P'),
(106,	'Venkatesh',	27,	'2022-11-02' ,	' A'),
(107,	'Venkatesh',	27,	'2022-11-03' ,	' P'),
(108,	'Venkatesh',	27,	'2022-11-04' ,	' P'),
(109,	'Raja',	28,	'2022-11-01' ,              ' P'),
(110,	'Raja',	28,	'2022-11-02' ,               ' A'),
(111,	'Raja',	28,	'2022-11-03' ,               ' P'),
(112,	'Raja',	28,	'2022-11-04',' P');
 use besantpractice;
select * from att_info;

-- working days calculation
select student_name, count(att_date) as working_days from att_info group by student_name;






-- date formatting
create database employee1;
use employee1;
create table emp_info (Emp_No int, Emp_Name varchar(20), Job varchar(20), Mgr int, Hire_Date date, Sal int, Comm int, Dep_No int,
Primary key (Emp_No));
Insert into Emp_info (Emp_No, Emp_name, Job, mgr, Hire_date, Sal, Comm, Dep_no)
values (7369,	'SMITH',	'CLERK',	7902,	'1980-12-17',	800,	Null,	20),
(7499,	'ALLEN',	'SALESMAN',	7698,	'1981-02-20',	1600,	300,	30),
(7521,	'WARD',	'SALESMAN',	7698,	'1981-02-22',	1250,	500,	30),
(7566,	'JONES',	'MANAGER',	7839,	'1981-04-02',	2975,	Null,	20),
(7654,	'MARTIN',	'SALESMAN',	7698,	'1981-09-28',	1250,	Null,	30),
(7698,	'BLAKE',	'MANAGER',	7839,	'1981-05-01',	2850,	1400,	30),
(7782,	'CLARK',	'MANAGER',	7839,	'1981-06-09',	2450,	Null,	10),
(7788,	'SCOTT',	'ANALYST',	7566,	'1982-12-09',	3000,	Null,	20),
(7839,	'KING',	'PRESIDENT',	Null,	'1981-11-17',	5000,	Null,	10),
(7844,	'TURNER',	'SALESMAN',	7698,	'1981-09-08',	1500,	0,	30),
(7876,	'ADAMS',	'CLERK',	7788,	'1983-01-12',	1100,	Null,	20),
(7900,	'JAMES',	'CLERK',	7698,	'1981-12-03',	950,	Null,	30),
(7902,	'FORD',	'ANALYST',	7566,	'1981-12-03',	3000,	Null,	20),
(7934,	'MILLER',	'CLERK',	7782,	'1982-01-23',	1300,	Null,	10);
-- datediff
select *, round(datediff(curdate() ,hire_date)/30) as experience from emp_info;

-- timestampdiff
select *, timestampdiff(month, hire_date, curdate()) as emp_exp from emp_info;

-- date format
select *, date_format(hire_date,'%b') as month_name from emp_info;
select *, date_format(hire_date,'%a') as day_name from emp_info;
select *, date_format(hire_date,'%c') as month_num from emp_info;

-- if we want to select the month, year or date in place of hire_date, we have to mannually give the column names to run that way
-- further, we can store the above values in a separate table and work in that, instead of giving select, we give create table table name with the same syntax to select columns
-- these columns will be the new columns in the new table

select *, date_format(hire_date, '%M') as month_name from emp_info where date_format(hire_date, '%b') like '_a%';
select *, date_format(hire_date, '%a') as day_name from emp_info;
select *, date_format(hire_date, '%b') as month_name from emp_info;
select *, date_format(hire_date, '%M') as month_full_name from emp_info;
select *, date_format(hire_date, '%d') as date_num from emp_info;
select *, date_format(hire_date, '%m') as month_num from emp_info;
select *, date_format(hire_date, '%j') as day_of_year from emp_info;

-- exercises
-- display all the information from emp table (1)
select * from emp_info;
-- display unique jobs from emp table (2)
select distinct(job) as jobs from emp_info;
-- list emps in ascending order of their salaries (3)
select emp_name, sal from emp_info order by sal;
-- asc of dep num, desc of jobs (4)
select * from emp_info order by dep_no;
select * from emp_info order by job desc;
-- display all unique job groups in descending order (5)
select distinct(job) as jobs from emp_info order by job desc;
-- all details of mgrs (6)
select * from emp_info where emp_no in (select mgr from emp_info);
-- joined before 1981 (7)
select * from emp_info where year(hire_date) < 1981;
-- display empnum, name, sal daily sal from emp info in asc order of annual sal (8)
-- method 1
select *, sal/31 as daily_sal, sal*12 as annual_sal from emp_info order by sal*12;
-- method 2
create table sal_det as select *, sal/31 as daily_sal, sal*12 as annual_sal from emp_info;
-- whose comm is greater than their salary (9)
select * from emp_info where comm > sal;
-- asc order of designations of those who joined after second half of 1981 (10)
select * from emp_info where year(hire_date) >= 1981 and month(hire_date) >= 6 order by job;
-- emp list along with experience and daily sal more than 100 (11)
select *, (datediff(curdate(), hire_date))/365 as experience from emp_info where sal/30 >= 100;
-- either clerk or analyst in desc order of name (12)
select * from emp_info where job in ('clerk', 'analyst') order by emp_name desc;
-- emp joined on 1 may '81. 3 dec '81, 17 dec '81, 19 jan '80 in ascending order of seniority (13)
select * from emp_info where hire_date in ('1981-05-01', '1981-12-03', '1981-12-17', '1980-01-19') order by hire_date desc;
-- dept num 10 or 20 (14)
select * from emp_info where dep_no in (10, 20);
-- joined in the year 1981 (15)
select * from emp_info where year(hire_date) = 1981;
-- joined in the month of aug 1980 (16)
select * from emp_info where month(hire_date) = 8 and year(hire_date) = 1980;
-- annual salary ranging from 22000 and 45000 (17)
select *, sal*12 as annual_sal from emp_info where sal*12 between 22000 and 45000;
-- having 5 characters in their names (18)
select * from emp_info where length(emp_name) = 5;
-- empno, empname, job, hiredate, exp of all managers (19)
select emp_no, emp_name, job, hire_date, datediff(curdate(), hire_date)/365 as experience from emp_info where job = 'manager';
-- empno, empname, sal, exp of emps working for manager 7369 (20)
select emp_no, emp_name, sal, datediff(curdate(), hire_date)/365 as experience from emp_info where mgr = 7369; 

-- joins
create database accounts;
use accounts;

create table EMp_det (emp_id int, emp_name varchar(25),
Designation varchar(30), date_of_join date,
Primary key(Emp_id));


insert into emp_det values
(1,	'Guru',	   'Manager',	'2022-05-10'),
(2,	'Gopi',	  'Junior Accountant',	'2022-05-12'),
(3,	'Mani',	   'Senior Manager',	'2022-05-15'),
(4,	'Moorthy', 	   'HR',	'2022-05-20'),
(5,	'Muthu',	 'General Manager',	'2022-05-23'),
(6,	'Abhi',	 'Associate',	'2022-06-05');




create table sal_info (sal_id int, emp_id int, sal_date date,
amount int, primary key(sal_id));


insert into sal_info values
(121,	1,	'2022-06-10',	10000),
(156,	2,	'2022-06-12',	18000),
(134,	3,	'2022-06-15',	12000),
(167,	4,	'2022-06-20',	16000),
(178,	5,	'2022-06-23',	12000);

-- left table
select * from emp_det;

-- right table
select * from sal_info;

-- inner join
select * from emp_det inner join sal_info on emp_det.emp_id = sal_info.emp_id order by emp_det.emp_id;

-- left join
select * from emp_det e left join sal_info s on e.emp_id = s.emp_id;

-- inserting extra value in right table to understand right join further
insert into sal_info values(181, 8, '2023-07-23', 21000);
-- right join
select * from emp_det e right join sal_info s on e.emp_id = s.emp_id;

-- full outer join (union is the keyword of full outer join)
(select * from emp_det e left join sal_info s on e.emp_id = s.emp_id) union (select * from emp_det e right join sal_info s on e.emp_id = s.emp_id);


create database joins;
use joins;

create table student_info(student_id int primary key auto_increment, student_name varchar(30), city_state varchar(20), age int, roll_no int, community varchar(5), course_id int);

insert into student_info values
(1,	'Vasanth',	'Erode',	21,	13001,	'BC',	1),
(2,	'Guru',	'Tiruppur',	20,	13002,	'MBC',	1),
(3,	'Gokul',	'Tiruchirapalli',	18,	13003,	'SC',	1),
(4,	'Mani',	'Kumarapalayam',	24,	13004,	'BC',	1),
(5,	'Moorthy',	'Salem',	18,	13005,	'MBC',	2),
(6,	'Amutha',	'Chennai',	17,	13006,	'SC',	2),
(7,	'Jaga',	'Madurai',	24,	13007,	'BC',	2),
(8,	'Pavithra',	'Erode',	23,	13008,	'MBC',	2),
(9,	'Arthi',	'Tiruppur',	17,	13009,	'SC',	3),
(10,	'Kabilan',	'Tiruchirapalli',	24,	13010,	'BC',	3),
(11,	'Manasi',	'Kumarapalayam',	17,	13011,	'MBC',	3),
(12,	'Suja',	'Salem',	23,	13012,	'SC',	3),
(13,	'Arun',	'Chennai',	22,	13013,	'BC',	3),
(14,	'Deepa',	'Madurai',	20,	13014,	'MBC',	1),
(15,	'Sindhu',	'Erode',	22,	13015,	'SC',	1),
(16,	'Madhavi',	'Tiruppur',	20,	13016,	'BC',	1),
(17,	'Swetha',	'Tiruchirapalli',	17,	13017,	'MBC',	1),
(18,	'Selvi',	'Kumarapalayam',	22,	13018,	'SC',	3),
(19,	'Pooja',	'Salem',	19,	13019,	'BC',	1),
(20,	'Lakshmi',	'Chennai',	17,	13020,	'MBC',	2),
(21,	'Veeramani',	'Madurai',	21,	13021,	'SC',	1),
(22,	'Pandian',	'Erode',	21,	13022,	'BC',	1),
(23,	'Veera',	'Tiruppur',	20,	13023,	'MBC',	2),
(24,	'Devi',	'Tiruchirapalli',	20,	13024,	'SC',	3),
(25,	'Devan',	'Kumarapalayam',	21,	13025,	'BC',	1),
(26,	'Keerthi',	'Salem',	17,	13026,	'MBC',	2),
(27,	'Venkatesh',	'Chennai',	24,	13027,	'SC',	1),
(28,	'Raja',	'Madurai',	24,	13028,	'SC',	3);

create table course_info(course_id int primary key, course_name varchar(15));

insert into course_info values
(1,	'CMA'),
(2,	'CA'),
(3,	'CS');

create table marks_info(marks_id int primary key, student_id int, finance int, cost int, corporate int);

insert into marks_info values
(14001,	1,	75,	76,	65),
(14002,	2,	92,	90,	19),
(14003,	3,	38,	37,	46),
(14004,	4,	39,	90,	58),
(14005,	5,	34,	89,	20),
(14006,	6,	44,	38,	60),
(14007,	7,	50,	26,	98),
(14008,	8,	59,	78,	82),
(14009,	9,	89,	47,	88),
(14010,	10,	20,	25,	100),
(14011,	11,	74,	50,	100),
(14012,	12,	81,	62,	31),
(14013,	13,	60,	19,	33),
(14014,	14,	77,	22,	23),
(14015,	15,	68,	38,	35),
(14016,	16,	31,	60,	83),
(14017,	17,	83,	53,	79),
(14018,	18,	37,	79,	88),
(14019,	19,	55,	76,	76),
(14020,	20,	25,	40,	81),
(14021,	21,	38,	87,	48),
(14022,	22,	84,	63,	72),
(14023,	23,	80,	44,	64),
(14024,	24,	53,	46,	59),
(14025,	25,	79,	48,	94),
(14026,	26,	48,	66,	70),
(14027,	27,	61,	45,	74),
(14028,	28,	24,	95,	58);

select * from student_info;
select * from course_info;
select * from marks_info;


select course_name, count(student_id) as student_count from course_info c, student_info s where c.course_id = s.course_id group by course_name;
select course_name, count(student_id) as student_count from course_info c join student_info s on c.course_id = s.course_id group by course_name;

select s.student_id, s.roll_no, s.student_name, (m.finance + m.cost + m.corporate) as total_marks from student_info s join marks_info m on s.student_id = m.student_id;


select s.student_id, s.student_name, s.city_state, s.roll_no, s.course_id, c.course_name, m.marks_id, m.finance, m.cost, m.corporate
from student_info s inner join course_info c on s.course_id = c.course_id inner join marks_info m on s.student_id = m.student_id;

insert into course_info value(4, 'Tally_prime');

delete from marks_info where marks_id in(14027, 14028);
insert into marks_info values
(14027,	27,	61,	45,	74),
(14028,	28,	24,	95,	58);


-- if you specify the direction of join according to the table which has higher number of values, the associated with it containing lesser number of values will display null
-- below example shows that student info does not contain 4th course so it shows null in student table here course is 

create table stu_course_marks as select s.student_id, s.student_name, s.city_state, s.roll_no, c.course_id, c.course_name, m.marks_id, m.finance, m.cost, m.corporate
from student_info s right join course_info c on s.course_id = c.course_id left join marks_info m on s.student_id = m.student_id order by s.student_id;

select * from stu_course_marks;
-- results
select *,(m.finance + m.cost + m.corporate) as total_marks, round((m.finance + m.cost + m.corporate)/3,0) as average_marks,
case
	when round((m.finance + m.cost + m.corporate)/3,0) >=35
		then "pass"
	else "fail"
end as results from student_info s inner join course_info c on s.course_id = c.course_id inner join marks_info m on s.student_id = m.student_id order by s.student_id; 
-- sub wise result
select *,(m.finance + m.cost + m.corporate) as total_marks, round((m.finance + m.cost + m.corporate)/3,0) as average_marks,
case
	when m.finance >= 35
		then "pass"
	else "fail"
end as finance_results,
case
	when m.cost >= 35
		then "pass"
	else "fail"
end as cost_results,
case
	when m.corporate >= 35
		then "pass"
	else "fail"
end as corporate_results
from student_info s inner join course_info c on s.course_id = c.course_id inner join marks_info m on s.student_id = m.student_id order by s.student_id;
-- all sub pass
select *,(m.finance + m.cost + m.corporate) as total_marks, round((m.finance + m.cost + m.corporate)/3,0) as average_marks,
case
	when m.finance >= 35 and m.cost >= 35 and m.corporate >= 35
		then "pass"
	else "fail"
end as end_results from student_info s inner join course_info c on s.course_id = c.course_id inner join marks_info m on s.student_id = m.student_id order by s.student_id; 
-- sub wise pass check and grade assignment
select *,(m.finance + m.cost + m.corporate) as total_marks, round((m.finance + m.cost + m.corporate)/3,0) as average_marks,
case
	when m.finance >= 35 and m.cost >= 35 and m.corporate >= 35
		then case
			when round((m.finance + m.cost + m.corporate)/3,0) between 91 and 100
				then "O"
			when round((m.finance + m.cost + m.corporate)/3,0) between 81 and 90
				then "A"
			when round((m.finance + m.cost + m.corporate)/3,0) between 71 and 80
				then "B"
			when round((m.finance + m.cost + m.corporate)/3,0) between 51 and 70
				then "C"
			else "D"
			end
		else "No Grade"
end as grade
from student_info s inner join course_info c on s.course_id = c.course_id inner join marks_info m on s.student_id = m.student_id order by s.student_id; 