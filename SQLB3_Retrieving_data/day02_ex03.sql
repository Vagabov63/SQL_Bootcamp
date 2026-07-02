WITH dates AS (
    SELECT generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day')::date AS missing_date
)
SELECT missing_date FROM dates
LEFT JOIN person_visits pv ON missing_date = pv.visit_date AND pv.person_id IN (1, 2) WHERE pv.id IS NULL
ORDER BY missing_date;