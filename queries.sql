CREATE TABLE EMPLOYEE (
  emp_id INTEGER PRIMARY KEY,
  emp_name TEXT NOT NULL,
  department TEXT NOT NULL,
  designation TEXT NOT NULL,
  salary INTEGER NOT NULL,
  city TEXT NOT NULL
);

INSERT INTO EMPLOYEE
VALUES
  (1, 'Farhan', 'CSE', 'Developer', 45000, 'Dhaka'),
  (2, 'Faria', 'CSE', 'Designer', 38000, 'Dhaka'),
  (3, 'Rahim', 'EEE', 'Engineer', 52000, 'Chittagong'),
  (4, 'Sadia', 'EEE', 'Analyst', 41000, 'Sylhet'),
  (5, 'Sabbir', 'BBA', 'Manager', 60000, 'Dhaka'),
  (6, 'Nusrat', 'CSE', 'Developer', 47000, 'Rajshahi'),
  (7, 'Tanvir', 'BBA', 'Analyst', 39000, 'Chittagong'),
  (8, 'Mitu', 'EEE', 'Engineer', 55000, 'Dhaka');



-- SELECT * FROM EMPLOYEE
-- WHERE department = 'BBA';

-- 1 answer 

SELECT emp_name, department, salary
FROM EMPLOYEE
WHERE salary >= 45000
ORDER BY salary DESC;



-- 2 Question Answe



SELECT emp_name, department
FROM EMPLOYEE
WHERE emp_name LIKE "Sa%";



-- 3  answer 

SELECT DISTINCT designation
FROM EMPLOYEE
ORDER BY designation;


-- 4 answer  

SELECT 
    department,
    SUM(salary) AS total_salary
FROM EMPLOYEE
GROUP BY department
ORDER BY total_salary DESC;






-- 5. answer
SELECT department,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM EMPLOYEE
GROUP BY department;


-- 6. answer
SELECT department,
       AVG(salary) AS avg_salary
FROM EMPLOYEE
GROUP BY department
HAVING AVG(salary) > 45000
ORDER BY avg_salary DESC;


-- 7. answer
SELECT emp_name, department, salary
FROM EMPLOYEE
ORDER BY department, salary DESC;


-- 8. answer
SELECT emp_name, city
FROM EMPLOYEE
WHERE city LIKE 'D%'
ORDER BY emp_name;


-- 9. answer
SELECT DISTINCT city
FROM EMPLOYEE
ORDER BY city;


-- 10. answer
SELECT emp_name, salary
FROM EMPLOYEE
WHERE salary BETWEEN 40000 AND 50000
ORDER BY salary ASC;


-- 11. answer
SELECT city,
       AVG(salary) AS avg_salary
FROM EMPLOYEE
GROUP BY city
HAVING AVG(salary) > 45000
ORDER BY avg_salary DESC;


-- 12. answer
SELECT emp_name, designation, salary
FROM EMPLOYEE
WHERE designation IN ('Engineer', 'Analyst')
ORDER BY salary DESC;



