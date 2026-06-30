


SELECT *
FROM customers
WHERE first_name REGEXP 'k'
;


SELECT *
FROM customers
WHERE first_name REGEXP '[a-c]'
;


SELECT *
FROM customers
WHERE total_money_spent REGEXP '[0-1]'
;

#Missing 5 and 6 because there it is null for their phone number
SELECT *
FROM customers
WHERE phone REGEXP '.'
;


SELECT *
FROM customers
WHERE first_name REGEXP 'k...n'
;

#The ^ means it starts with so were looking for any first name that starts with k here.
SELECT *
FROM customers
WHERE first_name REGEXP '^k'
;

#The $ means it ends with that character
SELECT *
FROM customers
WHERE first_name REGEXP 'n$'
;


SELECT *
FROM customers
WHERE first_name REGEXP 'Obi.*'
;


SELECT *
FROM customers
WHERE first_name REGEXP 'Obi.+'
;

SELECT *
FROM customers
WHERE first_name REGEXP 'Obi.?'
;

SELECT *
FROM customers
WHERE first_name REGEXP 'k.?n'
;

SELECT *
FROM customers
WHERE first_name REGEXP 'k.+n'
;

SELECT *
FROM customers
WHERE first_name REGEXP 'k.{3}n'
;

SELECT *
FROM customers
WHERE first_name REGEXP 'kev|fro'
;