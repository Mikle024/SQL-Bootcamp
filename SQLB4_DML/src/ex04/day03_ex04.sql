WITH
female_orders AS (
    SELECT piz.name AS pizzeria_name
    FROM person_order AS po
    JOIN person AS p ON po.person_id = p.id
    JOIN menu AS m ON po.menu_id = m.id
    JOIN pizzeria AS piz ON m.pizzeria_id = piz.id
    WHERE p.gender = 'female'
),
male_orders AS (
    SELECT piz.name AS pizzeria_name
    FROM person_order AS po
    JOIN person AS p ON po.person_id = p.id
    JOIN menu AS m ON po.menu_id = m.id
    JOIN pizzeria AS piz ON m.pizzeria_id = piz.id
    WHERE p.gender = 'male'
),
only_female AS (
    SELECT pizzeria_name FROM female_orders
    EXCEPT
    SELECT pizzeria_name FROM male_orders
),
only_male AS (
    SELECT pizzeria_name FROM male_orders
    EXCEPT
    SELECT pizzeria_name FROM female_orders
)
SELECT
    pizzeria_name
FROM
    only_female
UNION
SELECT
    pizzeria_name
FROM
    only_male
ORDER BY
    pizzeria_name;
