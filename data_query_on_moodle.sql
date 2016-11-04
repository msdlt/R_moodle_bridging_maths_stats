SELECT
    mq.name,
    ma.id,
    ma.userid,
    ma.attempt,
    ma.state, 
    ma.sumgrades, 
    ma.timestart, 
    mu.firstname,
    mu.lastname,
    mu.email
FROM
   `mdl_quiz_attempts` AS ma,
   `mdl_user` as mu,
   `mdl_quiz` as mq
WHERE
   mu.`id` = ma.`userid`
AND
   mq.id = ma.quiz
AND
   ma.`quiz` IN (
      SELECT mq.id
      FROM `mdl_quiz` as mq
      WHERE mq.course = 13
   )
AND
   mu.id >= 55
AND
   mu.username LIKE 'ltiprovider%'
AND
   mu.id NOT IN (70,158,190,191,69,108,182,71,67,68,99,134,157,168)
