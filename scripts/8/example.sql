SELECT
  open_emp_id
FROM
  account
GROUP BY
  open_emp_id;
SELECT
  open_emp_id,
  COUNT(*) how_many
FROM
  account
GROUP BY
  open_emp_id
HAVING
  4 < COUNT(*);
