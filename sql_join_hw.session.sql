

-- 1.
SELECT customer.first_name, customer.last_name, address.district
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE address.district LIKE 'Texas';

-- -- 2. 
-- SELECT customer.first_name, customer.last_name, payment.amount
-- FROM customer
-- JOIN payment
-- ON customer.customer_id = payment.customer_id
-- WHERE payment.amount > 6.99;

-- 3.
-- SELECT customer.first_name, customer.last_name
-- FROM customer
-- WHERE customer_id IN
-- (
--     SELECT customer_id
--     FROM payment
--     GROUP BY customer_id HAVING SUM(amount) >= 175
-- );

-- 4.
-- SELECT customer.first_name, customer.last_name, address.district
-- FROM customer
-- JOIN address
-- ON customer.address_id = address.address_id
-- JOIN city
-- ON address.city_id = city.city_id
-- WHERE city.city = 'Adana'; -- Nepal returns 0

-- 5.
-- SELECT staff.first_name, staff.last_name
-- FROM staff
-- JOIN payment
-- ON staff.staff_id = payment.staff_id
-- GROUP BY staff.first_name, staff.last_name
-- ORDER BY COUNT(payment.staff_id) DESC
-- LIMIT 1;

-- 6.
-- SELECT rating, COUNT(title)
-- FROM film
-- GROUP BY rating;

-- 7.
-- SELECT customer.first_name, customer.last_name
-- FROM customer
-- WHERE customer_id IN
-- (
--     SELECT customer_id
--     FROM payment
--     GROUP BY customer_id, amount
--     HAVING amount > 6.99
-- )

-- 8.
-- SELECT COUNT(payment.amount)
-- FROM payment
-- WHERE amount = '0';


