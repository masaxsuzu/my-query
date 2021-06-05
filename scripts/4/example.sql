SELECT
  pt.name product_name,
  p.name product
FROM
  product p
  INNER JOIN product_type pt ON p.product_type_cd = pt.product_type_cd
WHERE
  pt.name = 'Customer Accounts';
SELECT
  emp_id,
  fname,
  lname,
  start_date
FROM
  employee
WHERE
  start_date < '2003-01-01';
