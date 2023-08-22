USE employees;

SELECT d.dept_name AS D_Name, CONCAT(e.first_name, ' ', e.last_name) AS D_Manager
FROM departments d
         JOIN dept_manager dm
              ON d.dept_no = dm.dept_no
         JOIN employees e
              ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;


SELECT d.dept_name AS D_Name, CONCAT(e.first_name, ' ', e.last_name) AS D_Manager
FROM departments d
         JOIN dept_manager dm
              ON d.dept_no = dm.dept_no
         JOIN employees e
              ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT DISTINCT t.title AS title, COUNT(*) AS Total
FROM departments d
         JOIN dept_manager dm
              ON d.dept_no = dm.dept_no
         JOIN  titles t
              ON dm.emp_no = t.emp_no
WHERE dm.to_date = '9999-01-01'
GROUP BY t.title;



