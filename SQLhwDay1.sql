-- 1. How many actors are there with the last name ‘Wahlberg’? 
-- ANSWER Wahlberg = 2
SELECT last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
-- ANSWER 5607
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory)
-- ANSWER film_id 1-71 with 8 films  
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- 4. How many customers have the last name ‘William’?
--ANSWER 0 William but 1 Williams
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals?
--ANSWER staff_id 2 with 8040
SELECT COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY staff_id DESC;

-- 6. How many different district names are there?
--ANSWER 603
SELECT COUNT(district)
FROM address;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- ANSWER film_id 1
SELECT actor_id, film_id
FROM film_actor
GROUP BY actor_id, film_id
ORDER BY COUNT(actor_id), film_id ASC;
-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- ANSWER 13 last name ending in es in store_ id 1
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es'
GROUP BY last_name, store_id
ORDER BY COUNT(last_name), store_id;

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250)
--ANSWER 1257
SELECT COUNT(amount) AS diff_rental_id
FROM payment
WHERE customer_id between 380 AND 430
HAVING COUNT(rental_id) > 250
ORDER BY COUNT(amount);

-- 10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
-- ANSWER 5 ratings and NC_17 Has the most 
SELECT rating 
FROM film
GROUP BY rating
ORDER BY MAX(rating);



