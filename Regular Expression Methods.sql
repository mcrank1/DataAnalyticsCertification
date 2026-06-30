# Regular Expression Methods

SELECT *
FROM customers
WHERE first_name LIKE '%k%'
;

#Regular expression is a more advanced 'like'

SELECT *
FROM customers
WHERE first_name REGEXP 'k'
;


SELECT first_name, REGEXP_REPLACE(first_name, 'a', 'b')
FROM customers

;

SELECT first_name, REGEXP_LIKE(first_name, 'a')
FROM customers

;

#Shows you the starting index of what you're looking for
SELECT first_name, REGEXP_INSTR(first_name, 'a')
FROM customers

;


SELECT first_name, REGEXP_SUBSTR(first_name, 'char')
FROM customers
;