DROP TABLE IF EXISTS date;
CREATE TABLE date (d DATE, dt DATETIME, ts TIMESTAMP, y YEAR, t TIME);
SET
  time_zone = '+00:00';
SHOW VARIABLES LIKE '%time_zone%';
INSERT INTO
  date (d, dt, ts, y, t)
VALUES
  (
    '1000-01-01',
    '1000-01-01 00:00:00',
    '1970-01-01 09:00:00',
    '1901',
    '-838:59:59'
  ),
  (
    '9999-12-31',
    '9999-12-31 23:59:59',
    /* Year 2038 problem */
    '2038-01-19 03:14:07',
    '2155',
    '838:59:59'
  );
SELECT
  *
FROM
  date;
SET
  time_zone = '+1:00';
SELECT
  *
FROM
  date;
