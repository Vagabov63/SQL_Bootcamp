SELECT pizza_name, name AS pizzeria_name, price FROM pizzeria
JOIN menu ON pizzeria.id = menu.pizzeria_id WHERE pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY pizza_name, name;