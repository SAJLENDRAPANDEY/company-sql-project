-- 1. Avg age per department
SELECT department_id ,AVG(age)
FROM employee
GROUP BY department_id;

-- 2. Employee with department
SELECT e.name , d.dept_name
FROM employee e
JOIN departments d ON e.department_id=d.dept_id;

-- 3. Employee + salary
SELECT e.name , d.dept_name,s.salary
FROM employee e
JOIN departments d ON e.department_id=d.dept_id
JOIN salaries s ON e.emp_id=s.emp_id;

-- 4. Avg salary per department > 30000
SELECT e.department_id , AVG(s.salary)
FROM employee e
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY e.department_id
HAVING AVG(s.salary) > 30000;

-- 5. Highest salary employee
SELECT e.name ,s.salary
FROM employee e
JOIN salaries s ON e.emp_id=s.emp_id
ORDER BY s.salary DESC
LIMIT 1;

-- 6. Employees in AI System project
SELECT e.name,p.project_name
FROM employee e
JOIN project_assignments ps ON e.emp_id=ps.emp_id
JOIN project p ON p.project_id=ps.project_id
WHERE p.project_name='AI System';

-- 7. Top 3 salaries
SELECT e.name , s.salary
FROM employee e
JOIN salaries s ON e.emp_id=s.emp_id
ORDER BY salary DESC
LIMIT 3;

-- 8. Employees not assigned
SELECT e.name
FROM employee e
LEFT JOIN project_assignments ps ON e.emp_id=ps.emp_id
WHERE ps.emp_id IS NULL;

-- 9. Department with highest salary
SELECT e.department_id, SUM(s.salary) AS total_salary
FROM employee e
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY e.department_id
ORDER BY total_salary DESC
LIMIT 1;

-- 10. Highest bonus
SELECT e.name ,s.bonus
FROM employee e
JOIN salaries s ON e.emp_id = s.emp_id
ORDER BY bonus DESC
LIMIT 1;

-- 11. Salary > department avg
SELECT e.name, s.salary
FROM employee e
JOIN salaries s ON e.emp_id = s.emp_id
WHERE s.salary > (
    SELECT AVG(s2.salary)
    FROM employee e2
    JOIN salaries s2 ON e2.emp_id = s2.emp_id
    WHERE e2.department_id = e.department_id
);

-- 12. Second highest salary
SELECT e.name,s.salary
FROM employee e
JOIN salaries s ON e.emp_id=s.emp_id
WHERE s.salary = (
    SELECT MAX(salary)
    FROM salaries
    WHERE salary < (SELECT MAX(salary) FROM salaries)
);

-- 13. Employees per project
SELECT project_id , COUNT(emp_id) AS employees_count
FROM project_assignments
GROUP BY project_id;

-- 14. Dept wise max salary
SELECT e.department_id , MAX(s.salary) AS max_salary
FROM employee e
JOIN salaries s ON e.emp_id=s.emp_id
GROUP BY e.department_id;
