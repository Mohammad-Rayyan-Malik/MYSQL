-- To create database
CREATE DATABASE mohammad_rayyan;

-- To see all databases
SHOW DATABASES;

-- To select database (syntex_USE db_name)
USE petshop;
-- To show all tables first used database and then (show table)
SHOW TABLES;

USE mohammad_rayyan;

SHOW TABLES;

-- To delete database (DROP DATABASE db_name)
DROP DATABASE mohammad_rayyan;
SHOW DATABASES;
--  create table
CREATE TABLE employee(
employee_id INT,
first_name VARCHAR(50),
Last_name VARCHAR(50)
);
SHOW TABLES;


CREATE TABLE student(
rool_no INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT,
birth_date DATE,
phone_no INT
);

-- desc (describe tables detials)
DESC employee;
drop table student;

-- ALTER used for edit in existing table either add or delete
-- ALTER TABLE < table_name> ADD COLUMN <column_name> <data_type>
ALTER TABLE student ADD COLUMN address VARCHAR(50);
DESC student;	


-- ALTER TABLE < table_name> ADD COLUMN <new_column_name> <data_type> AFTER < EXISTING_COLUMN_NAME>
ALTER TABLE student ADD COLUMN teacher_name VARCHAR(50) AFTER age;
DESC student;

-- ALTER TABLE <table_name> ADD COLUMN< new_column_name> <data_type> FIRST;
ALTER TABLE student ADD COLUMN email VARCHAR (80) FIRST;
DESC student;


--  to delete existing column
-- ALTER TABLE <table_name> DROP COLUMN <COLUMN NAME>;
ALTER TABLE student DROP COLUMN email;


DROP TABLE employee;
SHOW TABLES;
DESC student;

CREATE TABLE library(
libraray_name VARCHAR(80),
book VARCHAR (50), 
id INT 
);
SHOW TABLES; 
DESC library;

-- TO RENAME THE COLUMN NAME
ALTER TABLE < table_name> CHANGe <OLD_COL_NAME> <NEW_COL_NAME>
ALTER TABLE library CHANGE book notebook VARCHAR(50);
ALTER TABLE library CHANGE 	id library_id INT;

-- TO RENAME THE TABLE NAME
-- ALTER TABLE <OLD_TABLE_NAME> RENAME TO <NEW_TABLE_NAME>
ALTER TABLE library RENAME TO library_detials;
SHOW TABLES;


CREATE DATABASE tata_company;
 USE tata_company;
 CREATE TABLE department(
 department_id CHAR(4),
 department_name VARCHAR(40)
 );
 
 
 DESC department;
 
 ALTER TABLE department ADD COLUMN department_type VARCHAR(30);
 ALTER TABLE department DROP COLUMN department_type;


-- INSERT INTO <table_name> VALUES (V1, V2,V3.......)
INSERT INTO department VALUES ("D1","IT");
select * from department;

-- INSERT INTO <table_NAME> (COLUMN_NAME) VALUES (C1V1,C2V2...)

INSERT INTO department (department_id) VALUES ("D2");
SELECT * FROM department;


INSERT INTO department ( department_name) VALUES ("vedant");
select * from department;
INSERT INTO department VALUES ("D4","RAYYAN");
INSERT INTO department (department_name, department_id) VALUES ("faizan","D5");
select *  FROM department;


CREATE TABLE employe(
emplyee_id int,
employee_name  VARCHAR(50),
employee_age INT
);
DESC employe;

INSERT INTO employe VALUES ("1","RAYYAN","21");
SELECT * FROM employe;
INSERT INTO employe (emplyee_id, employee_age) VALUES ("2","32");

INSERT INTO employe (emplyee_id, employee_name) VALUES (21,"faizan");



-- INSERT INTO <table_ name> VALUE (V1,V2,V3),(V1,V2,V3) ITS USED FOR WITHOUT COLUMN NAME
-- INSERT INTO <table_ name> (C1,C2) VALUES (V1-V2),(V1,V2)  ITS USED FOR WITH COLUMN NAME

INSERT INTO employe VALUES 
(22,"Qasim",50),
(22,"Qasim",50),
(22,"Qasim",50),
(22,"Qasim",50);
select * FROM employe;


INSERT INTO employe (emplyee_id, employee_name) VALUES 
(23,"ASRAR"),
(25,"IMRAN"),
(24,"NISAR");

show databases;
use tata_compamy;
CREATE TABLE computer_type(
computer_id char(8),
computer_name varchar(70),
compUter_capacity VARCHAR(80)
);

ALTER TABLE computer_type ADD COLUMN moniters VARCHAR(70) FIRST;
DESC computer_type;

INSERT INTO computer_type (computer_id,computer_name, compUter_capacity) VALUES ("20","LENOVO","126GB"),
 ("25","HP","120GB"),
  ("21","SAMSUNG","64GB"),
   ("22","WEX","512GB"),
    ("23","LENOVO","256GB");
    SELECT * FROM computer_type;

SHOW TABLES;

ALTER TABLE computer_type MODIFY computer_name VARCHAR(50);   


drop table computer_type;        
CREATE TABLE department(
Department_id INT UNIQUE NOT NULL,
department_name VARCHAR(60) NOT NULL
);


SHOW TABLES;

INSERT INTO department values (101,"qasim");

DESC department;
SELECT * FROM department;
INSERT INTO department VALUE (NULL,"RAYYAN");
INSERT INTO department VALUES (103,NULL);

drop table department;
SELECT * FROM department; 


CREATE TABLE faizan(
faizan_id char(2) PRIMARY KEY,
faizan_name VARCHAR(60) NOT NULL,
email_id VARCHAR(90) UNIQUE NOT NULL
);

DESC faizan;

