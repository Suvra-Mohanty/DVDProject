SELECT customer_id, first_name, last_name, email
FROM customer
WHERE store_id = 1 AND active = 0
ORDER BY last_name;