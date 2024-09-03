-- create database if not exists department;
-- use department;

-- /*Cascading means agr PK and FK ka relation hai or PK ko change krain tu FK khud hi update hojae like: */

-- create table dept(
-- 	d_id int primary key,
-- 	name varchar(20)
-- );

-- insert into dept
-- values
-- (101,"Science"),
-- (102,"Math");
-- insert into dept values(109,"Urdu");
-- delete from dept
-- where d_id = 111; /*jb yha se 111 ko delete kya to teacher mai jis ki d_id 111 thi wo row bhi delete hogae*/

-- delete from dept; 
-- select * from dept;
-- update dept
-- set d_id = 111
-- where d_id = 101;
-- create table teacher(
-- 	t_id int primary key,
-- 	name varchar(20),
--     dep_id int,
--     foreign key (dep_id) references dept(d_id)
--     on update cascade
--     on delete cascade
-- );

-- insert into teacher
-- values
-- (1,"Asma",102),
-- (2,"Samad",109);

-- select * from teacher; /*dept mai update kya bcz of cascade teacher mai bhbi update hogya*/

/*Alter Command*/
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
update students
set age = 19;
/*Add new column*/
alter table students
add column age int not null;

/*Delete column*/
alter table students
drop column age;

/*Rename table*/
alter table students
rename to student;
select * from students;

/*Change column name*/
alter table student
change column marks percentage int;

/*Change column datatype/constraint */
alter table student
modify percentage float not null;


/*truncate: it delete data of table not itself table while drop delete whole table*/
truncate table students; 
delete from students; /*agr aese table ko delete krrhe hai jiski PK as a FK ksi table mai hai tu truncate delete nhi krega while delete from krdega*/