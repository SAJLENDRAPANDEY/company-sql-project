INSERT INTO departments VALUES
(1, 'IT', 'Delhi'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Bangalore');

INSERT INTO employee VALUES
(101, 'Rahul', 25, 'Male', 1, '2022-01-10', 'Delhi'),
(102, 'Sneha', 28, 'Female', 2, '2021-03-15', 'Mumbai'),
(103, 'Amit', 30, 'Male', 1, '2020-07-20', 'Delhi'),
(104, 'Priya', 27, 'Female', 3, '2023-02-11', 'Bangalore'),
(105, 'Karan', 35, 'Male', 3, '2019-11-05', 'Bangalore');

INSERT INTO salaries VALUES
(101, 50000, 5000),
(102, 60000, 6000),
(103, 70000, 7000),
(104, 65000, 6500),
(105, 80000, 8000);

INSERT INTO project VALUES
(1, 'AI System', '2023-01-01', '2023-12-31'),
(2, 'HR Portal', '2022-06-01', '2023-06-01');

INSERT INTO project_assignments VALUES
(101, 1, 'Developer'),
(103, 1, 'Lead'),
(102, 2, 'Manager'),
(104, 2, 'Analyst');



SELECT * FROM employee;


SELECT * FROM employee WHERE city='Delhi';
