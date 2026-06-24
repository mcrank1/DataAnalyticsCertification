#OVER Clause: The OVER clause defines a window or set of rows within the query result set. A window function then computes a value for each row in the window. You can think of it as a moving or sliding window for each row.

#PARTITION BY: The PARTITION BY clause divides the result set produced by the FROM clause into partitions to which the window function is applied. In other words, it creates a 'window' for each set of rows sharing the same values of the PARTITION BY clause.


SELECT *
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
;

SELECT c.customer_id, first_name, order_total
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
;

SELECT c.customer_id, first_name, order_total, MAX(order_total)
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
GROUP BY c.customer_id, first_name, order_total
;


SELECT c.customer_id, first_name, order_total, MAX(order_total) OVER() AS max_order_total
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
;



SELECT c.customer_id, 
first_name, 
order_total, 
MAX(order_total) OVER(PARTITION BY customer_id) AS max_order_total
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
;