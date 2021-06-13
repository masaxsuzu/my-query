SELECT
  a.account_id,
  a.product_cd,
  i.fname,
  i.lname,
  b.name
FROM
  account a
  LEFT OUTER JOIN individual i on a.cust_id = i.cust_id
  LEFT OUTER JOIN business b on a.cust_id = b.cust_id
