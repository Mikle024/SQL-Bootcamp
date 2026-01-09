COMMENT ON TABLE person_discounts IS
    'This table stores personal discount for each person at a specific pizzeria.';

COMMENT ON COLUMN person_discounts.id IS
    'Primary KEY of the table';

COMMENT ON COLUMN person_discounts.person_id IS
    'Identifier of the person (foreign KEY to person table)';

COMMENT ON COLUMN person_discounts.pizzeria_id IS
    'Identifier of the pizzeria (foreign KEY to pizzeria table)';

COMMENT ON COLUMN person_discounts.discount IS
    'Discounts value in percent for a specific person in a specific pizzeria';
