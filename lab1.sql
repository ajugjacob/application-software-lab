/* Using preexisting database */
use lab;
/* Creating a Table */
create table student (sno int primary key,
name varchar(255),
mark int,
dept varchar(255));
/* Inserting dummy values in the table */
INSERT INTO student VALUES(1,'Tom',50,'Computer Science');
INSERT INTO student VALUES(2,'Lucy',70,'Electronics');
INSERT INTO student VALUES(3,'Frank',60,'Instrumentation');
INSERT INTO student VALUES(4,'Jane',80,'Electrical');
INSERT INTO student VALUES(5,'Robert',90,'Computer Science');
/* Showing the contents of the table */
select * from student;
/* Adding an age column */
ALTER TABLE student ADD age int;
/* Showing columns in the table */
select columns from student;
/* Modifying the varchar length of deot from 255 to 100 */
alter table student modify column dept varchar(100);
/* Showing columns in the table */
show columns from student;
/* Dropping column called mark */
alter table student drop column mark;
/* Showing columns in the table */
show columns from student;
/* Renaming table to students */
alter table student rename to students;
/* Showing the tables in the database */
show tables;
/* Deleting the table from the database */
drop table students;
/* Showing the tables in the database */
show tables;
