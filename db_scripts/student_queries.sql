
use student_db;

## ✅ Select all students

SELECT * FROM student;


## ✅ Select all courses

SELECT * FROM course;


## 🔗 Select all enrollments with student names and course names

SELECT s.first_name, s.last_name, c.course_name
FROM studentCourse sc
JOIN student s ON sc.student_id = s.student_id
JOIN course c ON sc.course_id = c.course_id;


## 🔗 Find all courses for a specific student (e.g., student_id = 1)

SELECT c.course_name
FROM studentCourse sc
JOIN course c ON sc.course_id = c.course_id
WHERE sc.student_id = 1;


## 🔗 Count how many students are in each course

SELECT c.course_name, COUNT(sc.student_id) AS student_count
FROM course c
JOIN studentCourse sc ON c.course_id = sc.course_id
GROUP BY c.course_id;

