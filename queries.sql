CREATE TABLE EMPLOYEE (
  emp_Id INTEGER PRIMARY KEY,
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

-- SELECT emp_name, department, salary
-- FROM EMPLOYEE
-- WHERE salary > 45000
-- ORDER BY salary DESC;



-- 2 Question Answe



-- SELECT emp_name, department
-- FROM EMPLOYEE
-- WHERE emp_name LIKE "Sa%";



-- 3  answer 

-- SELECT DISTINCT designation
-- FROM EMPLOYEE
-- ORDER BY designation;


-- 4 answer  

-- SELECT 
--     department,
--     SUM(salary) AS total_salary
-- FROM EMPLOYEE
-- GROUP BY department
-- ORDER BY total_salary DESC;



















