
Find the students: average score > 60
```
SELECT student_id, s.name, TRUNCATE(AVG(score),2) AS average_score
FROM student_score ss
JOIN student s USING(student_id)
GROUP BY student_id, s.name
HAVING AVG(score) > 60
```
