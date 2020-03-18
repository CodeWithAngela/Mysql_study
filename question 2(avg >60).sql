SELECT student_id, s.name, AVG(score)
FROM student_score ss
JOIN student s USING(student_id)
GROUP BY student_id, s.name
HAVING AVG(score) > 60