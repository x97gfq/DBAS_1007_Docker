
USE student_db_w0304317;


SELECT * FROM student;


SELECT first_name, last_name FROM student;


SELECT course_name FROM course WHERE course_code = 'CSE427';


SELECT * FROM student WHERE email = 'daniel.owen@example.com';


SELECT * FROM course ORDER BY course_name ASC;


SELECT COUNT(*) FROM student;


SELECT DISTINCT first_name FROM student ORDER BY first_name ASC;


SELECT student_id, course_id FROM studentCourse;


SELECT * FROM studentCourse WHERE enrollment_date > '2023-09-01';


SELECT student_id FROM studentCourse WHERE enrollment_date BETWEEN '2023-09-01' AND '2023-12-31';


SELECT first_name AS 'First Name', last_name AS 'Last Name' FROM student;


SELECT * FROM student WHERE first_name IN ('Cory', 'Derek');


SELECT * FROM course WHERE course_name LIKE '%Business%';


SELECT * FROM student WHERE last_name LIKE 'S%';


SELECT * FROM student ORDER BY email DESC LIMIT 5;


SELECT course_id, course_name FROM course WHERE course_name LIKE '%Global%';


SELECT * FROM student WHERE first_name LIKE 'Al%';


SELECT * FROM student WHERE last_name LIKE '%son';


SELECT * FROM student WHERE first_name LIKE 'J%' ORDER BY first_name;

