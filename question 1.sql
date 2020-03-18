SELECT 
    s.student_id,
    s.name,
    ss.course_id,
    ss.score,
    m.course_id,
    m.score
FROM student s
LEFT JOIN student_score ss 
	ON s.student_id = ss.student_id AND ss.course_id = '1'
LEFT JOIN student_score m
	ON s.student_id = m.student_id AND m.course_id = '2'
WHERE ss.score > m.score
