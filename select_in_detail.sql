create database if not exists college;
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
select std_id,name from students;
select distinct city,country from students; /*distinct key word se jo country distinct honge just whi aaege, like just Pak and USA, jha duplicate values nhi chaeye wha bhi ye use krskte hai.*/

select * from students where(city="Karachi");
select * from students where(std_id >= 3 and country="Pakistan");
select std_id,name from students where(std_id >= 4);

select * from students where std_id between 2 and 4; /*between 2 se 4 ke b/w ki jo std_id hogi unka data provide krdega*/

select * from students where city in ("Karachi","Delhi","Lahore"); /*agr aesi city likh di hai jo DB mai nhi hai tu error nhi aaega bcz jo just check krega kein cities ke jo honge unhe print kradega agr nhi honge tu us value ko chor dega, agr*/
select * from students where city not in ("Karachi","Delhi");
select * from students where city in ("Lahore"); /*in case mai koi error tu nhi aaega but khali table print hogi bcz lahore mai koi student nhi rehta*/

/*Limit clause: ye limit lga deta hai like if I want ke just 3 rows ka hi print ho tu limit 3 lga denge*/
select * from students limit 3;
select * from students where country = "USA" limit 5; /*limit mai condition bhi lga skte hai*/
select * from students order by marks desc;
/*Order By Clause: */
select * from students order by std_id desc;
select * from students order by country;
select * from students order by name;
select max(marks) from students;
select min(marks) from students;
select count(std_id) from students;
select sum(marks) from students;
select avg(marks) from students;

select count(*) from students where city="Karachi"; /*karachi 3 baar hai tu wo aagya*/

select city, avg(marks) from students group by city; /*group by ne city ki bases per 4 groups bna die, while agr country likhte tu uski bases per bnte, agr select ke baad jo bhi likhenge usse group by ke baad bhi likhna parhta phr uski bases per group bnta agr koi same city or letsay name aajata or count niklarhe hote tu same value hai tu count 2 hojata*/
/*Mostly group by ke saath aggregate function use krte hai*/

select city, avg(marks) from students group by city order by city;
select city, avg(marks) from students group by city order by avg(marks) desc;

create table payment(
	cus_id int primary key,
    customer varchar(20),
    mode varchar(20),
    city varchar(20)
);
insert into payment
(cus_id,customer,mode,city)
values
(101,"Nabeed","Netbanking","Karachi"),
(102,"Haroon","Netbanking","Karachi"),
(103,"Suleman","Credit Card","Karachi"),
(104,"Usman","Credit Card","Karachi"),
(105,"Turgut","Netbanking","Karachi"),
(106,"Ertugrul","Debit Card","Karachi"),
(107,"Bamsi","Credit Card","Karachi"),
(108,"Duhan","Debit Card","Karachi");

select * from payment;
/*Below query check the total payment a/c to each payment method*/
select mode,count(mode) from payment group by mode;

select grades,count(grades) from students group by grades;

/*Having clause: ye tb use krte hai jb group per condition lgano ho where just row per condition lgata hai group per nhi*/

select city,count(name)
from students
group by city
having max(marks) > 90; /*washington and larkana ke max marks 90 se km the islie wo 2 cities nhi aae*/

/*General order of claues*/
select city
from students
where grades="A"
group by city
having max(marks)>90
order by city d;







