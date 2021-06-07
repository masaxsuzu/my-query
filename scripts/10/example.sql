SELECT
  a.account_id,
  c.cust_id
FROM
  account a
  INNER JOIN customer c on a.cust_id = c.cust_id;
SELECT
  a.account_id,
  b.cust_id,
  b.name
FROM
  account a
  INNER JOIN business b on a.cust_id = b.cust_id;
SELECT
  a.account_id,
  a.cust_id,
  b.name
FROM
  account a
  LEFT OUTER JOIN business b on a.cust_id = b.cust_id;
SELECT
  a.account_id,
  a.cust_id,
  b.name
FROM
  account a
  RIGHT OUTER JOIN business b on a.cust_id = b.cust_id;
