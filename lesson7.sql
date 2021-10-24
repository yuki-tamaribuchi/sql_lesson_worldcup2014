USE worldcup

SELECT p.name AS "名前", p.position AS "ポジション", p.club AS "所属クラブ", COUNT(g.id) AS "ゴール数"
FROM players AS p
JOIN goals AS g
ON p.id=g.player_id
GROUP BY p.id
ORDER BY ゴール数 DESC;