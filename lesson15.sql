USE worldcup

SELECT p.kickoff AS "キックオフ日時", 
	c1.name AS "自国名", 
	c2.name AS "対戦相手国名", 
	c1.ranking AS "自国FIFAランク", 
	c2.ranking AS "対戦相手国FIFAランク", 
	(
		SELECT COUNT(g.id) 
		FROM goals AS g 
		WHERE g.pairing_id=p.id
		) AS "自国ゴール数"
FROM pairings AS p
JOIN countries AS c1
ON p.my_country_id=c1.id
JOIN countries AS c2
ON p.enemy_country_id=c2.id
WHERE c1.group_name="C" AND c2.group_name="C"
ORDER BY p.kickoff, c1.ranking;