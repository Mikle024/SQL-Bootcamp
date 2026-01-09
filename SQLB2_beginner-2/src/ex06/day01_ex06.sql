SELECT
    daily_action.action_date,
    person.name AS person_name
FROM
    (
        SELECT order_date AS action_date, person_id
        FROM person_order
        INTERSECT
        SELECT visit_date AS action_date, person_id
        FROM person_visits
    ) AS daily_action
JOIN
    person ON person.id = daily_action.person_id
ORDER BY
    action_date ASC,
    person_name DESC;
