USE worldcup

SELECT  c.group_name AS "グループ", COUNT(g.id) AS "総得点数"
FROM countries AS c
JOIN pairings AS p
ON p.my_country_id=c.id
JOIN goals AS g
ON g.pairing_id=p.id
WHERE p.kickoff BETWEEN '2014-06-13 0:00:00' AND '2014-06-27 23:59:59'
GROUP BY c.group_name;