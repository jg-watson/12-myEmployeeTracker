DROP DATABASE IF EXISTS tracker_db;
CREATE DATABASE tracker_db;

USE tracker_db;

CREATE TABLE department (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
id PRIMARY Key AUTO_INCREMENT ,
title VARCHAR(30) NOT NULL,
salary INT NOT NULL,
department_id INT,
INDEX dep_ind (department_id),

);

CREATE TABLE employee (
id INT PRIMARY kEY AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT,
INDEX role_id (role_id,)
manager_id INT,
INDEX manager_id (manager_id)
);