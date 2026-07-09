
SELECT *
FROM customer_sweepstakes
;


SELECT phone, REGEXP_REPLACE(phone, '[()-/+]', '')
FROM customer_sweepstakes
;

#This updates the cleaned table
UPDATE customer_sweepstakes
SET phone = REGEXP_REPLACE(phone, '[()-/+]', '')
;


SELECT phone, SUBSTRING(phone, 1, 3),SUBSTRING(phone, 4, 3),SUBSTRING(phone, 7, 4)
FROM customer_sweepstakes
;


SELECT phone, CONCAT(SUBSTRING(phone, 1, 3),'-', SUBSTRING(phone, 4, 3),'-',SUBSTRING(phone, 7, 4))
FROM customer_sweepstakes
WHERE phone <> ''
;



UPDATE customer_sweepstakes
SET phone = CONCAT(SUBSTRING(phone, 1, 3),'-', SUBSTRING(phone, 4, 3),'-',SUBSTRING(phone, 7, 4))
WHERE phone <> ''
;



SELECT phone
FROM customer_sweepstakes
;


SELECT birth_date
FROM customer_sweepstakes
;




SELECT birth_date, str_to_date(birth_date, '%m/%d/%Y)')
FROM customer_sweepstakes
;


SELECT birth_date, 
str_to_date(birth_date, '%m/%d/%Y)'),
str_to_date(birth_date, '%Y/%d/%m)')
FROM customer_sweepstakes
;

SELECT birth_date,
IF(str_to_date(birth_date, '%m/%d/%Y)') IS NOT NULL, str_to_date(birth_date, '%m/%d/%Y)'),str_to_date(birth_date, '%Y/%d/%m)')),
str_to_date(birth_date, '%m/%d/%Y)'),
str_to_date(birth_date, '%Y/%d/%m)')
FROM customer_sweepstakes
;

#If functions dont usually work for update functions
UPDATE customer_sweepstakes
SET birth_date = IF(str_to_date(birth_date, '%m/%d/%Y)') IS NOT NULL, str_to_date(birth_date, '%m/%d/%Y)'),str_to_date(birth_date, '%Y/%d/%m)'))
;

#This does not work either
UPDATE customer_sweepstakes
SET birth_date = CASE WHEN STR_TO_DATE(birth_datem '%m/%d/%Y') IS NOT NULL THEN str_to_date(birth_date, '%m/%d/%Y)')
WHEN STR_TO_DATE(birth_datem '%m/%d/%Y') IS NULL THEN str_to_date(birth_date, '%Y/%d/%m)')
END
;


SELECT *, SUBSTRING(birth_date,  9, 2),SUBSTRING(birth_date,  6, 2), SUBSTRING(birth_date,  1, 4)
FROM customer_sweepstakes
;

SELECT birth_date, CONCAT(SUBSTRING(birth_date,  9, 2),'/',SUBSTRING(birth_date,  6, 2), '/', SUBSTRING(birth_date,  1, 4))
FROM customer_sweepstakes
;

UPDATE customer_sweepstakes
SET birth_date = CONCAT(SUBSTRING(birth_date,  9, 2),'/',SUBSTRING(birth_date,  6, 2), '/', SUBSTRING(birth_date,  1, 4))
WHERE sweepstake_id IN (9,11)
;


SELECT birth_date
FROM customer_sweepstakes
;


UPDATE customer_sweepstakes
SET birth_date = STR_TO_DATE(birth_date, '%m/%d/%Y') 
;




SELECT *
FROM customer_sweepstakes
;

#When there is white space or special characters in a column name you need to `` outside of the field name
SELECT `Are you over 18?`
FROM customer_sweepstakes
;


SELECT `Are you over 18?`,
CASE
	WHEN `Are you over 18?` = 'Yes' THEN 'Y'
    WHEN `Are you over 18?` = 'No' THEN 'N'
    ELSE `Are you over 18?`
END
FROM customer_sweepstakes
;


UPDATE customer_sweepstakes
SET `Are you over 18?` = CASE
	WHEN `Are you over 18?` = 'Yes' THEN 'Y'
    WHEN `Are you over 18?` = 'No' THEN 'N'
    ELSE `Are you over 18?`
END
;

