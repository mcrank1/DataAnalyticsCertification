
SELECT CAST('2022-01-01' AS DATETIME);


SELECT birth_date,
CAST(birth_date AS DATETIME),
CONVERT(birth_date, DATETIME)
FROM customers
;

#You'll get an error or 0's or nulls for trying to convert incompatible data types.
SELECT first_name,
CAST(first_name AS INT)
FROM customers
;

SELECT first_name,
CAST(first_name AS CHAR)
FROM customers
;