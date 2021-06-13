DROP TABLE IF EXISTS number;
CREATE TABLE number (
  b BOOLEAN,
  t TINYINT,
  s SMALLINT,
  m MEDIUMINT,
  i INT,
  bi BIGINT,
  u BIGINT UNSIGNED,
  f FLOAT,
  d DOUBLE(5, 2)
);
INSERT INTO
  number(b, t, s, m, i, bi, u, f, d)
VALUES
  (
    FALSE,
    -128,
    -32768,
    -8388608,
    -2147483648,
    -9223372036854775808,
    0,
    0.42,
    0.42
  ),
  (
    TRUE,
    127,
    32767,
    8388607,
    2147483647,
    9223372036854775807,
    18446744073709551615,
    99.42,
    999.42
  );
SELECT
  *
FROM
  number;
