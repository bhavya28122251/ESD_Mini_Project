
INSERT INTO courses (course_code, name, description, year, term, faculty, credits, capacity)
VALUES
    ('CS101', 'Data Structures', 'Basic data structures', 2023, 'Fall', 'Rajesh Sharma', 4, 50),
    ('ME201', 'Thermodynamics', 'Introduction to thermodynamics', 2023, 'Spring', 'Anita Verma', 3, 40),
    ('EL301', 'Circuit Design', 'Basic circuit design concepts', 2024, 'Fall', 'Suresh Gupta', 3, 30),
    ('CE401', 'Structural Engineering', 'Introduction to structures', 2024, 'Spring', 'Priya Iyer', 4, 35),
    ('BT501', 'Genetics', 'Basics of genetics', 2024, 'Fall', 'Amit Patel', 4, 25);


INSERT INTO faculty_courses (faculty_id, course_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);




INSERT INTO course_schedule (course_id, time, day, room, building)
VALUES
    (1, '10:00-11:30', 'Monday', 'CS101', 'Block A'),
    (2, '11:30-01:00', 'Tuesday', 'ME201', 'Block B'),
    (3, '02:00-03:30', 'Wednesday', 'EL301', 'Block C'),
    (4, '03:30-05:00', 'Thursday', 'CE401', 'Block D'),
    (5, '09:00-10:30', 'Friday', 'BT501', 'Block E');


INSERT INTO specialization (code, name, description, year, credits_required)
VALUES
    ('CS', 'Computer Science', 'Specialization in CS', 2023, 24),
    ('ME', 'Mechanical Engineering', 'Specialization in ME', 2023, 24),
    ('EL', 'Electronics', 'Specialization in EL', 2024, 20),
    ('CE', 'Civil Engineering', 'Specialization in CE', 2024, 20),
    ('BT', 'Biotechnology', 'Specialization in BT', 2024, 16);


INSERT INTO specialization_course (specialization_id, course_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);


INSERT INTO students (roll_number, first_name, last_name, email, photograph_path, cgpa, total_credits, graduation_year, domain, specialization, placement_id)
VALUES
    ('CS2021001', 'Arjun', 'Kapoor', 'arjun.kapoor@example.com', 'path/to/photo6.jpg', 8.5, 24, 2024, 1, 1, NULL),
    ('ME2021002', 'Kavya', 'Singh', 'kavya.singh@example.com', 'path/to/photo7.jpg', 7.8, 24, 2024, 2, 2, NULL),
    ('EL2021003', 'Rohit', 'Mishra', 'rohit.mishra@example.com', 'path/to/photo8.jpg', 8.2, 20, 2025, 3, 3, NULL),
    ('CE2021004', 'Nisha', 'Nair', 'nisha.nair@example.com', 'path/to/photo9.jpg', 7.5, 20, 2025, 4, 4, NULL),
    ('BT2021005', 'Vikram', 'Das', 'vikram.das@example.com', 'path/to/photo10.jpg', 8.9, 16, 2025, 5, 5, NULL);


INSERT INTO student_courses (student_id, course_id, grade_id, comments)
VALUES
    (1, 1, 1, 'Excellent performance'),
    (2, 2, 2, 'Good understanding'),
    (3, 3, 3, 'Needs improvement'),
    (4, 4, 4, 'Consistent work'),
    (5, 5, 5, 'Outstanding');

