create database if not exists JOINS;
use JOINS;
create table student(
	std_id int primary key,
    name varchar(20)
);

insert into student
values
(101,"Nabeed"),
(102,"Filza"),
(103,"Sualiha");

select * from student;
drop table courses;
drop table student;
create table courses(
	std_id int primary key,
    course_name varchar(20)
);

insert into courses
values
(102,"English"),
(105,"Science"),
(103,"Math"),
(107,"Physics");

select * from courses;
/*Inner join: This gives common data between both tables*/
select *
from student
inner join courses
on student.std_id = courses.std_id;

/*Left join: This gives common data between both tables also data of left table*/
select * 
from student as s
left join courses as c
on s.std_id = c.std_id;

/*Right join: This gives common data between both tables also data of right table*/
select * 
from student as s
right join courses as c
on s.std_id = c.std_id;

/*Full join: This gives common data between both tables also data of right and left table, full join left or right join ka union nikal kr lete hai*/
select * 
from student as s
left join courses as c
on s.std_id = c.std_id

Union

select * 
from student as s
right join courses as c
on s.std_id = c.std_id;

/*Left Exclusive join: ye phele left join nikalega then right table mai jis ki values null hongi just uska hi result show krege*/
select *
from student as s
left join courses as c
on s.std_id = c.std_id
where c.std_id is null;

/*right Exclusive join: ye phele right join nikalega then left table mai jis ki values null hongi just uska hi result show krege*/
select *
from student as s
right join courses as c
on s.std_id = c.std_id
where s.std_id is null;

/*Full exclusive join: Is mai common data ke ilawa dono table ka data aata hai*/
select *
from student as s
left join courses as c
on s.std_id = c.std_id
where c.std_id is null

union

select *
from student as s
right join courses as c
on s.std_id = c.std_id
where s.std_id is null;

/*Self Join*/
drop table employee;
create table employee(
	id int primary key,
    name varchar(20),
    salary int,
    manager_id int
);
insert into employee 
values
(1,"Joe","70000",3), 
(2,"Henry","80000",4), 
(3,"Sam","60000",NULL), 
(4,"Max","90000",NULL);



select b.name
from employee as a
join employee as b
on a.id = b.manager_id
where b.salary > a.salary;

/*Union just union deta hai while union all duplicate bhi de deta hai*/

select name from employee
union 
select name from employee;

select name from employee
union all 				
select name from employee;


create table Person(
	id int,
    email varchar(20)
);
insert into Person
values
(1,"a@b.com"),
(2,"c@d.com"),
(3,"a@b.com");

select email as Email from Person group by email having count(email) > 1;
delete from Person where email = ();

















