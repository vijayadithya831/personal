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