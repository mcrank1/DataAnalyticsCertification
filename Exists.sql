
SELECT *
FROM customers
WHERE customer_id IN
	(SELECT customer_id
		FROM customer_orders)
;


SELECT *
FROM customers
WHERE EXISTS
	(SELECT customer_id
		FROM customer_orders)
;


SELECT *
FROM customers C
WHERE EXISTS
	(SELECT customer_id
		FROM customer_orders
        WHERE customer_id = c.customer_id)
;