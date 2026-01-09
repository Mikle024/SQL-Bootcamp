-- ====================================================================
-- == Проверочный скрипт для Day 03 (DML)
-- ====================================================================

-- 1. Проверка ex07, ex08, ex11, ex13: Изменения в таблице `menu`
-- Ожидаем увидеть 'sicilian pizza' с ценой 900 и НЕ увидеть 'greek pizza'
SELECT * FROM menu WHERE pizza_name IN ('sicilian pizza', 'greek pizza') ORDER BY pizza_name;


-- 2. Проверка ex09: Новые посещения от Denis и Irina
-- Ожидаем увидеть 2 записи о посещении Dominos 24 февраля 2022
SELECT p.name AS person_name, piz.name AS pizzeria_name, pv.visit_date
FROM person_visits pv
JOIN person p ON pv.person_id = p.id
JOIN pizzeria piz ON pv.pizzeria_id = piz.id
WHERE pv.visit_date = '2022-02-24'
ORDER BY p.name;


-- 3. Проверка ex10 и ex12: Новые заказы
-- Ожидаем увидеть заказы на 'sicilian pizza' от Denis и Irina
-- НЕ должны увидеть заказов от 25 февраля 2022 (удалены в ex13)
SELECT p.name AS person_name, m.pizza_name, po.order_date
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m ON po.menu_id = m.id
WHERE po.order_date >= '2022-02-24'
ORDER BY po.order_date, p.name;


-- 4. Итоговая проверка количества строк в измененных таблицах
-- Эти цифры могут помочь быстро свериться с эталоном.
-- (Эталонные значения посчитаны после полного прогона всех скриптов)
SELECT
    (SELECT COUNT(*) FROM menu) AS menu_count,
    (SELECT COUNT(*) FROM person_visits) AS visits_count,
    (SELECT COUNT(*) FROM person_order) AS orders_count;

