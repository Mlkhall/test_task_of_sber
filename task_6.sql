-- 5.	Даны две таблицы :
-- в одной ведется история адреса проживания клиента, в другой – место его работы
--
-- Primary key обеих таблиц – колонки (client_id, start_dt, end_dt). «Ключ истории» - поле client_id
-- Необходимо написать sql-запрос для формирования общей истории изменения двух атрибутов клиента

SELECT
    l.client_id AS client_id,
    l.start_dt AS start_dt,
    l.end_dt AS start_dt,
    l.Client_addr AS Client_addr,
    r.Client_job AS Client_job

FROM t_client_addr AS l INNER JOIN t_client_job AS r
ON (l.client_id = r.client_id AND ( l.end_dt = r.end_dt OR l.start_dt = r.start_dt))
