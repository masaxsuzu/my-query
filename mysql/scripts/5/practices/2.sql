SELECT
  c.cust_id,
  c.fed_id,
  p.name
FROM
  customer c
  INNER JOIN account a ON c.cust_id = a.cust_id
  INNER JOIN product p ON a.product_cd = p.product_cd
WHERE
  cust_type_cd = 'I';
