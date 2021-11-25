-- Б) Написать запрос (или последовательность запросов),
-- исправляющий некорректную историю в таблице.

WITH yers_max AS (SELECT strftime('%Y', start_dt) AS year_start FROM t_client_addr)

UPDATE t_client_addr
SET start_dt=strftime('2021-%m-%d', start_dt)
WHERE strftime('%Y', start_dt) = (SELECT MAX(year_start) FROM yers_max);


WITH yers_min AS (SELECT strftime('%Y', end_dt) AS year_end FROM t_client_addr)

UPDATE t_client_addr
SET end_dt=strftime('1970-%m-%d', start_dt)
WHERE strftime('%Y', end_dt)=(SELECT MIN(year_end) FROM yers_min);