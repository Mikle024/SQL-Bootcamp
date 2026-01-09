CREATE MATERIALIZED VIEW
    mv_dmitriy_visits_and_eats AS
SELECT
    piz.name AS pizzeria_name
FROM
    person_visits AS pv
JOIN
    person AS p ON pv.person_id = p.id
JOIN
    pizzeria AS piz ON pv.pizzeria_id = piz.id
JOIN
    menu AS m ON piz.id = m.pizzeria_id
WHERE
    p.name = 'Dmitriy'
    AND pv.visit_date = '2022-01-08'
    AND m.price < 800;
