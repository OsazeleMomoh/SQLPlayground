SELECT *
FROM Parks_and_Recreation.employee_salary
WHERE first_name = "Leslie";


SELECT *
FROM Parks_and_Recreation.employee_salary
WHERE salary >= 50000;


SELECT *
FROM Parks_and_Recreation.employee_salary
WHERE salary <= 50000;


SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE gender != 'Male';

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date < '1985-01-01';

# Logical Operators - AND, OR, NOT - For Logic in analysis

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date < '1985-01-01' AND gender = 'Male';

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date < '1985-01-01' OR gender = 'Male';

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date < '1985-01-01' OR NOT gender = 'Male';

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;

# LIKE Statement - For Specific patterns not a specific match
# Pair with 2 symbols - % and _ (% means anything; _ means specific)

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE first_name LIKE 'a%';

# Using 2 underscores means first character starts with a and has 2 characters after it only.
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE first_name LIKE 'a__'; 

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE first_name LIKE 'a__%';

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date LIKE '1989%';        