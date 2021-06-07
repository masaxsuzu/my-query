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
SELECT
  a.account_id,
  a.product_cd,
  CONCAT(i.fname, ' ', i.lname) person_name,
  b.name business_name
FROM
  account a
  LEFT OUTER JOIN individual i on a.cust_id = i.cust_id
  LEFT OUTER JOIN business b on a.cust_id = b.cust_id;
SELECT
  a_i.account_id,
  a_i.product_cd,
  a_i.person_name,
  b.name business_name
FROM
  (
    SELECT
      a.account_id,
      a.product_cd,
      a.cust_id,
      CONCAT(i.fname, ' ', i.lname) person_name
    FROM
      account a
      LEFT JOIN individual i on a.cust_id = i.cust_id
  ) a_i
  LEFT OUTER JOIN business b on a_i.cust_id = b.cust_id;
SELECT
  e.fname,
  e.lname,
  e_mgr.fname mgr_fname,
  e_mgr.lname mgr_lname
FROM
  employee e
  LEFT OUTER JOIN employee e_mgr ON e.superior_emp_id = e_mgr.emp_id;
SELECT
  e.fname,
  e.lname,
  e_mgr.fname mgr_fname,
  e_mgr.lname mgr_lname
FROM
  employee e
  RIGHT OUTER JOIN employee e_mgr ON e.superior_emp_id = e_mgr.emp_id;
