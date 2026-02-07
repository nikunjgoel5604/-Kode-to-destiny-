create database	 collage_db;
use collage_db;
create table students(
student_id int primary key,
Student_name varchar(255),
age int, 
city varchar(255));
alter table students add email varchar(255);
alter table students modify age int;
alter table students drop email; -- Drop is use to delete any database , column , table and more . 
drop table students;
truncate table students; -- here i will show you the student table will not exits becasue in previous comit we delete the table . here are to 2 now first on is that create the database again . or know how truncate tbale work . 
-- truncate means it reomve / delete the data inside the table but dont's delete the entired table . 
-- so now we praticers truncate , for truncate we create the student table. 
create table students(
student_id int primary key,
Student_name varchar(255),
age int, 
city varchar(255));
insert into students values (001,'Nikunj',21,'Nodia');
select * from students; -- here you see the their is somedata in the student table so now see it with truncate.
truncate table students;
select * from students; -- here you see that date from the table students is remove but table is here.
insert into students values (001,'Nikunj',21,'Nodia'),
(002,'Rahul',21,"Delhi");
select * from students;
insert into students(student_id, Student_name)
values(003, "Nitin");
select * from students; -- here you see that the information of nitin is not complete. to complte it we use update
update students set city ='Nodia',
age = 21 where student_id = 3;
select * from students; -- now you will se the nitin information is complete. & update works in SQL