create database if not exists student; 
use student;
create table Stds(
	id int primary key,
    name varchar(50),
    age int not null
);
insert into Stds values(1,"Nabeed",20);
insert into Stds values(2,"Filza",17);
insert into Stds values(5,"Nabeed",20);
insert into Stds values(3,"Sualiha",15), (4,"Jamshed",45);

select * from Stds;

show tables;
show databases;	
