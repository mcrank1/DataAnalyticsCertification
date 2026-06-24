# The UNION operator in SQL is used to combine the result sets of two or more SELECT statements. However, it only includes distinct values.
# The UNION ALL operator does the same, but includes duplicates.


SELECT * 
FROM customers
;

SELECT *
FROM products
;

SELECT first_name, last_name
FROM customers
UNION
SELECT product_id, product_name
FROM products
;


SELECT first_name, last_name, 'Old'
FROM customers
WHERE YEAR (birth_date) < 1950
;


SELECT first_name, last_name, 'Old'
FROM customers
WHERE YEAR (birth_date) < 1950
UNION
SELECT first_name, last_name, 'Good Tipper'
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
WHERE tip > 3
;


SELECT first_name, last_name, 'Old' as Label
FROM customers
WHERE YEAR (birth_date) < 1950
UNION
SELECT first_name, last_name, 'Good Tipper'
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
WHERE tip > 3
UNION
SELECT first_name, last_name, 'Big Spender'
FROM customers
WHERE total_money_spent > 1000
ORDER BY first_name, last_name ASC
;

#Union all doesn't remove duplicates
SELECT first_name, last_name, 'Old' as Label
FROM customers
WHERE YEAR (birth_date) < 1950
UNION ALL
SELECT first_name, last_name, 'Old' as Label
FROM customers
WHERE YEAR (birth_date) < 1950
;