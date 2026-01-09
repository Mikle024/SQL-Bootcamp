SELECT
    order_date,
    name || ' (age:' || age || ')' AS person_information
FROM
    person_order
NATURAL JOIN
    (SELECT id AS person_id, name, age, gender, address FROM person)
    AS person_details
ORDER BY
    order_date,
    person_information;
