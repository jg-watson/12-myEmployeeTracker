DROP DATABASE IF EXISTS tracker_db;
CREATE DATABASE tracker_db;

USE tracker_db;

CREATE TABLE department (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
id INT NOT NULL AUTO_INCREMENT PRIMARY Key,
title VARCHAR(30),
salary INT,
department_id INT
);

CREATE TABLE employee (
id INT PRIMARY kEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
role_id INT,
manager_id INT

);