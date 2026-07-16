SELECT pizza_name, price, pizzeria.name AS pizzeria_name, pv.visit_date
FROM menu
INNER JOIN person_visits pv ON pv.pizzeria_id = menu.pizzeria_id
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
INNER JOIN person ON pv.person_id = person.id
WHERE person.name = 'Kate' AND price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name;