CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100)
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100)
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

CREATE OR REPLACE FUNCTION add_grade()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO grades (student_id, course_id, grade) VALUES (NEW.student_id, NEW.course_id, 'C');
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_add_grade
AFTER INSERT ON enrollments
FOR EACH ROW
EXECUTE FUNCTION add_grade();

CREATE OR REPLACE FUNCTION prevent_deletion()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM enrollments WHERE student_id = OLD.student_id) THEN
        RAISE EXCEPTION 'Student is still enrolled';
    END IF;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_prevent_deletion
BEFORE DELETE ON students
FOR EACH ROW
EXECUTE FUNCTION prevent_deletion();