INSERT INTO faizan (faizan_id,email_id) VALUES ("01",RAYYAN111);




-- to add not null constraint
-- ALTER TABLE <table name> MODIFY <COL-NAME> <DATA-TYPE> ; 
-- TO REMOVE NOT NULL
-- ALTER TABLE <table name> MODIFY <COL-NAME> <DATA-TYPE> ; 

ALTER TABLE faizan MODIFY faizan_name VARCHAR (60) not null;
DESC faizan;

ALTER TABLE faizan MODIFY faizan_name varchar(80);


ALTER TABLE faizan DROP INDEX email_id;
ALTER TABLE faizan ADD UNIQUE (EMAIL_ID);


ALTER TABLE faizan DROP primary key;
DESC FAIZAN;

ALTER TABLE faizan ADD PRIMARY KEY(faizan_id);


alter table faizan ADD COLUMN FAIZAN_SALARY Int ;
DESC faizan;

ALTER TABLE faizan ALTER faizan_salary SET DEFAULT (100);
desc faizan;
insert into faizan (faizan_id,faizan_name,email_id) VALUES
("E2","hi","n@GAIL");
insert into faizan (faizan_id,faizan_name,email_id,FAIZAN_SALARY) VALUES
("E3","hi","@GAIL", 50000);
ALTER TABLE faizan ADD COLUMN addmission_date datetime;

DESC faizan;
select * FROm faizan;

-- ALTER TABLE <TABLE_NAME> ADD CONSTRAINT <CONSTRAINT_NAME> CHECK (CONDITION);
ALTER TABLE faizan ADD CONSTRAINT CHECK_SALARY CHECK (faizan_salary>=0);
insert into faizan values ("w1","gg","@aaaa","10","2001-01-01 10:10:10");

ALTER TABLE faizan ADD CONSTRAINT check_salary check (faizan_salary>100);
insert into faizan values ("q1","dd","@bbb","12","2002-01-01 00:00:10");

-- ALTER TABLE <TABLE_ NAME> DROP CONSTRAINT <CONSTRAIT_NAME>;
ALTER TABLE FAIZAN DROP CONSTRAINT CHECK_SALARY;
INSERT INTO faizan VALUES ("SS","DS","100@","-20","2002-01-01 01:01:20"); 
SELECT *FROM FAIZAN;











CREATE TABLE category(
c_id int primary key,
name_ varchar(30 )not null
);
desc category;

CREATE TABLE product (
p_id INT primary KEY,
P_NAME VARCHAR(60) NOT NULL,
P_PRICE INT DEFAULT 0 CHECK (P_PRICE>=0),
C_ID INT,
-- constraint <constraint name > foreign key <column name> reference <where table name><column name>
CONSTRAINT CATEGORY_PRODUCT FOREIGN KEY (C_ID)
REFERENCES CATEGORY (C_ID)
);
select *from category;
select * from product;
 
DESC product;
DESC CATEGORY;
INSERT INTO category values (1,"laptop");
INSERT INTO PRODUCT (P_ID, p_name, p_price,c_id)VALUES (13,"ZARA","1000",1);


--
select (100>89);
select (100>101);
select (100<=77);
select (100<100);
select  (100<=89)  ;
select (-10<10);

-- and (all statement should be true)
select (1000>100 and 55<110 and 33!=1000);
select (100=100 and 22>1);


-- or (atlast one statement needs to be true)
select (100>10 or 100=10);


-- not after select can change the statement if true it can false
select not (0=1 or 100<10);



CREATE TABLE department(
D_id CHAR (20) PRIMARY KEY,
derpartment VARCHAR (100) NOT NULL
);
drop table department;
CREATE TABLE employee (
E_id CHAR(20) PRIMARY KEY,
ename VARCHAR (20) NOT NULL,
city varchar (30),
salary int,
department char (20),
CONSTRAINT EMPLOYEE_DEPARTMENT FOREIGN KEY (department)
REFERENCES department (D_id)
);


INSERT INTO department VALUES ("D1","MARKETING"),
("D2","IT"),
("D3","human resourses");


INSERT INTO employee VALUES ("E1","nikita","mumbai",67000,"D1"),
("E2","prajakta","pune",80000,"D1"),
("E3","manisha","banglore",20000,"D2"),
("E4","nilesh","mumbai",35400,"D3"),
("E5","monal","pune",34452,"D2");
select * from employee;
select * from  department;



-- select <column name,.....> from <table_name>
SELECT e_id from employee;

DESC employee;
select e_id,salary FROM employee;















-- ALTER TABLE <TABLE_NAME> DROP FOREIGN KEY <CONSTAINT NAME>
ALTER TABLE product drop foreign key CATEGORY_PRODUCT;

INSERT INTO PRODUCT VALUES (121,"shirt","10000",11);
insert into category VALUES (1000,"clothes");

ALTER TABLE product ADD CONSTRAINT category_product foreign key
(c_id) REFERENCES category (c_id);





CREATE TABLE school(
s_id int primary key,
s_name varchar (30)
);

CREATE TABLE student(
roll_no int primary key,
st_name varchar (40) not null,
phone_no bigint,
s_id int,
constraint student_school foreign key (s_id)
references school (s_id)
);

INSERT INTO school values (11,"amit");
INSERT INTO student values (22,"mishra",9322018,11);

select * from school;
select *from student;











CREATE TABLE TEACHER (
teacher_id int primary key,
teacher_name VARCHAR (50) NOT NULL
);

CREATE TABLE COURSES(
c_id char(11) primary key,
c_name varchar (50) not null,
teacher_id int,
CONSTRAINT teacher_courses FOREIGN KEY (teacher_id)
REFERENCES teacher (teacher_id)
);
desc courses;






