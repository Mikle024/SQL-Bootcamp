-- ====================================================================
-- == ЧАСТЬ 2: Проверка состояния ПОСЛЕ выполнения ex08
-- (Выполнять ПОСЛЕ скрипта очистки ex08)
-- ====================================================================

-- 2.1. Проверка, что все представления и МП удалены
-- Ожидаем: запрос не должен вернуть НИ ОДНОЙ строки (0 rows)
SELECT 'VIEW' AS object_type, viewname AS object_name FROM pg_views WHERE viewname LIKE 'v_%' AND schemaname = 'public'
UNION ALL
SELECT 'MATERIALIZED VIEW' AS object_type, matviewname AS object_name FROM pg_matviews WHERE matviewname LIKE 'mv_%' AND schemaname = 'public';

