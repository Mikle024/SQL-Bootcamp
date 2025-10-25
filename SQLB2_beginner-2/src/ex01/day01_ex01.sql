SELECT object_name
FROM (
    SELECT name AS object_name, 1 AS sort_group
    FROM person
    UNION ALL
    SELECT pizza_name AS object_name, 2 AS sort_group
    FROM menu
) AS tmp_data
ORDER BY
    tmp_data.sort_group,
    tmp_data.object_name;
