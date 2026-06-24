
#Roll up adds up all the agregate function
SELECT customer_id, SUM(tip) as total_tips
FROM customer_orders
GROUP BY customer_id WITH ROLLUP
;

SELECT customer_id, COUNT(tip) as count_tips
FROM customer_orders
GROUP BY customer_id WITH ROLLUP
;