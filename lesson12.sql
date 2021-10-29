USE worldcup

SELECT g.goal_time AS "ゴール時間"
FROM goals AS g
WHERE g.pairing_id=103;