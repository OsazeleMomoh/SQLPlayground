#String Functions
SELECT LENGTH('Skyfall');

#Length of First Name
SELECT first_name, LENGTH(first_name)
FROM Parks_and_Recreation.employee_demographics
ORDER BY LENGTH(first_name) DESC
;

#Upper Case and Lower Case
SELECT UPPER('sky');
SELECT LOWER('sky')
;

#Capitalize Last Names
SELECT first_name, UPPER(last_name) AS cap_last_name
FROM Parks_and_Recreation.employee_demographics
ORDER BY UPPER(last_name) DESC
;

#TRIM functions - Left Trim (LTRIM) and Right Trim (RTRIM)
SELECT TRIM('   sky   ');
SELECT LTRIM('   sky   ');
SELECT RTRIM('   sky   ');


#Select first 4 and last 4 characters of first name
SELECT first_name, LEFT(first_name, 4), RIGHT(first_name, 4)
FROM Parks_and_Recreation.employee_demographics
;

#SUBSTRING function
SELECT first_name, 
LEFT(first_name, 4), 
RIGHT(first_name, 4), 
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM Parks_and_Recreation.employee_demographics
;

#REPLACE function
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM Parks_and_Recreation.employee_demographics
;

#LOCATE function
SELECT LOCATE('e','Osazele');

#Locate people who have 'An' in their first names
SELECT first_name, LOCATE('An', first_name)
FROM Parks_and_Recreation.employee_demographics
;

#Concatenate first and last names
SELECT first_name, last_name, 
CONCAT(first_name,' ',last_name) AS full_name
FROM Parks_and_Recreation.employee_demographics
;


