DROP TABLE IF EXISTS ezy_course CASCADE;

DROP TABLE IF EXISTS ezy_tutor;

-- Create tables.
CREATE TABLE ezy_tutor (
    tutor_id serial PRIMARY KEY,
    tutor_name varchar(200) NOT NULL,
    tutor_pic_url varchar(200) NOT NULL,
    tutor_profile varchar(2000) NOT NULL
);

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
    posted_time timestamp DEFAULT NOW(),
    CONSTRAINT fk_tutor FOREIGN KEY (tutor_id) REFERENCES ezy_tutor (tutor_id)
);

-- Load seed data for testing.
INSERT INTO ezy_tutor (tutor_id, tutor_name, tutor_pic_url, tutor_profile)
    VALUES (1, 'Merlene', 'http://s3.amazon.aws.com/pic1', 'Merlene is an experienced finance professional');

INSERT INTO ezy_tutor (tutor_id, tutor_name, tutor_pic_url, tutor_profile)
    VALUES (2, 'Frank', 'http://s3.amazon.aws.com/pic2', 'Frank is an expert nuclear engineer');

INSERT INTO ezy_course (course_id, tutor_id, course_name, course_level, posted_time)
    VALUES (1, 1, 'First course', 'Beginner', '2021-04-12 05:40:00');

INSERT INTO ezy_course (course_id, tutor_id, course_name, course_format, posted_time)
    VALUES (2, 1, 'Second course', 'ebook', '2021-04-12 05:45:00');

