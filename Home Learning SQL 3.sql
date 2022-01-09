-- TASK 1 --

SELECT payment.payment_id
FROM payment
WHERE customer_id <> 5 AND(amount >8 OR date (payment_date) = '2005-08-23');

-- TASK 2

SELECT payment.payment_id
FROM payment
WHERE customer_id = 5 AND NOT(amount > 6 OR date (payment_date) = '2005-06-19');

-- TASK 3

SELECT*
FROM payment
WHERE amount = 1.98 OR amount = 7.98 OR amount = 9.98;

-- TASK 4

SELECT customer.last_name
FROM customer
WHERE last_name LIKE '_A%W%';



-- TASK 2.1

SELECT c.first_name, c.last_name, a.address, ct.city
FROM customer c
	INNER JOIN address a
    ON c.address_id = a.address_id
    INNER JOIN city ct
    ON a.city_id = ct.city_id 
WHERE a.district = 'California';

-- TASK 2.2

SELECT f.title, a.first_name
FROM film f
	INNER JOIN film_actor fa
    ON f.film_id = fa.film_id
    INNER JOIN actor a
    ON fa.actor_id = a.actor_id
WHERE a.first_name = 'JOHN';

-- TASK 2.3

SELECT a.city_id, a.address, a.address2
FROM address a
	INNER JOIN address a_city
    ON a_city.city_id = a.city_id
ORDER BY a.city_id ASC;


-- TASK 3.1
 

SELECT INSERT('Life is wonderful ', 9,0, ' really') STRING; 
SELECT INSERT('Life is wonderful',1,8,'You are') STRING;
SELECT REPLACE('Life is wonderful', 'wonderful', 'Amazing')
FROM DUAL;
SELECT SUBSTRING('Life is wonderful',1,5);

-- TASK 3.2 

SELECT 
	SIGN(-25.76823),
	ABS(-25.76823)
FROM DUAL;
SELECT 
	SIGN(-25.76823),
	-ABS(-25.76823)
FROM DUAL;   
SELECT ROUND(-25.76823);
SELECT TRUNCATE(-25.76823,2);

-- 3.3 

SELECT EXTRACT(MONTH FROM current_timestamp);