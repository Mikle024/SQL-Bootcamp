(
    SELECT
        piz.name,
        COUNT(*) AS count,
        'order' AS action_type
    FROM
        person_order AS po
    JOIN
        menu AS m ON po.menu_id = m.id
    JOIN
        pizzeria AS piz ON m.pizzeria_id = piz.id
    GROUP BY
        piz.name
    ORDER BY
        count DESC
    LIMIT
        3
)
UNION ALL
(
    SELECT
        piz.name,
        COUNT(*) AS count,
        'visit' AS action_type
    FROM
        person_visits AS pv
    JOIN
        pizzeria AS piz ON pv.pizzeria_id = piz.id
    GROUP BY
        piz.name
    ORDER BY
        count DESC
    LIMIT
        3
)
ORDER BY
    action_type ASC,
    count DESC;
