use college;
create table if not exists students(
	std_id int primary key,
    name varchar(20),
    city varchar(20),
    country varchar(20),
    marks int,
    grades varchar(1)
);
insert into students values
(1,"Nabeed","Karachi","Pakistan",98,"A"),
(2,"Filza","Karachi","Pakistan",92,"A"),
(3,"Sualiha","Karachi","Pakistan",88,"A"),
(4,"Zainab","Washington","USA",82,"B"),
(5,"Kashaf","Washington","USA",75,"C"),
(6,"Huma","Delhi","India",71,"C"),
(7,"Huma","Delhi","India",95,"A"),
(8,"Huma","larkana","Srilanka",87,"A");
select * from students;

alter table students
change column name full_name varchar(20);

delete from students
where marks<80;

alter table students
drop column grades;

/*SubQuery*/
drop table stu;
create table stu(
	roll_no int,
    name varchar(20),
    marks int,
    city varchar(20)
);
insert into stu
values
(101,"Nabeed",78,"Karachi"),
(102,"Filza",93,"Delhi"),
(103,"Sualiha",85,"Delhi"),
(104,"Zainab",96,"Mumbai"),
(105,"Kashaf",92,"Delhi"),
(106,"Hurain",82,"Karachi");

select * from stu;
/*get names,marks of all students who scored more than class average*/
select name,marks
from stu 
where marks > (select avg(marks) from stu);

select roll_no 
from stu where roll_no%2=0;

select roll_no,name
from stu
where roll_no in (select roll_no from stu where roll_no%2=0);

select max(marks) 
from stu 
where city="Delhi";

select name,marks from stu where marks = (select max(marks) from (select marks from stu where city="Delhi") as temp); /*temporary table bnani parhti hai agr from mai sub query likh rhe hai*/


