SELECT
  c.cust_id,
  c.fed_id,
  CASE
    WHEN c.cust_type_cd = 'I' THEN (
      SELECT
        CONCAT(i.fname, ' ', i.lname)
      FROM
        individual i
      WHERE
        c.cust_id = i.cust_id
    )
    WHEN c.cust_type_cd = 'B' THEN (
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
