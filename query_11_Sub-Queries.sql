CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    age INT
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    instructor_name VARCHAR(100)
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students (student_id),
    FOREIGN KEY (course_id) REFERENCES courses (course_id)
);

CREATE TABLE grades (
    grade_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade CHAR(1),
    FOREIGN KEY (student_id) REFERENCES students (student_id),
    FOREIGN KEY (course_id) REFERENCES courses (course_id)
);

INSERT INTO students (student_name, age) VALUES
('John Doe', 20),
('Jane Smith', 22),
('Michael Brown', 21);

INSERT INTO courses (course_name, instructor_name) VALUES
('Math 101', 'Dr. Alice'),
('History 202', 'Dr. Bob'),
('Biology 303', 'Dr. Carol');

INSERT INTO enrollments (student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 1),
(3, 3);

INSERT INTO grades (student_id, course_id, grade) VALUES
(1, 1, 'B'),
(1, 2, 'A'),
(2, 2, 'C'),
(3, 1, 'B'),
(3, 3, 'A');

SELECT student_name
FROM students
WHERE student_id = (SELECT student_id FROM grades WHERE grade = (SELECT MAX(grade) FROM grades));

SELECT student_name
FROM students s
WHERE EXISTS (SELECT 1 FROM grades g WHERE g.student_id = s.student_id AND g.grade = 'A');

SELECT course_name
FROM courses c
WHERE course_id IN (SELECT course_id FROM enrollments WHERE student_id = (SELECT student_id FROM students WHERE student_name = 'John Doe'));

SELECT student_name, age
FROM students s
WHERE age > (SELECT AVG(age) FROM students WHERE student_id = s.student_id);

SELECT course_name
FROM courses c
WHERE course_id = (SELECT course_id FROM enrollments WHERE student_id = 3 LIMIT 1);

SELECT student_name
FROM students s
WHERE student_id IN (
    SELECT student_id
    FROM grades g
    WHERE grade = 'A'
);

SELECT course_name, grade
FROM courses c
JOIN grades g ON c.course_id = g.course_id
WHERE g.grade = 'B';

SELECT student_name
FROM students s
WHERE EXISTS (
    SELECT 1
    FROM enrollments e
    WHERE e.student_id = s.student_id AND e.course_id = 1
);
