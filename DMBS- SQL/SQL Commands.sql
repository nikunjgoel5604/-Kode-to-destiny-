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


-- 








