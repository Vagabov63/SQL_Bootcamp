SELECT DISTINCT t.action_date, p.name
FROM (SELECT order_date as action_date, person_id FROM person_order
INTERSECT ALL
SELECT visit_date as action_date, person_id FROM person_visits) AS t
JOIN person AS p ON p.id = t.person_id
ORDER BY action_date, name DESC;