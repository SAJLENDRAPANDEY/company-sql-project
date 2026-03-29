CREATE TABLE employee(
emp_id INT PRIMARY KEY,
name VARCHAR(100),
age INT,
gender VARCHAR(10),
department_id INT,
hire_date DATE,
city VARCHAR(50)
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE salaries(
    emp_id INT,
    salary INT,
    bonus INT,
    FOREIGN KEY(emp_id) REFERENCES employee(emp_id)
);

CREATE TABLE project(
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    start_date DATE,
    end_date DATE
);

CREATE TABLE project_assignments(
    emp_id INT,
    project_id INT,
    role VARCHAR(50),
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id),
    FOREIGN KEY (project_id) REFERENCES project(project_id)
);
