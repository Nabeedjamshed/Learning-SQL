create database cust;
use cust;
create table if not exists temp1(
	id int primary key,
    city_name varchar(20),
    country varchar(20)
);

create table if not exists temp2(
	id int primary key,
    emp_name varchar(20),
    city_name varchar(20),
    city_id int,
    country varchar(20),
    salary int default 25000,
    foreign key (city_id) references temp1(id)
);

insert into temp1 values
(1,"Karachi","Pakistan"),
(2,"Delhi","India");

select * from temp1;

insert into temp2
(id,emp_name,city_name,city_id,country)
values
(101,"Haris","Lahore",1,"Pakistan",23000);
insert into temp2
(id,emp_name,city_name,city_id,country)
values
(102,"Masood","Karachi",2,"Pakistan"); /*is this eg salary ki value insert nhi ki tu usne default value leli*/
select * from temp2;

/*Check constrait se values per check(limit) lga skte hai like age value is se choti ho ya is se bari ho tab hi insert ho like:*/
create table if not exists adult(
	id int,
    name varchar(20),
    salary int,
    age int check(age>=18),
    constraint salary_check check(salary>=25000 and salary<100000)
);
insert into adult values(1,"Harry",26000,19);
insert into adult values(1,"Harry",17); /* This will gives an error bcz age 18 se km hai*/
insert into adult values(1,"Harry",15000,19); /*This gives an error bcz salary wrong input ki hai*/
insert into adult values(2,"Rohan",46000,20);
insert into adult values(3,"Subman",56000,23);
insert into adult values(4,"Neha",76000,24);
select * from adult;

select id,salary from adult; /*select ke baad jitne columns ke name mention kroge just whi aaege*/



