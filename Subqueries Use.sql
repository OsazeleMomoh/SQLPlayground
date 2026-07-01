#Subqueries

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE employee_id IN
					(SELECT employee_id
					FROM Parks_and_Recreation.employee_salary
                    WHERE dept_id = 1)
;

SELECT first_name, salary, 
(SELECT AVG(salary)
FROM Parks_and_Recreation.employee_salary)
FROM Parks_and_Recreation.employee_salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
;

SELECT AVG(max_age)
FROM
(SELECT gender, 
AVG(age) AS avg_age, 
MAX(age) AS max_age, 
MIN(age) AS min_age, 
COUNT(age)
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender) AS aggregated_table
;
