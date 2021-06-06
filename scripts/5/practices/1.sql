SELECT
  e.emp_id,
  e.fname,
  b.name
FROM
  employee e
  INNER JOIN branch b ON e.assigned_branch_id = b.branch_id;
