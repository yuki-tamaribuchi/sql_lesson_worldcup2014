USE worldcup

SELECT p.birth AS "誕生日", TIMESTAMPDIFF(YEAR, p.birth, '2014-06-13') AS "年齢", p.name AS "名前", p.position AS "ポジション"
FROM players AS p
ORDER BY 年齢 DESC;