DESC person;
DELETE FROM
  favorite_food;
DELETE FROM
  person;
INSERT INTO
  person (person_id, first_name, last_name, gender, birth_date)
VALUES
  (1, 'William', 'Thunder', 'M', '1972-05-27'),
  (2, 'Shohei', 'Ban', 'M', '1972-05-27');
SELECT
  *
FROM
  person;
SELECT
  *
FROM
  person p
WHERE
  p.person_id = 2;
INSERT INTO
  favorite_food(person_id, food)
VALUES
  (2, 'pizza'),
  (2, 'cookies'),
  (2, 'nachos');
SELECT
  *
FROM
  favorite_food ff
WHERE
  ff.person_id = 2
ORDER BY
  ff.food;
