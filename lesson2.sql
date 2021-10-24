USE worldcup

SELECT AVG(p.height) AS "平均身長", AVG(p.weight) AS "平均体重"
FROM players as p
WHERE p.position="GK";