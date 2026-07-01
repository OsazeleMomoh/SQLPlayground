#GROUP BY groups rows that have the same values in the column that is being grouped by

SELECT *
FROM Parks_and_Recreation.employee_demographics;

SELECT gender
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
;

#GROUP BY works well with aggregate functions
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM Parks_and_Recreation.employee_salary
GROUP BY occupation, salary
;

#ORDER BY sorts results in ascending or descending order
SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY gender, age
;

#We can order by positions of the columns but do not recommend
SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY 5, 4
;