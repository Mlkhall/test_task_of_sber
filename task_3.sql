-- 3.	На самую актуальную дату вывести идентификаторы клиентов,
-- у которых pos-оборот строго больше, чем в среднем по базе

SELECT
       report_dt,
       client_dk
FROM clnt_aggr
WHERE pos_amt > (SELECT AVG(pos_amt) AS mean_post FROM clnt_aggr)
ORDER BY report_dt DESC;