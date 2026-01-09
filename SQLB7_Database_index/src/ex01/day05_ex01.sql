SET
    enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT
    m.pizza_name,
    piz.name AS pizzeria_name
FROM
    menu AS m
JOIN
    pizzeria AS piz ON m.pizzeria_id = piz.id;
