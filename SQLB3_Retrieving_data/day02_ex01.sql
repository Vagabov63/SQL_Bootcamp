SELECT days.date AS missing_date
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') AS days
LEFT JOIN person_visits pv ON days = pv.visit_date AND pv.person_id IN (1, 2) WHERE pv.id IS NULL;