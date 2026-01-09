SELECT
    p.address,
    piz.name,
    COUNT(*) AS count_of_orders
FROM
    person_order AS po
JOIN
    person AS p ON po.person_id = p.id
JOIN
    menu AS m ON po.menu_id = m.id
JOIN
    pizzeria AS piz ON m.pizzeria_id = piz.id
GROUP BY
    p.address,
    piz.name
ORDER BY
    p.address,
    piz.name;
