SELECT order_date, format('%s (age:%s)', name, age) AS person_information FROM person_order
JOIN person AS p ON p.id = person_order.person_id
ORDER BY order_date, name;