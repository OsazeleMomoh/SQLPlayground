#UNIONS 
SELECT age, gender
FROM Parks_and_Recreation.employee_demographics
UNION
SELECT first_name, last_name
FROM Parks_and_Recreation.employee_salary
;

#This outputs bad data. we can't have age and gender combined with first and last names all in the same column
#The data must be consistent
SELECT first_name, last_name
FROM Parks_and_Recreation.employee_demographics
UNION
SELECT first_name, last_name
FROM Parks_and_Recreation.employee_salary
;

#UNION is also UNION DISTINCT just as JOIN is also INNER JOIN
SELECT first_name, last_name
FROM Parks_and_Recreation.employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM Parks_and_Recreation.employee_salary
;

#To output all the data rather than distinct, use UNION ALL
SELECT first_name, last_name
FROM Parks_and_Recreation.employee_demographics
UNION ALL
SELECT first_name, last_name
FROM Parks_and_Recreation.employee_salary
;

#Identify employees to push out for retirement
SELECT first_name, last_name, 'Old Man' AS Label
FROM Parks_and_Recreation.employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM Parks_and_Recreation.employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid' AS Label
FROM Parks_and_Recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;