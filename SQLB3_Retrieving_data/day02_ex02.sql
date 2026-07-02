SELECT COALESCE(people.name, '-') AS person_name,
CASE
    WHEN visits.visit_date IS NULL THEN 'null'
    ELSE visits.visit_date::text
END AS visit_date, COALESCE(piz.name, '-') AS pizzeria_name FROM person people
FULL JOIN (SELECT * FROM person_visits pv WHERE pv.visit_date BETWEEN '2022-01-01' AND '2022-01-03') visits
ON people.id = visits.person_id
FULL JOIN pizzeria piz
ON visits.pizzeria_id = piz.id
ORDER BY person_name, visit_date, pizzeria_name;