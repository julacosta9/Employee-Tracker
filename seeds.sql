/* Seeds for SQL table. !!!CHANGE DB NAME IF DIFFERENT!!! */
USE employeesDB;
/* !!!CHANGE COLUMN NAMES IF DIFFERENT!!! */
INSERT INTO department (id, department_name)
VALUES (900, "Intructors");
INSERT INTO department (id, department_name)
VALUES (800, "TA's");
INSERT INTO department (id, department_name)
VALUES (100, "Students");
/* !!!CHANGE COLUMN NAMES IF DIFFERENT!!! */
INSERT INTO employee_role (id, title, salary, department_id)
VALUES ( 910,"Instructor", 100000.00, 900);
INSERT INTO employee_role (id, title, salary, department_id)
VALUES ( 810,"TA", 90000.00, 800);
INSERT INTO employee_role (id, title, salary, department_id)
VALUES ( 110,"Student", 0.00, 100);
/* !!!CHANGE COLUMN NAMES IF DIFFERENT!!! */
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (911, "Harrison", "Schaen", 910, NULL);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (811, "Steph", "Huynh", 810, 911);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (812, "Steven", "Landgraf", 810, 911);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (111, "Daniel", "Angulo", 110, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (112, "Said", "Aguilar", 110, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (113, "Matthew", "Bell", 110, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (114, "Julian", "Acosta", 110, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (115, "Tyler", "Arthur", 110, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (116, "Javier", "Banuelos", 110, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (117, "Art", "Aragon", 110, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (118, "Cara", "Bunnell", 110, 811);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (119, "Jaycee", "Bagtas", 110, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (120, "Alexia", "Chalita", 110, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (121, "Lizbeth", "Glasser", 110, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (122, "Collin", "Kier", 110, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (123, "Brian", "Monteverde", 110, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (124, "Greg", "Schuman", 110, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (125, "Amy", "Fabella", 110, 812);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (126, "Jason", "Riley", 110, 812);