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
SELECT
  emp_id,
  fname,
  lname title
FROM
  employee
WHERE
  emp_id IN (
    SELECT
      superior_emp_id
    FROM
      employee
  );
SELECT
  emp_id,
  fname,
  lname,
  title
FROM
  employee
WHERE
  emp_id <> ALL (
    SELECT
      superior_emp_id
    FROM
      employee
    WHERE
      superior_emp_id IS NOT NULL
  );
SELECT
  account_id,
  cust_id,
  product_cd,
  avail_balance
FROM
  account
WHERE
  avail_balance < ALL (
    SELECT
      a.avail_balance
    FROM
      account a
      INNER JOIN individual i ON a.cust_id = i.cust_id
    WHERE
      i.fname = 'Frank'
      AND i.lname = 'Tucker'
  );
SELECT
  account_id,
  cust_id,
  product_cd,
  avail_balance
FROM
  account
WHERE
  avail_balance > ANY (
    SELECT
      a.avail_balance
    FROM
      account a
      INNER JOIN individual i ON a.cust_id = i.cust_id
    WHERE
      i.fname = 'Frank'
      AND i.lname = 'Tucker'
  );
