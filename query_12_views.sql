CREATE VIEW student_grades AS
SELECT s.student_name, c.course_name, g.grade
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN courses c ON g.course_id = c.course_id;

CREATE VIEW student_average_grade AS
SELECT s.student_name, AVG(
    CASE
        WHEN g.grade = 'A' THEN 4
        WHEN g.grade = 'B' THEN 3
        WHEN g.grade = 'C' THEN 2
        WHEN g.grade = 'D' THEN 1
        ELSE 0
    END
) AS average_grade
FROM students s
JOIN grades g ON s.student_id = g.student_id
GROUP BY s.student_name;

CREATE VIEW course_enrollments AS
SELECT c.course_name, COUNT(e.student_id) AS total_enrollments
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

CREATE VIEW student_courses AS
SELECT s.student_name, string_agg(c.course_name, ', ') AS courses_enrolled
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
GROUP BY s.student_name;

CREATE VIEW students_with_a_grade AS
SELECT s.student_name
FROM students s
JOIN grades g ON s.student_id = g.student_id
WHERE g.grade = 'A';



SELECT * FROM student_grades;

SELECT * FROM student_average_grade;

SELECT * FROM course_enrollments;

SELECT * FROM student_courses;

SELECT * FROM students_with_a_grade;
