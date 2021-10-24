USE worldcup

SELECT pair.kickoff AS "日時", c1.name AS "国名1", c2.name AS "国名2"
FROM pairings AS pair
JOIN countries AS c1
ON my_country_id=c1.id
JOIN countries AS c2
ON enemy_country_id=c2.id
ORDER BY pair.kickoff;