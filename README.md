# SQL Bootcamp

*Tasks in the SQL Bootcamp* <img src="materials/images/heart_21_x10.gif" alt="drawing" width="20" height="20"/>

![sql.png](materials/images/sql.png)

| Day | Topic | Key Skills                                                                                                     |
|:---:|:---|:---------------------------------------------------------------------------------------------------------------|
| **00** | `SQLB1_beginner-1` | Basic SQL, Relational Model, Sets [подробнее](SQLB1_beginner-1/README.md)                                      |
| **01** | `SQLB2_beginner-2` | JOINs, UNIONs, Data Aggregation [подробнее](SQLB2_beginner-2/README.md)                                        |
| **02** | `SQLB3_Retrieving_data` | Subqueries, CTE, Data Filtering [подробнее](SQLB3_Retrieving_data/README.md)                               |
| **03** | `SQLB4_DML` | INSERT, UPDATE, DELETE, MERGE, Data Manipulation [подробнее](SQLB4_DML/README.md)                              |
| **04** | `SQLB5_Snapshots` | Database Views, Materialized Views, Virtual Tables  [подробнее](SQLB5_Snapshots/README.md)                     |
| **05** | `SQLB6_Salesman_problem` | **Recursive CTE**, Traveling Salesman Problem (TSP)   [подробнее](SQLB6_Salesman_problem/README.md)            |
| **06** | `SQLB7_Database_index` | B-Tree Indexes, Optimization, Query Planning (`EXPLAIN ANALYZE`)   [подробнее](SQLB7_Database_index/README.md) |
| **07** | `SQLB8_Integrating_features` | Constraints, Keys, Database Design  [подробнее](SQLB8_Integrating_features/README.md)                          |
| **08** | `SQLB9_OLAP` | **Window Functions**, Analytical Queries, Ranking     [подробнее](SQLB9_OLAP/README.md)                        |
| **09** | `SQLB10_Isolation_levels` | **ACID**, Transaction Isolation Levels, Deadlocks  [подробнее](SQLB10_Isolation_levels/README.md)              |
| **10** | `SQLB11_Functions_and_procs` | PL/pgSQL, Stored Procedures, Functions, Triggers  [подробнее](SQLB11_Functions_and_procs/README.md)            |
| **11** | `SQLB12_Warehouse_fundamentals` | JOIN Algorithms, Optimization, Tablespaces   [подробнее](SQLB12_Warehouse_fundamentals/README.md)              |

---

### 🔹 Базовый SQL и манипуляция данными (Days 00-03)
Работа с реляционной алгеброй, множествами и соединением таблиц.
- Построение сложных выборок данных.
- Использование `CTE` (Common Table Expressions) для улучшения читаемости.
- Операции изменения данных (DML).

### 🔹 Продвинутые техники запросов (Days 04-05)
Решение алгоритмических задач средствами SQL.
- Создание представлений (`VIEW`) для абстракции данных.
- **Задача коммивояжера:** Реализация поиска кратчайшего пути в графе с использованием **рекурсивных CTE**.

### 🔹 Оптимизация и Аналитика (Days 06-08)
Глубокое погружение в производительность и анализ.
- Настройка индексов (B-Tree) и анализ планов выполнения запросов (`EXPLAIN ANALYZE`).
- Использование оконных функций (`OVER`, `PARTITION BY`) для OLAP-задач.

### 🔹 Администрирование и Программирование (Days 09-11)
Работа с внутренней логикой СУБД.
- Понимание уровней изоляции транзакций (Read Committed, Repeatable Read, Serializable).
- Написание бизнес-логики на **PL/pgSQL**: триггеры, функции и хранимые процедуры.

---

## 🛠️ Technical stack

*   **Database:** PostgreSQL 14+
*   **Tools:** Docker, Docker Compose, pgAdmin / DBeaver
*   **Concepts:** ACID, Normalization, Indexing, OLAP, Recursive Queries


--- 
