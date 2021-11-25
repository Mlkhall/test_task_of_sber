-- 4.	Дана историчная таблица t_client_addr.
-- Primary key таблицы – набор полей (client_id, start_dt, end_dt).
-- Ключ истории – client_id. Start_dt первой записи истории датируется 1900-01-01,
-- end_dt последней актуальной записи датируется 9999-12-31.
-- В таблице из-за ошибок ETL была некорректно сформирована история.

WITH yers_tb AS
        (SELECT client_id,
           strftime('%Y', start_dt) AS year_start,
           strftime('%Y', end_dt) AS year_end
    FROM t_client_addr)
-- A
SELECT
    client_id,
    year_start,
    year_end
FROM yers_tb
WHERE (
        year_start = (SELECT MAX(year_start) FROM yers_tb)
        OR year_end = (SELECT MIN(year_end) FROM yers_tb)
          );