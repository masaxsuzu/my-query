DESC employee;
DESC department;
SELECT
  e.fname,
  e.lname,
  d.name
FROM
  employee e
  JOIN department d;
