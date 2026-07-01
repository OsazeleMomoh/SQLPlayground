#Having vs. Where (Use Having for filtering based on aggregate functions)
SELECT gender, AVG(age)
FROM Parks_and_Recreation.employee_demographics
WHERE AVG(age) > 40
GROUP BY gender, age
;

SELECT gender, AVG(age)
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation, AVG(salary)
FROM Parks_and_Recreation.employee_salary
GROUP BY occupation
;

SELECT occupation, AVG(salary)
FROM Parks_and_Recreation.employee_salary
WHERE occupation LIKE '%manager'
GROUP BY occupation
HAVING AVG(salary) > 75000
;