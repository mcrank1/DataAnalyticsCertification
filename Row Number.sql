#ROW_NUMBER(): ROW_NUMBER() is a window function in SQL that assigns a unique row number to each row within the partition of a result set. The first row selected has a row number of 1, the second has 2, and so on.


SELECT c.customer_id, 
first_name, 
order_total, 
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_total DESC)
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
;

#This does not work
SELECT c.customer_id, 
first_name, 
order_total, 
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_total DESC) AS row_num
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
WHERE row_num < 3
;

SELECT *
FROM (
SELECT c.customer_id, 
first_name, 
order_total, 
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_total DESC) AS row_num
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
    ) AS row_table
WHERE row_num < 3
;