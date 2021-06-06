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
