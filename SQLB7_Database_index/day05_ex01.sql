SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYSE
SELECT pizza_name, pz.name AS pizzeria_name FROM menu m
JOIN pizzeria pz ON m.pizzeria_id = pz.id;