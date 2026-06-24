SELECT *
FROM customer_orders
;

# IF(Condition, condition is true, condition is false do this)


SELECT tip,
IF(tip > 1, 'AMAZING!', 'Cheap...')
FROM customer_orders
;

SELECT order_total,
tip,
IF(tip > 2, order_total * .75, order_total * 1.1) as new_total
FROM customer_orders
;