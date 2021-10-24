USE worldcup

SELECT COUNT(g.id) AS オウンゴール数
FROM goals AS g
LEFT JOIN players AS p
ON g.player_id=p.id
WHERE g.player_id IS NULL;