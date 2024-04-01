DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

USE company_db;

CREATE TABLE departments(
    department_name VARCHAR (30) NOT NULL,
    id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE roles(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (30) NOT NULL,
    salary INT NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY(department_id) references departments(id)
);

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR (30) NOT NULL,
    last_name VARCHAR (30) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) references roles(id),
    manager_id VARCHAR (30) NOT NULL,
    FOREIGN KEY (employees_id) references employees(id)
);

