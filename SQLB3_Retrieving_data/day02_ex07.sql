SELECT pizzeria.name FROM pizzeria
JOIN menu ON pizzeria.id = menu.pizzeria_id
JOIN person_visits pv ON pizzeria.id = pv.pizzeria_id
JOIN person on person.id = pv.person_id
WHERE pv.visit_date = '2022-01-08' AND price < 800 AND person.name = 'Dmitriy';