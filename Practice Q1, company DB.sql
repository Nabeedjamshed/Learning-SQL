create database NJ_Developers;
use NJ_Developers;
create table emp_info(
	id int primary key,
    name varchar(50),
    salary bigint unsigned not null
);
insert into emp_info
(id,name,salary)
values
(1, "Adam",25000),
(2, "Bob",30000),
(3, "Casey",40000);

select * from emp_info;

drop database nj_developers;

use student;
create table if not exists temp1(
	id int,
    roll_no int,
    name varchar(50),
    city varchar(20),
    salary int,
    primary key (id), /*alternate syntax to make PK and unique elements*/
    unique (roll_no)
);

insert into temp1 
(id,roll_no,name,city,salary)
values
(1,101,"Nabeed","Karachi",123000);
insert into temp1 values(2,102,"Filza","Lahore",123000);

select * from temp1;
/*Primary key 2 tables ka mixture bhi hoskti hai like agr id and roll no ke mixture ko PK bna dya tu id or roll no alag alag tu repeat hoskte 
hai but ek saath nhi hoskte like id=1, roll_no=101 ye ek mixture bngya hai ab ye repeat nhi hoskte while id=1 and roll_no=101 itself single 
reapeat hoskte hai*/

create table employee(
	id int,
    empno int,
    name varchar(20),
    salary int,
    primary key(id,empno)
);
insert into employee
(id,empno,name,salary)
values
(1,54,"Haroon",200000),
(1,53,"Sultan",300000),
(2,54,"Ali",100000);
/*in above id and roll_no repeat tu horhe hai but ek saath nhi horhe is lie error nhi aaega bcz indono ka combination PK hai.Like below eg shows an error*/
insert into employee values(1,54,"Jhazaib",200000); /*Shows an error, bcz jb 2 tables ke mixture ko PK bnate hai tu unka combination unique hona chaeye*
select * from employee;


