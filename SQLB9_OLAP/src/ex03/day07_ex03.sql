WITH visit_counts AS (
    SELECT
        piz.name,
        COUNT(*) AS count
    FROM
        person_visits AS pv
    JOIN
        pizzeria AS piz ON pv.pizzeria_id = piz.id
    GROUP BY
        piz.name
),
order_counts AS (
    SELECT
        piz.name,
        COUNT(*) AS count
    FROM
        person_order AS po
    JOIN
        menu AS m ON po.menu_id = m.id
    JOIN
        pizzeria AS piz ON m.pizzeria_id = piz.id
    GROUP BY
        piz.name
)
SELECT
    COALESCE(vc.name, oc.name) AS name,
    COALESCE(vc.count, 0) + COALESCE(oc.count, 0) AS total_count
FROM
    visit_counts AS vc
FULL JOIN
    order_counts AS oc ON vc.name = oc.name
ORDER BY
    total_count DESC,
    name ASC;
