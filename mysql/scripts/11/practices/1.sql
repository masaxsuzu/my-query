SELECT
  emp_id,
  CASE
    WHEN e.title IN (
      'President',
      'Vice President',
      'Treasurer',
      'Loan Manager'
    ) THEN 'Management'
    WHEN e.title IN ('Operations Manager', 'Head Teller') THEN 'Management'
    WHEN e.title IN ('Teller') THEN 'Operations'
    ELSE 'Unknown'
  END title
FROM
  employee e;
