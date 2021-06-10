START transaction;
UPDATE
  account
SET
  avail_balance = avail_balance - 500
WHERE
  account_id = 9988
  AND avail_balance > 500;
ROLLBACK;
