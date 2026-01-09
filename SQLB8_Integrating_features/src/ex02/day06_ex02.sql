SELECT
    p.name,
    m.pizza_name,
    m.price,
    (m.price * (1 - pd.discount / 100))::REAL AS discount_price,
    piz.name AS pizzeria_name
FROM
    person_order AS po
JOIN
    person AS p ON po.person_id = p.id
JOIN
    menu AS m ON po.menu_id = m.id
JOIN
    pizzeria AS piz ON m.pizzeria_id = piz.id
JOIN
    person_discounts AS pd ON p.id = pd.person_id AND piz.id = pd.pizzeria_id
ORDER BY
    p.name,
    m.pizza_name;
