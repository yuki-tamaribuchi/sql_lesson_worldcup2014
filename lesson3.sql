USE worldcup

SELECT c.name AS "国名", AVG(p.height) AS "平均身長"
FROM countries AS c
JOIN players AS p
ON c.id = p.country_id
GROUP BY c.name
ORDER BY AVG(p.height) DESC;