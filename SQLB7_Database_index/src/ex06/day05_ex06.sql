-- DROP INDEX IF EXISTS idx_1;

CREATE INDEX 
    idx_1 ON pizzeria(id, rating);

SET
    enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT
    m.pizza_name AS pizza_name,
    max(rating) OVER (PARTITION BY rating
    ORDER BY
        rating
    ROWS BETWEEN UNBOUNDED PRECEDING
    AND UNBOUNDED FOLLOWING)
FROM
    menu AS m
JOIN
    pizzeria AS pz ON m.pizzeria_id = pz.id
ORDER BY 1, 2;
