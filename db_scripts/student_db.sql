
CREATE DATABASE IF NOT EXISTS student_db_w0304317;
USE student_db_0304317;

#change student_w0XXXXXX to your own W# in -both- places:

CREATE USER IF NOT EXISTS 'student_w0304317'@'%' IDENTIFIED BY 'Passw0rd!';
GRANT ALL PRIVILEGES ON student_db_w0304317.* TO 'student_w0304317'@'%';
FLUSH PRIVILEGES;

-- Create student table
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- Create course table
CREATE TABLE course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    course_code VARCHAR(20)
);

-- Create studentCourse table (junction table)
CREATE TABLE studentCourse (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);



