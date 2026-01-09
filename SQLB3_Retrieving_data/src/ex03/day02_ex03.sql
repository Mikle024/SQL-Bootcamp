WITH dates_cte AS (
    SELECT generate_series('2022-01-01', '2022-01-10', interval '1 day')::date
    AS missing_date
)
SELECT
    missing_date
FROM
    dates_cte
LEFT JOIN
    person_visits AS pv ON dates_cte.missing_date = pv.visit_date
    AND pv.person_id IN (1, 2)
WHERE
    pv.visit_date IS NULL
ORDER BY
    missing_date;
