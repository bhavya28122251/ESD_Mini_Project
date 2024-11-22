ALTER TABLE faculty_courses
--     ADD CONSTRAINT fk_faculty_courses_faculty FOREIGN KEY (faculty_id)
--         REFERENCES employees(employee_id),
ADD CONSTRAINT fk_faculty_courses_course FOREIGN KEY (course_id)
REFERENCES courses(course_id);

ALTER TABLE course_schedule
    ADD CONSTRAINT fk_course_schedule_course FOREIGN KEY (course_id)
        REFERENCES courses(course_id);

ALTER TABLE specialization_course
    ADD CONSTRAINT fk_specialization_course_specialization FOREIGN KEY (specialization_id)
        REFERENCES specialization(specialization_id),
ADD CONSTRAINT fk_specialization_course_course FOREIGN KEY (course_id)
REFERENCES courses(course_id);

ALTER TABLE students
    ADD CONSTRAINT fk_students_specialization FOREIGN KEY (specialization)
        REFERENCES specialization(specialization_id);

ALTER TABLE student_courses
    ADD CONSTRAINT fk_student_courses_student FOREIGN KEY (student_id)
        REFERENCES students(student_id),
ADD CONSTRAINT fk_student_courses_course FOREIGN KEY (course_id)
REFERENCES courses(course_id);

