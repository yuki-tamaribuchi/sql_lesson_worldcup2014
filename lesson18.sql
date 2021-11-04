USE worldcup

SELECT p.kickoff AS "キックオフ時間", DATE_SUB(p.kickoff, INTERVAL 12 HOUR) AS "キックオフ時間(日本時間)"
FROM pairings AS p
WHERE p.my_country_id=1 AND p.enemy_country_id=4;