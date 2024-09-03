create database if not exists University;
use University;
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
insert into students
values(7,"Farah","Isl","India",88,"B");
update students
set city = 'larkana'
where city = 'Nagasa';

update students
set marks = 81,grades = "B"
where std_id = 5;

update students
set marks = marks + 1;

/*Delete*/
delete from students
where std_id = 7;

delete from students
where marks < 75;

select * from students;








