SELECT pizzeria.name AS pizzeria_name FROM pizzeria
JOIN menu ON pizzeria.id = menu.pizzeria_id
JOIN person_order ON menu.id = person_order.menu_id
JOIN person ON person_order.person_id = person.id
GROUP BY pizzeria_name
HAVING COUNT(DISTINCT person.gender) = 1
    AND COUNT(person.gender = 'male') > 0

UNION

SELECT pizzeria.name AS pizzeria_name FROM pizzeria
JOIN menu ON pizzeria.id = menu.pizzeria_id
JOIN person_order ON menu.id = person_order.menu_id
JOIN person ON person_order.person_id = person.id
GROUP BY pizzeria_name
HAVING COUNT(DISTINCT person.gender) = 1
    AND COUNT(person.gender = 'female') > 0
ORDER BY pizzeria_name;