
#Order matters. The minimum number needs to be first and the maximum number needs to be second.
SELECT *
FROM customers
WHERE total_money_spent BETWEEN 500 AND 1000
;


#This is a longer syntax so the between operator is better
SELECT *
FROM customers
WHERE total_money_spent >= 534 AND total_money_spent <= 1009
;



SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2020-01-01'
;


SELECT *
FROM customers
WHERE city BETWEEN 'D' AND 'S'
;