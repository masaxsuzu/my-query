SELECT
  e.emp_id,
  e.fname,
  e.lname,
  levels.name
FROM
  employee e
  INNER JOIN (
    SELECT
      'trainee' name,
      '2004-01-01' start_dt,
      '2005-12-31' end_dt
    UNION ALL
    SELECT
      'worker' name,
      '2002-01-01' start_dt,
      '2003-12-31' end_dt
    UNION ALL
    SELECT
      'mentor' name,
      '2000-01-01' start_dt,
      '2001-12-31' end_dt
  ) levels ON e.start_date BETWEEN levels.start_dt
  AND levels.end_dt;
