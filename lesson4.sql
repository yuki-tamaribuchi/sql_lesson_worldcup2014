USE worldcup

SELECT (SELECT c.name FROM countries AS c WHERE c.id=p.country_id) AS "国名", AVG(p.height) AS "平均身長"
FROM players AS p
GROUP BY p.country_id
ORDER BY AVG(p.height) DESC;
