SELECT f.title,SUM(p.amount)
FROM film f
FULL OUTER JOIN inventory i ON f.film_id = i.film_id
FULL OUTER JOIN rental r ON i.inventory_id = r.inventory_id
FULL OUTER JOIN payment p ON r.rental_id = p.rental_id
GROUP BY f.title
ORDER BY SUM(p.amount), f.title;