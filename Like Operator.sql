# Like Operator


# % - zero, one, or multiple characters
# _ - single character


SELECT *
FROM customers
WHERE first_name LIKE 'K%'
;

# % before the n will return string that ends with n
SELECT *
FROM customers
WHERE first_name LIKE '%n'
;



SELECT *
FROM customers
WHERE first_name LIKE '%n%'
;



SELECT *
FROM customers
WHERE first_name LIKE '_o_'
;


SELECT *
FROM customers
WHERE first_name LIKE '___kin'
;



SELECT *
FROM customers
WHERE last_name LIKE 'S____%'
;


#How to use it with phone number
SELECT *
FROM customers
WHERE phone LIKE '975-%'
;