

SELECT *
FROM customer_sweepstakes
;


SELECT *
FROM customers
;

SELECT COUNT(customer_id),COUNT(phone)
FROM customers
;

SELECT COUNT(sweepstake_id), COUNT(phone)
FROM customer_sweepstakes
;

UPDATE customer_sweepstakes
SET phone = NULL 
WHERE phone = ''
;

UPDATE customer_sweepstakes
SET income = NULL 
WHERE income = ''
;


SELECT income
FROM customer_sweepstakes
; 


SELECT AVG(income)
FROM customer_sweepstakes
;


SELECT AVG(COALESCE(income,0))
FROM customer_sweepstakes
;

SELECT birth_date, `Are you over 18?`
FROM customer_sweepstakes
;


SELECT birth_date, `Are you over 18?`
FROM customer_sweepstakes
WHERE (YEAR(NOW()) - 18) > YEAR(birth_date)
;




UPDATE customer_sweepstakes
SET `Are you over 18?` = 'Y' 
WHERE (YEAR(NOW()) - 18) > YEAR(birth_date)
;






