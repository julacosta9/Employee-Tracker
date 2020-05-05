DROP DATABASE IF EXISTS employeesDB;

CREATE DATABASE employeesDB;
USE employeesDB;

CREATE TABLE department
(id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(30)
);

CREATE TABLE roles
(id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(30),
salary DECIMAL(10,2),
department_id INT
);

CREATE TABLE employee
(id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(30),
last_name VARCHAR(30),
role_id INT,
manager_id INT
);

/* !!!CHANGE COLUMN NAMES IF DIFFERENT!!! */
INSERT INTO department (department_name) VALUES
("Instructors"), ("TA's"), ("Students");

INSERT INTO roles (title, salary, department_id) VALUES
("Instructor", 100000.00, 1), ("TA", 90000.00, 2), ("Student", 0.00, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
("Harrison", "Schaen", 1, NULL),
("Steph", "Huynh", 2, 1),
("Steven", "Landgraf", 2, 1),
("Daniel", "Angulo", 3, 2),
("Said", "Aguilar", 3, 2),
("Matthew", "Bell", 3, 2),
("Julian", "Acosta", 3, 2),
("Tyler", "Arthur", 3, 2),
("Javier", "Banuelos", 3, 2),
("Art", "Aragon", 3, 2),
("Cara", "Bunnell", 3, 2),
("Jaycee", "Bagtas", 3, 3),
("Alexia", "Chalita", 3, 3),
("Lizbeth", "Glasser", 3, 3),
("Collin", "Kier", 3, 3),
("Brian", "Monteverde", 3, 3),
("Greg", "Schuman", 3, 3),
("Amy", "Fabella", 3, 3),
("Jason", "Riley", 3, 3);