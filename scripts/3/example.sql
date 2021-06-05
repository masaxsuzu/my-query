SELECT
  emp_id,
  fname,
  lname
FROM
  employee;
SELECT
  emp_id,
  'Active',
  emp_id * 3.14159,
  UPPER(lname)
FROM
  employee;
SELECT
  VERSION(),
  USER(),
  DATABASE();
SELECT
  emp_id,
  'Active' status,
  emp_id * 3.14159 emp_id_x_pi,
  UPPER(lname) upper_last_name
FROM
  employee;
SELECT
  /* requires sort*/
  DISTINCT cust_id
FROM
  account;
SELECT
  e.emp_id,
  e.fname,
  e.lname
FROM
  (
    SELECT
      emp_id,
      fname,
      lname,
      start_date,
      title
    FROM
      employee
  ) AS e;
DROP VIEW IF EXISTS employee_vm;
CREATE VIEW employee_vm AS
SELECT
  emp_id,
  fname,
  lname,
  YEAR(start_date) start_year
FROM
  employee;
SELECT
  emp_id,
  start_year
FROM
  employee_vm;
SELECT
  e.emp_id,
  e.fname,
  e.lname,
  d.name dept_name
FROM
  employee e
  INNER JOIN department d on e.dept_id = d.dept_id;
SELECT
  emp_id,
  fname,
  lname,
  start_date,
  title
FROM
  employee
WHERE
  title = 'Head Teller'
  AND start_date > '2002-01-01';
SELECT
  emp_id,
  fname,
  lname,
  start_date,
  title
FROM
  employee
WHERE
  title = 'Head Teller'
  OR start_date > '2002-01-01';
SELECT
  emp_id,
  fname,
  lname,
  start_date,
  title
FROM
  employee
WHERE
  (
    title = 'Head Teller'
    AND start_date > '2002-01-01'
  )
  OR (
    title = 'Teller'
    AND start_date > '2003-01-01'
  );
