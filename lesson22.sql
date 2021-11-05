USE worldcup

SELECT TRUNCATE(TIMESTAMPDIFF(year, p.birth, "2014-06-13")/5,0)*5 AS age, p.position AS position, COUNT(p.id) AS player_count, AVG(p.height) AS average_height, AVG(p.weight) AS average_weight
FROM players AS p
GROUP BY age, position