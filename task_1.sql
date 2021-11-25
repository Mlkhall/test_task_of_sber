-- 1.	На все отчетные даты за 2019 г.
-- вывести количество клиентов и средний размер заработной платы по территориальным банкам,
-- полу и группе по возрасту (меньше 18 (включительно), от 18 до 30 (включительно),
-- от 30 до 60(включительно), больше 60 лет)

SELECT
       tb_name, salary, gender, age_group,
       COUNT(client_dk) AS clients_count,
       AVG(salary) AS mean_salary
FROM
(SELECT
    *,
    (CASE
        WHEN r.age <= 18 THEN '<=18'
        WHEN  r.age > 18 AND r.age <= 30 THEN '19-30'
        WHEN  r.age > 30 AND r.age <= 60  THEN '31-60'
        WHEN  r.age > 60 THEN '>60'
    END) AS age_group

    FROM clnt_aggr AS l INNER JOIN clnt_data AS r
    ON l.client_dk = r.сlient_dk)
GROUP BY tb_name, salary, gender, age_group;