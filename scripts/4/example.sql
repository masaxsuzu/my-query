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
SELECT
  emp_id,
  fname,
  lname,
  start_date
FROM
  employee
WHERE
  start_date BETWEEN '2001-01-01' AND '2003-01-01';
SELECT
  account_id,
  product_cd,
  cust_id,
  avail_balance
FROM
  account
WHERE
  avail_balance BETWEEN 3000 AND 5000;
SELECT
  cust_id,
  fed_id
FROM
  customer
WHERE
  cust_type_cd = 'I'
  AND fed_id BETWEEN '500-00-0000' AND '999-99-9999';
SELECT
  account_id,
  product_cd,
  cust_id,
  avail_balance
FROM
  account
WHERE
  product_cd IN ('CHK', 'SAV', 'CD', 'MM');
SELECT
  account_id,
  product_cd,
  cust_id,
  avail_balance
FROM
  account
WHERE
  product_cd NOT IN ('CHK', 'SAV', 'CD', 'MM');
