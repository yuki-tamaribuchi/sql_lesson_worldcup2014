USE worldcup

SELECT TIMESTAMPDIFF(year, p.birth, "2014-06-13") AS age, COUNT(p.id) AS player_count
FROM players AS p
GROUP BY age;