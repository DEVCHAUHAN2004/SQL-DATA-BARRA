--REPLACE

--Remove (-) dashes from phone number

SELECT 
    '123-456-7890' AS Phone,
    REPLACE('123-456-7890', '-', '') AS Clean_Phone;

--123-456-7890  	1234567890


SELECT 
      'report.txt' AS old_filename,
      REPLACE('report.txt','.txt','.csv') AS new_filename

--report.txt	report.csv