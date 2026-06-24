# An OUTER JOIN in SQL is a type of join that returns all the rows from one table and the matched rows from another table. If there is no match, the result is NULL on the side of the table that doesn't have a match.
# LEFT OUTER JOIN: There is an LEFT OUTER JOIN which will return everything from the “Left” table (or the table in the FROM statement.
# RIGHT OUTER JOIN: There is an RIGHT OUTER JOIN which will return everything from the “Right” table (or the table in the RIGHT OUTER JOIN statement).

SELECT c.customer_id, first_name, co.order_id
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id
;

SELECT c.customer_id, first_name, co.order_id
FROM customers c
LEFT JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id
;

SELECT c.customer_id, first_name, co.order_id
FROM customers c
RIGHT JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id
;