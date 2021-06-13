SELECT
  cust_id,
  COUNT(*) account_num
FROM
  account
GROUP BY
  cust_id;
