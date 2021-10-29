USE worldcup

SELECT c.name AS "国名", COUNT(g.id) AS "ゴール数"
FROM countries AS c
JOIN pairings AS p
ON p.my_country_id=c.id
JOIN goals AS g
ON g.pairing_id=p.id
WHERE p.id=39 OR p.id=103
GROUP BY c.name;