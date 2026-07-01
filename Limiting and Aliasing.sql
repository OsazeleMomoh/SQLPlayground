#Limiting and Aliasing
SELECT *
FROM Parks_and_Recreation.employee_demographics
LIMIT 3
;

#Showing the 3 oldest people in the table
SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY age DESC
LIMIT 3
;

#Selecting the 3rd oldest person in the table
SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

#Aliasing - a way to change the name of a column...for the most part
SELECT gender, AVG(age) AS avg_age
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40
;

#Another way to write it is without the 'AS'
SELECT gender, AVG(age) avg_age
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40
;