SELECT
    gs.missing_date::date
FROM
    generate_series('2022-01-01', '2022-01-10', interval '1 day')
    AS gs (missing_date)
LEFT JOIN (
    SELECT visit_date
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2
) AS pv ON gs.missing_date = pv.visit_date
WHERE
    pv.visit_date IS NULL
ORDER BY
    gs.missing_date;
