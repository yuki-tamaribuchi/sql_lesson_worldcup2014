USE worldcup

SELECT c.group_name AS "グループ", MIN(ranking) AS "ランキング最上位", MAX(ranking) AS "ランキング最下位"
FROM countries AS c
GROUP BY c.group_name;