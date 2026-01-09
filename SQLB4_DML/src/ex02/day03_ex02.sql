SELECT
    m.pizza_name,
    m.price,
    piz.name AS pizzeria_name
FROM
    menu AS m
JOIN
    pizzeria AS piz ON m.pizzeria_id = piz.id
WHERE
    m.id NOT IN (SELECT menu_id FROM person_order)
ORDER BY
    m.pizza_name,
    m.price;
