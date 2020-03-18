
Find the students: average score > 60
```sql
SELECT student_id, s.name, TRUNCATE(AVG(score),2) AS average_score
FROM student_score ss
JOIN student s USING(student_id)
GROUP BY student_id, s.name
HAVING AVG(score) > 60
```
![image](https://github.com/CodeWithAngela/Mysql_study/blob/master/practice/%E5%9B%BE%E7%89%87%201.jpg)
