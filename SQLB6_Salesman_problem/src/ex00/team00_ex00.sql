CREATE TABLE IF NOT EXISTS nodes (
    point1 VARCHAR(1) NOT NULL,
    point2 VARCHAR(1) NOT NULL,
    cost INT NOT NULL
);

INSERT INTO nodes (point1, point2, cost) VALUES
('a', 'b', 10), ('b', 'a', 10),
('a', 'c', 15), ('c', 'a', 15),
('a', 'd', 20), ('d', 'a', 20),
('b', 'c', 35), ('c', 'b', 35),
('b', 'd', 25), ('d', 'b', 25),
('c', 'd', 30), ('d', 'c', 30);

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
WHERE total_cost = (SELECT MIN(total_cost) FROM all_tours)
ORDER BY 1, 2
