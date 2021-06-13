DROP TABLE IF EXISTS string;
CREATE TABLE string (cha CHAR(30), vch VARCHAR(30), txt TEXT);
INSERT INTO
  string (cha, vch, txt)
VALUES
  ('This is char', 'This is varchar', 'This is text');
UPDATE
  string
SET
  vch = 'This is ''varchar''';
SELECT
  QUOTE(vch)
FROM
  string;
SELECT
  CHAR(128);
SELECT
  CONCAT('danke sch', CHAR(148), 'n');
SELECT
  LENGTH(cha),
  LENGTH(vch),
  LENGTH(txt)
FROM
  string;
SELECT
  POSITION('var' IN vch)
FROM
  string;
SELECT
  LOCATE('var', vch, 11)
FROM
  string;
SELECT
  cust_id,
  cust_type_cd,
  fed_id,
  fed_id REGEXP '.{3}-.{2}-.{4}' is_ss_no_format
FROM
  customer;
SET
  time_zone = 'UTC';
SELECT
  *
FROM
  transaction;
UPDATE
  transaction
SET
  txn_date = '2021-06-07 02:00:00'
WHERE
  txn_id = 1111;
