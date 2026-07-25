INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
SELECT
    COALESCE(MAX(id), 0) + 1,
    (SELECT id FROM person WHERE name = 'Dmitriy'),
    (SELECT pz.id
     FROM pizzeria pz
     JOIN menu m ON m.pizzeria_id = pz.id
     WHERE m.price < 800 AND pz.name != 'Papa Johns'
     ORDER BY pz.id
     LIMIT 1),
    '2022-01-08'
FROM person_visits;

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;