SELECT *
FROM customers
;


#NOW gives you the current time and date, CURDATE, gives you the current date and CURTIME gives you the current time
SELECT NOW(), 
CURDATE(),
CURTIME();

SELECT 
YEAR(NOW()), 
MONTH(NOW()), 
DAY(NOW());


SELECT *
FROM customers
WHERE YEAR(birth_date) = YEAR(NOW())
;


SELECT *
FROM customer_orders
WHERE YEAR(order_date) = YEAR(NOW()) - 4
;

#DAYNAME gives you the day of the week
SELECT DAYNAME(NOW());

#MONTHNAME gives you the name of the month
SELECT order_date, DAYNAME(order_date), MONTHNAME(order_date)
FROM customer_orders
;


SELECT birth_date, DATE_FORMAT(birth_date, '%M %d %Y')
FROM customers
;

SELECT birth_date, DATE_FORMAT(birth_date, '%m %d %Y')
FROM customers
;

SELECT birth_date, DATE_FORMAT(birth_date, '%m-%d-%Y')
FROM customers
;

SELECT birth_date, DATE_FORMAT(birth_date, '%M %D %Y')
FROM customers
;