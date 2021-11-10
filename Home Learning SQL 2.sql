-- TASK1

SELECT actor_id, first_name, last_name
FROM actor
ORDER BY last_name, first_name;

-- TASK2

SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name = 'WILLIAMS' OR last_name = 'DAVIS';

-- TASK3

SELECT c.customer_id, c.first_name, c.last_name,
	TIME(r.rental_date)rental_date
FROM customer c
	INNER JOIN rental r
    ON c.customer_id = r.customer_id
WHERE DATE (r.rental_date) = '2005-07-05'
ORDER BY TIME (r.rental_date) DESC;