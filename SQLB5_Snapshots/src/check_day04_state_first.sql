-- ====================================================================
-- == Проверочный скрипт для Day 04 (Views)
-- ====================================================================

-- ЧАСТЬ 1: Проверка состояния ПОСЛЕ выполнения ex00 - ex07
-- (Выполнять ДО скрипта очистки ex08)
-- ====================================================================

-- 1.1. Проверка существования всех представлений и их типов
-- Ожидаем: 5 VIEW и 1 MATERIALIZED VIEW
SELECT
    schemaname,
    viewname,
    definition
FROM pg_views WHERE viewname LIKE 'v_%' AND schemaname = 'public'
UNION ALL
SELECT
    schemaname,
    matviewname,
    definition
FROM pg_matviews WHERE matviewname LIKE 'mv_%' AND schemaname = 'public';


-- 1.2. Проверка v_price_with_discount (ex05)
-- Ожидаем: список заказов со скидкой, например, для Andrey
SELECT * FROM v_price_with_discount WHERE person_name = 'Andrey' ORDER BY pizza_name;


-- 1.3. Проверка mv_dmitriy_visits_and_eats ПОСЛЕ REFRESH (ex06, ex07)
-- Ожидаем: ДВЕ пиццерии, которые Дмитрий посетил 8 января и где есть пицца < 800р
SELECT * FROM mv_dmitriy_visits_and_eats ORDER BY pizzeria_name;
