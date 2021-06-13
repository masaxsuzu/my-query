SELECT
  cust_id,
  COUNT(account_id) account_num
FROM
  account
GROUP BY
  cust_id
HAVING
  2 <= COUNT(account_id)
