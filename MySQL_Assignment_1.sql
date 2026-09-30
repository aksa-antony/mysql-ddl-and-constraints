CREATE DATABASE employee;
USE employee;
CREATE TABLE departments
(department_id INT,
department_name VARCHAR(100));

SELECT * FROM departments;

CREATE TABLE location(
location_id INT,
location VARCHAR(30));

CREATE TABLE employees(
employee_id INT,
employee_name VARCHAR(50),
gender ENUM('M','F'),
age INT,
hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2)
);

SELECT * FROM employees;

ALTER TABLE employees
ADD email VARCHAR(100);

ALTER TABLE employees
MODIFY designation VARCHAR(200);

ALTER TABLE employees
DROP COLUMN age;

ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE departments TO departments_info; 

RENAME TABLE location To locations;

TRUNCATE TABLE employees;

DROP TABLE employees;

SELECT * FROM employees;

DROP DATABASE employee;


CREATE DATABASE employee;
USE employee;

CREATE TABLE departments(
department_id INT PRIMARY KEY,
department_name VARCHAR(100) NOT NULL UNIQUE);

CREATE TABLE location(
location_id INT AUTO_INCREMENT PRIMARY KEY,
location VARCHAR(30) NOT NULL UNIQUE);

CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
gender ENUM('M', 'F'),
age INT CHECK (age >= 18),
hire_date DATE DEFAULT (CURRENT_DATE),
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2),
FOREIGN KEY (department_id) REFERENCES Departments(department_id),
FOREIGN KEY (location_id) REFERENCES Location(location_id)
);

SELECT*FROM employees;

DESCRIBE employees;