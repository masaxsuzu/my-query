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
