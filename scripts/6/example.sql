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
