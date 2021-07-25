DROP TABLE IF EXISTS ezy_course;

CREATE TABLE ezy_course (
    course_id serial PRIMARY KEY,
    tutor_id int NOT NULL,
    course_name varchar(140) NOT NULL,
    course_description varchar(2000),
    course_format varchar(30),
    course_structure varchar(200),
    course_duration varchar(30),
    course_price int,
    course_language varchar(30),
    course_level varchar(30),
    posted_time timestamp DEFAULT NOW()
);

INSERT INTO ezy_course (course_id, tutor_id, course_name, posted_time)
    VALUES (1, 1, 'First course', '2020-12-17 05:40:00');

INSERT INTO ezy_course (course_id, tutor_id, course_name, posted_time)
    VALUES (2, 1, 'Second course', '2020-12-18 05:45:00');

