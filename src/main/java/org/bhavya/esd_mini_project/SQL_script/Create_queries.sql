CREATE TABLE employees (
                           employee_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                           first_name VARCHAR(255) NOT NULL,
                           last_name VARCHAR(255) NOT NULL,
                           email VARCHAR(255) UNIQUE NOT NULL,
                           title VARCHAR(255),
                           photograph_path VARCHAR(255),
                           department INT UNSIGNED
);

CREATE TABLE faculty_courses (
                                 id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                                 faculty_id INT UNSIGNED NOT NULL,
                                 course_id INT UNSIGNED NOT NULL
);

CREATE TABLE courses (
                         course_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                         course_code VARCHAR(50) UNIQUE NOT NULL,
                         name VARCHAR(255) NOT NULL,
                         description TEXT,
                         year INT,
                         term VARCHAR(50),
                         faculty VARCHAR(255),
                         credits INT,
                         capacity INT
);

CREATE TABLE course_schedule (
                                 id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                                 course_id INT UNSIGNED NOT NULL,
                                 time VARCHAR(50),
                                 day VARCHAR(50),
                                 room VARCHAR(50),
                                 building VARCHAR(255)
);

CREATE TABLE specialization (
                                specialization_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                                code VARCHAR(50) UNIQUE NOT NULL,
                                name VARCHAR(255) NOT NULL,
                                description TEXT,
                                year INT,
                                credits_required INT
);

CREATE TABLE specialization_course (
                                       id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                                       specialization_id INT UNSIGNED NOT NULL,
                                       course_id INT UNSIGNED NOT NULL
);

CREATE TABLE students (
                          student_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                          roll_number VARCHAR(50) UNIQUE NOT NULL,
                          first_name VARCHAR(255) NOT NULL,
                          last_name VARCHAR(255) NOT NULL,
                          email VARCHAR(255) UNIQUE NOT NULL,
                          photograph_path VARCHAR(255),
                          cgpa NUMERIC(3, 2),
                          total_credits INT,
                          graduation_year INT,
                          domain INT UNSIGNED,
                          specialization INT UNSIGNED,
                          placement_id INT UNSIGNED
);

CREATE TABLE student_courses (
                                 id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                                 student_id INT UNSIGNED NOT NULL,
                                 course_id INT UNSIGNED NOT NULL,
                                 grade_id INT UNSIGNED,
                                 comments TEXT
);
