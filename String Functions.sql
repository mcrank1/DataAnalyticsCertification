# String Functions

SELECT *
FROM customers
;

SELECT LENGTH ('sky');


SELECT first_name, LENGTH(first_name)
FROM customers
;

SELECT first_name, LENGTH(first_name)
FROM customers
ORDER BY LENGTH (first_name)
;

#Length gives the number of characters in the string
SELECT first_name, LENGTH(first_name) as Len_first
FROM customers
ORDER BY Len_first
;

#Upper makes the string all upper case
SELECT first_name, UPPER(first_name)
FROM customers
;

#Upper makes the string all upper case, lower makes the string all lower case
SELECT first_name, UPPER(first_name), LOWER(first_name)
FROM customers
;

#Trim removes white space
SELECT TRIM('     sky')
;

#LTRIM removes white space from the left side and RTRIM removes white space from the left side
SELECT '    sky     ', TRIM('    sky     '), LTRIM('    sky     '), RTRIM('    sky     ')
;


#TRIM does not remove white space from the middle.
SELECT 'I     LOVE    SQL', TRIM('I     LOVE    SQL')
;

#LEFT will return the characters from the number provided starting from the left
SELECT LEFT ('Alexander', 4);

#RIGHT will return the characters from the number provided starting from the right
SELECT first_name, LEFT(first_name, 3), RIGHT(first_name, 3)
FROM customers
;

#Substring is similar to RIGHT and LEFT but it lets you start anywhere in the string
SELECT SUBSTRING('Alexander',2,3)
;

SELECT phone
FROM customers
;

SELECT phone, SUBSTRING(phone,1,3), SUBSTRING(phone,5,3),SUBSTRING(phone,9,4)
FROM customers
;

#REPLACE allows you to change a character to another character
SELECT REPLACE(first_name,'a','z')
FROM customers
;

SELECT REPLACE(phone,'-','')
FROM customers
;

#LOCATE tells you where a string or value is located
SELECT LOCATE('x','Alexander');

SELECT first_name, LOCATE('Mic', first_name)
FROM customers
;

#CONCAT connects strings together
SELECT CONCAT('Alex',' Freberg');


SELECT phone, 
SUBSTRING(phone,1,3),
SUBSTRING(phone,5,3),
SUBSTRING(phone,9,4),
CONCAT(SUBSTRING(phone,1,3),SUBSTRING(phone,5,3),SUBSTRING(phone,9,4))
FROM customers
;



