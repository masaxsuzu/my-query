DESC employee;
DESC department;
SELECT
  e.fname,
  e.lname,
  d.name
FROM
  employee e
  JOIN department d;
SELECT
  e.fname,
  e.lname,
  d.name
FROM
  employee e
  INNER JOIN department d on e.dept_id = d.dept_id;
SELECT
  e.fname,
  e.lname,
  d.name
FROM
  employee e
  INNER JOIN department d USING(dept_id);
/* ANSI Style */
SELECT
  a.account_id,
  a.cust_id,
  a.open_date,
  a.product_cd
FROM
  account a,
  branch b,
  employee e
WHERE
  a.open_emp_id = e.emp_id
  AND e.start_date <= '2003-01-01'
  AND e.assigned_branch_id = b.branch_id
  AND (
    e.title = 'Teller'
    OR e.title = 'Head Teller'
  )
  AND b.name = 'Woburn Branch';
/* SQL92 Style */
SELECT
  a.account_id,
  a.cust_id,
  a.open_date,
  a.product_cd
FROM
  account a
  INNER JOIN employee e ON a.open_emp_id = e.emp_id
  INNER JOIN branch b ON e.assigned_branch_id = b.branch_id
WHERE
  e.start_date <= '2003-01-01'
  AND (
    e.title = 'Teller'
    OR e.title = 'Head Teller'
  )
  AND b.name = 'Woburn Branch';
SELECT
  a.account_id,
  c.fed_id
FROM
  account a
  INNER JOIN customer c ON a.cust_id = c.cust_id
WHERE
  c.cust_type_cd = 'B';
SELECT
  a.account_id,
  c.fed_id,
  e.fname,
  e.lname
FROM
  account a
  INNER JOIN customer c ON a.cust_id = c.cust_id
  INNER JOIN employee e ON a.open_emp_id = e.emp_id
WHERE
  c.cust_type_cd = 'B';
