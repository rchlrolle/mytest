
CREATE TABLE `practice_Rolle`.`employee` (
    `id` INT NOT NULL,
    `name` VARCHAR(45) NULL,
    `city` VARCHAR(45) NULL,
    `salary` VARCHAR(45) NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (101, 'rahul', 'hyderabad', '30000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (102, 'sarah', 'delhi', '35000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (103, 'john', 'mumbai', '40000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (104, 'emma', 'bangalore', '32000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (105, 'david', 'chennai', '38000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (106, 'lisa', 'pune', '29000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (107, 'michael', 'kolkata', '31000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (108, 'jessica', 'ahmedabad', '36000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (109, 'james', 'jaipur', '33000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (110, 'sophia', 'lucknow', '34000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (111, 'ryan', 'surat', '37000');
INSERT INTO `practice_Rolle`.`employee` (`id`, `name`, `city`, `salary`) VALUES (112, 'olivia', 'kanpur', '28000');

SELECT * FROM `practice_Rolle`.`employee`;

#addition
SELECT id, name, salary, salary + 10000 as employee_new_salary FROM employee;
#subtration
SELECT id, name, salary, salary - 2000 as employee_new_salary FROM employee;
#multiplication
SELECT id, name, salary, salary *2 as employee_new_salary FROM employee;
#division
SELECT id, name, salary, salary / 2 as employee_new_salary FROM employee;

#OPERATORS
#equal
SELECT * FROM employee WHERE salary = 40000;
#not equal to
SELECT * FROM employee WHERE salary != 30000;
#greater than
SELECT * FROM employee WHERE id >104;
#less than
SELECT * FROM employee WHERE id <105;
#greater than equal to
SELECT * FROM employee WHERE salary >= 35000;
#less than equal to
SELECT * FROM employee WHERE salary <= 30000;

#LOGICAL OPERATORS
#and
SELECT * FROM employee WHERE salary > 25000 and city = 'hyderabad';
#or
SELECT * FROM employee WHERE salary < 30000 or city = 'bangalore';
#between
 SELECT * FROM employee WHERE salary between 20000 and 35000;
 #not 
 SELECT * FROM employee WHERE NOT salary = 40000;
 
 #EXPRESSIONS
 
 CREATE TABLE `practice_Rolle`.`student` (
    `roll no` INT NOT NULL,
    `name` VARCHAR(45) NULL,
    `age` VARCHAR(45) NULL,
    `city` VARCHAR(45) NULL,
    `date of birth` DATE NULL,
    `stream` VARCHAR(45) NULL,
    `total marks` VARCHAR(45) NULL,
    PRIMARY KEY (`roll no`)
);

INSERT INTO `practice_Rolle`.`student` (`roll no`, `name`, `age`, `city`, `date of birth`, `stream,`, `total marks`) 
VALUES 
(5, 'Michael Johnson', '24', 'Dallas', '1997-08-25', 'Science', '490'),
(6, 'Emma Davis', '20', 'San Francisco', '2001-04-12', 'Arts', '410'),
(7, 'James Wilson', '22', 'Miami', '1999-07-18', 'Commerce', '470'),
(8, 'Sophia Martinez', '21', 'Austin', '2000-01-05', 'Science', '480'),
(9, 'Olivia Anderson', '23', 'Seattle', '1998-10-22', 'Arts', '430'),
(10, 'William Taylor', '20', 'Boston', '2001-03-08', 'Commerce', '450'),
(11, 'Isabella Thomas', '22', 'Philadelphia', '1999-06-14', 'Science', '460'),
(12, 'Daniel Garcia', '21', 'Phoenix', '2000-02-28', 'Arts', '420'),
(13, 'Ava Martinez', '23', 'San Antonio', '1998-12-15', 'Commerce', '490'),
(14, 'Alexander Robinson', '20', 'Denver', '2001-01-20', 'Science', '470'),
(15, 'Mia Hernandez', '22', 'San Diego', '1999-05-10', 'Arts', '430'),
(16, 'Ethan Young', '21', 'Portland', '2000-03-25', 'Commerce', '480'),
(17, 'Camila Lewis', '23', 'Las Vegas', '1998-09-07', 'Science', '460'),
(18, 'Benjamin Walker', '20', 'Detroit', '2001-02-14', 'Arts', '410'),
(19, 'Charlotte Hall', '22', 'Atlanta', '1999-04-02', 'Commerce', '470'),
(20, 'Elijah King', '21', 'Chicago', '2000-06-30', 'Science', '480');

USE practice_Rolle;
DELETE FROM student WHERE `roll no` = 1;
#TRUNCATE and DROP TABLE statements delete entire table

SELECT *FROM student;

SELECT *FROM student;
#EXPRessions
#boolean
SELECT * FROM STUDENT WHERE city = 'Denver';
SELECT * FROM STUDENT WHERE `total marks` = 490;
#numeric 
SELECT * FROm student WHERE `total marks` / 2 >200;

SELECT AVG(`total marks`) FROM STUDENT; #shows averages of student marks
SELECT SUM(`total marks`) FROM STUDENT; #show total

#Date
SELECT * FROM student WHERE `date of birth` <'1999-01-01';
SELECT current_timestamp();

#Create a Database

CREATE DATABASE project;
SHOW databases;

#Selecting database

#scenerio : create table student will result in an error is a database is not selected
USE project;

#dropping database (deleting it permanently from the system)
DROP database project;



ALTER TABLE employee ADD (dob date); #add dob collumn
SELECT*FROM employee;

ALTER TABLE employee RENAME TO employee_new;

CREATE TABLE employee_details SELECT * FROM employee_new; #you can use this to copy information from a table
SELECT * FROM employee_details;

library(tidyverse)
library(dplyr)
library(data.table)

diamonds

diamonds%>%
  select(carat,cut,price)%>%
  filter(cut == "Premium")%>%
  filter(price > 7000 & price < 10000)%>%
  arrange(desc(carat))%>%
  slice(1:20)


