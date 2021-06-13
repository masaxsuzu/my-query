SELECT
  emp_id
FROM
  employee
WHERE
  assigned_branch_id = 2
  AND (
    title = 'Teller'
    OR title = 'Head Teller'
  ) -- UNION ALL
UNION
SELECT
  DISTINCT open_emp_id
FROM
  account
WHERE
  open_branch_id = 2;
/* MYSQL doesn't support INTERSECT operator
 SELECT
 emp_id
 FROM
 employee
 WHERE
 assigned_branch_id = 2
 AND (
 title = 'Teller'
 OR title = 'Head Teller'
 )
 INTERSECT
 SELECT
 DISTINCT open_emp_id
 FROM
 account
 WHERE
 open_branch_id = 2;
 */
SELECT
  x.emp_id
FROM
  (
    SELECT
      emp_id
    FROM
      employee
    WHERE
      assigned_branch_id = 2
      AND (
        title = 'Teller'
        OR title = 'Head Teller'
      )
  ) x
  INNER JOIN (
    SELECT
      DISTINCT open_emp_id
    FROM
      account
    WHERE
      open_branch_id = 2
  ) y on x.emp_id = y.open_emp_id;
/* MYSQL doesn't support EXCEPT operator
 SELECT
 emp_id
 FROM
 employee
 WHERE
 assigned_branch_id = 2
 AND (
 title = 'Teller'
 OR title = 'Head Teller'
 )
 INTERSECT
 SELECT
 DISTINCT open_emp_id
 FROM
 account
 WHERE
 open_branch_id = 2;
 */
SELECT
  x.emp_id
FROM
  (
    SELECT
      emp_id
    FROM
      employee
    WHERE
      assigned_branch_id = 2
      AND (
        title = 'Teller'
        OR title = 'Head Teller'
      )
  ) x
  INNER JOIN (
    SELECT
      DISTINCT open_emp_id
    FROM
      account
    WHERE
      open_branch_id = 2
  ) y on x.emp_id != y.open_emp_id
ORDER BY
  x.emp_id
