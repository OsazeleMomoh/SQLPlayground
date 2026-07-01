#Case Statements
SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN 'RIP'
END AS age_bracket
FROM Parks_and_Recreation.employee_demographics
;

#Determine people's salary increase and how much bonus they got
#Pay Increase:
# < 50,000 = 5%
# > 50,000 = 7%
# Finance Dept. = 10%

SELECT first_name, last_name,
CASE
	WHEN salary < 50000 THEN salary + (salary*0.05)
    WHEN salary > 50000 THEN salary + (salary*0.07)
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN (salary*0.1)
END AS 'Bonus'
FROM Parks_and_Recreation.employee_salary
;
