SELECT
  p.name,
  a.account_id
FROM
  account a
  RIGHT OUTER JOIN product p ON p.product_cd = a.product_cd;
