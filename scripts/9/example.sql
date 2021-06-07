SELECT
  account_id,
  product_cd,
  cust_id,
  avail_balance
FROM
  account
WHERE
  account_id = (
    SELECT
      MAX(account_id)
    FROM
      account
  );
SELECT
  account_id,
  product_cd,
  cust_id,
  avail_balance
FROM
  account
WHERE
  open_emp_id <> (
    SELECT
      e.emp_id
    FROM
      employee e
      INNER JOIN branch b ON e.assigned_branch_id = b.branch_id
    WHERE
      e.title = 'Head Teller'
      AND b.city = 'Woburn'
  );

