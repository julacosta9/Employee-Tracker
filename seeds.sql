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
INSERT INTO department (department_name)
VALUES ("Instructors");
INSERT INTO department (department_name)
VALUES ("TA's");
INSERT INTO department (department_name)
VALUES ("Students");

INSERT INTO roles (id, title, salary, department_id)
VALUES ("Instructor", 100000.00, 1);
INSERT INTO roles (id, title, salary, department_id)
VALUES ("TA", 90000.00, 2);
INSERT INTO roles (id, title, salary, department_id)
VALUES ("Student", 0.00, 3);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Harrison", "Schaen", 1, NULL);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Steph", "Huynh", 2, 911);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Steven", "Landgraf", 2, 911);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Daniel", "Angulo", 3, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Said", "Aguilar", 3, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Matthew", "Bell", 3, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Julian", "Acosta", 3, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Tyler", "Arthur", 3, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Javier", "Banuelos", 3, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Art", "Aragon", 3, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Cara", "Bunnell", 3, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Jaycee", "Bagtas", 3, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Alexia", "Chalita", 3, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Lizbeth", "Glasser", 3, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Collin", "Kier", 3, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Brian", "Monteverde", 3, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Greg", "Schuman", 3, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Amy", "Fabella", 3, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("Jason", "Riley", 3, 812);