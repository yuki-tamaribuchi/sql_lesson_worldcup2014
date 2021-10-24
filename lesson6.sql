USE worldcup

SELECT p.name AS "名前", p.position AS "ポジション", p.club AS "所属クラブ", (SELECT COUNT(g.id) FROM goals AS g WHERE p.id=g.player_id) AS "ゴール数"
FROM players AS p
ORDER BY ゴール数 DESC;