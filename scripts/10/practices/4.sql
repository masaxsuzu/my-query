SELECT
  d1.x + d2.x + 1
FROM
  (
    SELECT
      0 x
    UNION ALL
    SELECT
      1 x
    UNION ALL
    SELECT
      2 x
    UNION ALL
    SELECT
      3 x
    UNION ALL
    SELECT
      4 x
    UNION ALL
    SELECT
      5 x
    UNION ALL
    SELECT
      6 x
    UNION ALL
    SELECT
      7 x
    UNION ALL
    SELECT
      8 x
    UNION ALL
    SELECT
      9 x
  ) d1
  CROSS JOIN (
    SELECT
      0 x
    UNION ALL
    SELECT
      10 x
    UNION ALL
    SELECT
      20 x
    UNION ALL
    SELECT
      30 x
    UNION ALL
    SELECT
      40 x
    UNION ALL
    SELECT
      50 x
    UNION ALL
    SELECT
      60 x
    UNION ALL
    SELECT
      70 x
    UNION ALL
    SELECT
      80 x
    UNION ALL
    SELECT
      90 x
  ) d2
ORDER BY
  d1.x + d2.x
