WITH all_tours AS (
    WITH RECURSIVE paths AS (
        SELECT
            cost,
           ARRAY[point1, point2]::VARCHAR(1)[] AS path
       FROM (SELECT * FROM nodes WHERE point1 = 'a')

       UNION

        SELECT
            p.cost + n.cost,
            (path || point2)::VARCHAR(1)[] AS path
        FROM paths p
            JOIN nodes n
                ON n.point1 = path[array_length(path, 1)]
       WHERE
            (array_length(path, 1) < (SELECT COUNT (DISTINCT point1) FROM nodes)
           AND n.point2 != ALL(path))
            OR
            (array_length(path, 1) = (SELECT COUNT(DISTINCT point1) FROM nodes)
            AND n.point2 = path[1])
    )
    SELECT
        cost AS total_cost,
        '{' || array_to_string(path, ',') || '}' AS tour
    FROM paths
    WHERE array_length(path, 1) = 5
)

SELECT *
FROM all_tours
WHERE
    total_cost = (SELECT MIN(total_cost) FROM all_tours) OR
    total_cost = (SELECT MAX(total_cost) FROM all_tours)
ORDER BY 1, 2
