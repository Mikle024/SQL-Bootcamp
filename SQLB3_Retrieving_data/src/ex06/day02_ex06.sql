SELECT
    m.pizza_name,
    piz.name AS pizzeria_name
FROM
    person_order AS po
JOIN
    person AS p ON po.person_id = p.id
JOIN
    menu AS m ON po.menu_id = m.id
JOIN
    pizzeria AS piz ON m.pizzeria_id = piz.id
WHERE
    p.name IN ('Denis', 'Anna')
ORDER BY
    m.pizza_name,
    piz.name;
