WITH 
female_visits AS (
    SELECT piz.name AS pizzeria_name
    FROM person_visits AS pv
    JOIN person AS p ON pv.person_id = p.id
    JOIN pizzeria AS piz ON pv.pizzeria_id = piz.id
    WHERE p.gender = 'female'
),
male_visits AS (
    SELECT piz.name AS pizzeria_name
    FROM person_visits AS pv
    JOIN person AS p ON pv.person_id = p.id
    JOIN pizzeria AS piz ON pv.pizzeria_id = piz.id
    WHERE p.gender = 'male'
),
only_female AS (
    SELECT pizzeria_name FROM female_visits
    EXCEPT ALL
    SELECT pizzeria_name FROM male_visits
),
only_male AS (
    SELECT pizzeria_name FROM male_visits
    EXCEPT ALL
    SELECT pizzeria_name FROM female_visits
)
SELECT
    pizzeria_name
FROM
    only_female
UNION ALL
SELECT
    pizzeria_name
FROM
    only_male
ORDER BY
    pizzeria_name;
