SELECT pizzeria.name AS pizzeria_name FROM pizzeria
JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
JOIN person ON person_visits.person_id = person.id
WHERE person.name = 'Andrey' AND NOT EXISTS (
    SELECT * FROM person_order
    JOIN menu ON person_order.menu_id = menu.id
    WHERE person_order.person_id = person.id
    AND menu.pizzeria_id = pizzeria.id
)
ORDER BY pizzeria_name;