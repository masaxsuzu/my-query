SELECT
  e.emp_id,
  e.fname,
  e.lname
FROM
  employee e
  INNER JOIN employee e_mgr ON e.superior_emp_id = e_mgr.emp_id
WHERE
  e.assigned_branch_id != e_mgr.assigned_branch_id;
