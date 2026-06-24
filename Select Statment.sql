SELECT first_name, 
last_name, 
birth_date, 
phone, 
city, 
state,
total_money_spent,
total_money_spent + 100
FROM customers;


SELECT state
FROM customers;

#Adding distinct will remove duplicates in a column or range of columns
SELECT DISTINCT city, state
FROM customers;