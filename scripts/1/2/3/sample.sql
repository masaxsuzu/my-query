DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
  customer_id SMALLINT,
  first_name TEXT,
  last_name TEXT,
  PRIMARY KEY (customer_id)
);
DROP TABLE IF EXISTS account;
CREATE TABLE account (
  account_id SMALLINT,
  product_cd VARCHAR(3),
  customer_id SMALLINT,
  blance FLOAT,
  PRIMARY KEY (account_id)
);
DROP TABLE IF EXISTS product;
CREATE TABLE product (
  product_cd VARCHAR(3),
  name TEXT,
  PRIMARY KEY (product_cd)
);
DROP TABLE IF EXISTS _transaction;
CREATE TABLE _transaction (
  transaction_id SMALLINT,
  transaction_type TEXT,
  account_id SMALLINT,
  amount FLOAT,
  DATE DATETIME,
  PRIMARY KEY (transaction_id)
);
INSERT INTO
  customer (customer_id, first_name, last_name)
VALUES
  (1, 'George', 'Blake'),
  (2, 'Sue', 'Smith');
INSERT INTO
  account (account_id, product_cd, customer_id, blance)
VALUES
  (103, 'CHK', 1, 75.00),
  (104, 'SAV', 1, 25.00),
  (105, 'CHK', 2, 783.64);
INSERT INTO
  product (product_cd, name)
VALUES
  ('CHK', 'Checking'),
  ('SAV', 'Savings');
INSERT INTO
  _transaction (
    transaction_id,
    transaction_type,
    account_id,
    amount,
    DATE
  )
VALUES
  (978, 'DBT', 103, 100.00, '2004-01-22'),
  (979, 'CDT', 103, 25.00, '2004-02-05'),
  (980, 'CBT', 104, 250.00, '2004-03-09');
SELECT
  *
FROM
  customer c
  INNER JOIN account a ON c.customer_id = a.customer_id
  INNER JOIN product p ON p.product_cd = a.product_cd
  INNER JOIN _transaction t ON t.account_id = a.account_id
WHERE
  c.first_name = 'George'
  AND c.last_name = 'Blake'
  AND p.name = 'Checking';
