SELECT
  product_cd,
  open_branch_id,
  AVG(avail_balance) average,
  SUM(avail_balance) sum
FROM
  account
GROUP BY
  product_cd,
  open_branch_id
HAVING
  2 <= COUNT(*)
ORDER BY
  SUM(avail_balance) DESC;
