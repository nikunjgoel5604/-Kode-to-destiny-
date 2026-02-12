/* In SQL we some certain command to Run , update delete or more to do in SQL
for That SQL commands are divide in to 5 categories :- 
                                              1. DDL - Data Definition Language 
                                              2. DML - Data Manipulation Language
                                              3. DQL - Data Query Language 
                                              4. DCL - Data Control Langauge 
                                              5. TCL - Transaction Control Langauge */
                                              
-- 1. DDL command are use to create and modify databse struture
-- we use DDL becuse before inser tdata we must define structure 
-- DDL 	command are :-  CREATE , ALTER , DROP TRUNCATE , RENAME.

create database college_db; -- we create the Databse with the name college_db;
show databases;  -- now we have create the databse so check it is the database create sucessfull or not so we use show database to know about that.
use college_db;  -- now we know that our database is create sucessfull . so use acesses that database we use a command use college_db (here college_db is the database name).
create table student (
student_id int primary key, -- here you see we make a key primary key . we study about that quite later.
name varchar(255),
age int);
alter table student add city varchar(255); -- alter is use to add or remove something from the table 
truncate table student; --  Remove all records but keep structure
-- drop table student; --  # Delete table permanently with all the record and drop also use to delete the database complete.
desc student; -- DESC (or DESCRIBE) is used to display the structure of a table.


/*  2 DML commands are use to manipulate data inside table for insert change delete the data .
DML commands are Insert change delete  */

insert into student values (001,'Nikunj',21,'Delhi'),
(002,"Bhavya",20,"Nodia");
select * from student;  -- you see we have insert some values in table to see the table we select command here 

update student set city ="Noida" where student_id =001;
select * from student;

insert into student value (003,"Rahul", 21, "Delhi");
select * from student;  -- here you see we add one me value in table . 
/* In SQL Value and values are two diffent thing - value mean to add single value in table 
values means to add one and more values in table .
So We recommend use values */

delete from student where student_id =003;
select * from student;

/* DQL command use to retrieve data from database.
why -  to analyze or view stored data
DQL Command are - select, where,  order by, group by, having, limit, distinct  */

-- firt we add few values in table to excute more funtion in SQL. 
insert into student value
 (003, "Rahul", 21," Delhi"),
(004, 'aman',20,'Rajasthan'),
(005,'Raju',19,'BSR');
select * from student; -- to view all the values in our database. 
select name, city from student; -- to view specfic column and their value. 
select distinct age from student; -- to view only unique values it remove the dulicate values. 
select * from student where age >=20; -- -- Students having age greater than equal 20  and Comparison Operators.
select * from student order by name asc; -- to view the data in acesding order. 
select * from student order by city desc; -- to view the data in desending order. 
select * from student limit 2; -- view only top value . 
SELECT * FROM student WHERE city = 'BSR' AND age = 19; -- use of "AND" oprator. 
select * from student where age BETWEEN 20 and 21; -- use amd and betwwen oprator togethere. 
select * from student where city In ("Nodia", "Rajasthan");
select * from student where name like "b%";-- it show that first letter will be B.
select * from student where name like "%j";-- it show that last letter will be J.
-- aggreagate funtion - for calculation on multiplte rows. 
SELECT COUNT(*) FROM student; -- Total students
SELECT AVG(age) FROM student; -- Average marks
SELECT MAX(age) FROM student; -- Highest marks
select city, count(*) from student group by city; 
SELECT city, COUNT(*) FROM student GROUP BY city HAVING COUNT(*) >= 1; -- Cities having more than 1 student

/* DCL commands are used to control access and permissions in a database.
They decide:
Who can access data
What operations a user can perform . Security of database

🔹 Why We Use DCL
In real companies:
Multiple users access same database. Not everyone should modify data
Some users only read data. Some users manage database.
Example:
Data Analyst → SELECT only
Developer → INSERT, UPDATE
Admin → Full access

DCL commands are :- GRANT, revoke
 GRANT is used to give permissions to a user.
 GRANT privilege
ON database_name.table_name
TO user_name;
🔹 Types of Privileges
SELECT   → Read data
INSERT   → Add data
UPDATE   → Modify data
DELETE   → Remove data
ALL      → All permission

REVOKE removes permissions from a user.
🔹 Syntax
REVOKE privilege
ON database_name.table_name
FROM user_name;
*/
-- STEP 01 Step 1 — Create User (Admin Work)
CREATE USER 'analyst1'@'localhost'
IDENTIFIED BY 'Qwerty@#0113';  
-- Step 2 — Give Permission
GRANT SELECT
ON college_db.student
TO 'analyst1'@'localhost';

-- Give SELECT permission to user1
GRANT SELECT
ON college_db.student
TO 'user1'@'localhost';

# Give insert and update permission
GRANT INSERT, UPDATE
ON college_db.student
TO 'user1'@'localhost';

-- Give all permissions
GRANT ALL PRIVILEGES
ON college_db.*
TO 'admin1'@'localhost';

-- Remove read permission
REVOKE SELECT
ON college_db.student
FROM 'user1'@'localhost';

-- Remove read permission
REVOKE SELECT
ON college_db.student
FROM 'user1'@'localhost';

# Remove all access
REVOKE ALL PRIVILEGES
ON college_db.*
FROM 'user1'@'localhost';

-- Step 3 — Remove Permission (if needed)
REVOKE SELECT
ON college_db.student
FROM 'analyst1'@'localhost';












