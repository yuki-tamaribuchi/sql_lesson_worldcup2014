USE worldcup

SELECT p.name AS name, p.height AS height, p.weight AS weight
FROM players AS p
ORDER BY p.height DESC
LIMIT 5;