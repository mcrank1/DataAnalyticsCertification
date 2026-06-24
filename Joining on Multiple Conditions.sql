

SELECT *
FROM customer_orders
;

SELECT *
FROM customer_orders_review
;


#Issues arise with this, theres bad data among the customer_id
SELECT *
FROM customer_orders co
JOIN customer_orders_review cor
	ON co.order_id = cor.order_id
;

#Now the customer IDs match but the order dates don't match up due to customer error
SELECT *
FROM customer_orders co
JOIN customer_orders_review cor
	ON co.order_id = cor.order_id
    AND co.customer_id = cor.customer_id
;


#Now the data matches
SELECT *
FROM customer_orders co
JOIN customer_orders_review cor
	ON co.order_id = cor.order_id
    AND co.customer_id = cor.customer_id
    AND co.order_date = cor.order_date
;