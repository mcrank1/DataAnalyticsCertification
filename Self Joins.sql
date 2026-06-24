#A SELF JOIN in SQL is a type of join where a table is joined to itself. It isn’t an actual built-in join like an INNER JOIN or OUTER JOIN, but rather a technique where you can join a table to itself as if it were two tables.


SELECT *
FROM customers c
JOIN customers ss
	ON c.first_name = ss.first_name
    ;
    
    

SELECT c.customer_id, c.first_name, c.last_name, ss.customer_id, ss.first_name, ss.last_name
FROM customers c
JOIN customers ss
	ON c.customer_id + 1 = ss.customer_id
    ;