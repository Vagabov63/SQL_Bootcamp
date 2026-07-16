SELECT a.pizza_name,
    p_a.name AS pizzeria_name_1,
    p_b.name AS pizzeria_name_2,
    a.price
FROM menu a
JOIN menu b ON a.pizza_name = b.pizza_name
    AND a.price = b.price
    AND a.pizzeria_id < b.pizzeria_id
JOIN pizzeria p_a ON p_a.id = a.pizzeria_id
JOIN pizzeria p_b ON p_b.id = b.pizzeria_id
ORDER BY a.pizza_name;