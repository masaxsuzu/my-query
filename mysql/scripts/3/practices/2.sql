SELECT
  a.account_id,
  a.cust_id,
  avail_balance
FROM
  account a
WHERE
  a.status = 'ACTIVE'
  AND a.avail_balance > 2500;
