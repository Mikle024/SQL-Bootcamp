WITH
andrey_visits AS (
    SELECT piz.name AS pizzeria_name
    FROM person_visits AS pv
    JOIN person AS p ON pv.person_id = p.id
    JOIN pizzeria AS piz ON pv.pizzeria_id = piz.id
    WHERE p.name = 'Andrey'
),
andrey_orders AS (
    SELECT piz.name AS pizzeria_name
    FROM person_order AS po
    JOIN person AS p ON po.person_id = p.id
    JOIN menu AS m ON po.menu_id = m.id
    JOIN pizzeria AS piz ON m.pizzeria_id = piz.id
    WHERE p.name = 'Andrey'
)
SELECT
    pizzeria_name
FROM
    andrey_visits
EXCEPT
SELECT
    pizzeria_name
FROM
    andrey_orders
ORDER BY
    pizzeria_name;
