INSERT INTO ezy_tutor (tutor_name, tutor_pic_url, tutor_profile)
    VALUES ($1, $2, $3)
RETURNING
    tutor_id, tutor_name, tutor_pic_url, tutor_profile;

SELECT
    tutor_id,
    tutor_name,
    tutor_pic_url,
    tutor_profile
FROM
    ezy_tutor
WHERE
    tutor_id = $1;

DELETE FROM ezy_tutor
WHERE tutor_id = $1;

SELECT
    tutor_id,
    tutor_name,
    tutor_pic_url,
    tutor_profile
FROM
    ezy_tutor_c6
WHERE
    tutor_id = $1;

UPDATE
    ezy_tutor
SET
    tutor_name = $1,
    tutor_pic_url = $2,
    tutor_profile = $3
WHERE
    tutor_id = $4
RETURNING
    tutor_id,
    tutor_name,
    tutor_pic_url,
    tutor_profile;

SELECT
    tutor_id,
    tutor_name,
    tutor_pic_url,
    tutor_profile
FROM
    ezy_tutor;

