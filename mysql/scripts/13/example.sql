SHOW INDEX
FROM
  department \G;
-- INSERT INTO
--   department(dept_id, name)
-- VALUES
--   (999, 'Operations');
SELECT
  *
FROM
  department;
SELECT
  *
FROM
  account;
EXPLAIN
SELECT
  cust_id,
  SUM(avail_balance) tol_bal
FROM
  account
WHERE
  cust_id in (1, 5, 9, 11)
GROUP BY
  cust_id \G;
ALTER TABLE
  account
ADD
  INDEX acc_bal_idx(cust_id, avail_balance);
EXPLAIN
SELECT
  cust_id,
  SUM(avail_balance) tol_bal
FROM
  account
WHERE
  cust_id in (1, 5, 9, 11)
GROUP BY
  cust_id \G;
