USE worldcup

SELECT TRUNCATE(TIMESTAMPDIFF(year, p.birth, "2014-06-13")/5, 0) * 5 AS age, COUNT(p.id) AS player_count
FROM players AS p
GROUP BY age;