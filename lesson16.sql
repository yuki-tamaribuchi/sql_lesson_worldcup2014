USE worldcup

SELECT p1.kickoff AS "キックオフ日時", 
	c1.name AS "自国名",
	c2.name AS "対戦相手国名",
	c1.ranking AS "自国FIFAランク",
	c2.ranking AS "対戦相手国FIFAランク", 
	(
		SELECT COUNT(g1.id) 
		FROM goals AS g1 
		WHERE g1.pairing_id=p1.id
		) AS "自国ゴール数",
	(
		SELECT COUNT(g2.id) 
		FROM goals AS g2
		LEFT JOIN pairings AS p2
		ON g2.pairing_id=p2.id
		WHERE p1.enemy_country_id=p2.my_country_id AND p1.my_country_id=p2.enemy_country_id
		) AS "対戦相手国ゴール数"
FROM pairings AS p1
LEFT JOIN countries AS c1
ON p1.my_country_id=c1.id
LEFT JOIN countries AS c2
ON p1.enemy_country_id=c2.id
WHERE c1.group_name="C" AND c2.group_name="C"
ORDER BY p1.kickoff, c1.ranking;