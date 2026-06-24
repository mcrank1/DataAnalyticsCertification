SELECT *
FROM products
;


SELECT ROUND (123.456789, 2)
;


SELECT sale_price, ROUND(sale_price, 1)
FROM products
;


#Ceiling rounds up to the nearest whole number
SELECT CEILING (5.7);

#Floor rounds down to the nearest whole number
SELECT FLOOR (5.7);


SELECT sale_price, CEILING(sale_price), FLOOR(sale_price)
FROM products
;

#ABS gives you the absolute value.
SELECT ABS (4.6)