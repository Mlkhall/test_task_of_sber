-- 2.	На самую актуальную дату вывести территориальный банк,
-- возраст и заработную плату клиентов, получающих максимальную заработную плату
-- в своем территориальном банке

SELECT
    l.report_dt AS report_dt,
    l.tb_name AS tb_bank_name,
    r.age AS age,
    MAX(l.salary) AS max_salary

FROM clnt_aggr AS l INNER JOIN clnt_data AS r
ON l.client_dk = r.сlient_dk
GROUP BY l.report_dt, l.tb_name
ORDER BY l.report_dt DESC
LIMIT 1;