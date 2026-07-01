#JOINS - allows one to combine 2 or more tables together if they have a common column. Doesn't have to be the same name but the data to be used for the joins have to be similar

SELECT *
FROM Parks_and_Recreation.employee_demographics
;

SELECT *
FROM Parks_and_Recreation.employee_salary
;

#INNER JOINS - return rows that are the same in both columns in both tables
SELECT *
FROM Parks_and_Recreation.employee_demographics
INNER JOIN Parks_and_Recreation.employee_salary
	ON Parks_and_Recreation.employee_demographics.employee_id = Parks_and_Recreation.employee_salary.employee_id
;

#Shorten the query using aliasing
SELECT *
FROM Parks_and_Recreation.employee_demographics AS dem
INNER JOIN Parks_and_Recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;
    
#Selecting different columns for joins
SELECT dem.employee_id, age, occupation
FROM Parks_and_Recreation.employee_demographics AS dem
INNER JOIN Parks_and_Recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

#OUTER JOINS - LEFT or RIGHT JOINS
## LEFT JOINS - everything on the left table even without matches in the join and then return matches in the right table. RIGHT JOIN - Opposite
SELECT *
FROM Parks_and_Recreation.employee_demographics AS dem
LEFT JOIN Parks_and_Recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

#RIGHT JOIN
SELECT *
FROM Parks_and_Recreation.employee_demographics AS dem
RIGHT JOIN Parks_and_Recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

#SELF JOIN - A join where you tie the table to itself
SELECT *
FROM Parks_and_Recreation.employee_salary AS emp1
JOIN Parks_and_Recreation.employee_salary AS emp2
	ON emp1.employee_id = emp2.employee_id
;

#SELF JOIN - Use Case - Assign secret santa to employees
SELECT emp1.employee_id AS emp_santa, 
	emp1.first_name AS first_name_santa, 
	emp1.last_name AS last_name_santa, 
    emp2.employee_id AS emp_santa, 
	emp2.first_name AS first_name_santa, 
	emp2.last_name AS last_name_santa
FROM Parks_and_Recreation.employee_salary AS emp1
JOIN Parks_and_Recreation.employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;