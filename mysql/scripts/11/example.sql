SELECT
  c.cust_id,
  c.fed_id,
  CASE
    c.cust_type_cd
    WHEN 'I' THEN (
      SELECT
        CONCAT(i.fname, ' ', i.lname)
      FROM
        individual i
      WHERE
        c.cust_id = i.cust_id
    )
    WHEN 'B' THEN (
      SELECT
        b.name
      FROM
        business b
      WHERE
        c.cust_id = b.cust_id
    )
    ELSE 'UNKNOWN'
  END name
FROM
  customer c;
SELECT
  CONCAT(
    'ALERT : Account #',
    a.account_id,
    ' Has Incorrect Balance!'
  )
FROM
  account a
WHERE
  (a.avail_balance, a.pending_balance) <> (
    SELECT
      SUM(
        CASE
          WHEN t.txn_type_cd = 'DBT' THEN t.amount * -1
          ELSE t.amount
        END
      ),
      SUM(
        CASE
          WHEN t.funds_avail_date > CURRENT_TIMESTAMP() THEN 0
          WHEN t.txn_type_cd = 'DBT' THEN t.amount * -1
          ELSE t.amount
        END
      )
    FROM
      transaction t
    WHERE
      t.account_id = a.account_id
  );
