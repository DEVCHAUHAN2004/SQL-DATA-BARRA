--remove a column phone from the person

ALTER TABLE persons
DROP COLUMN Phone

SELECT *
FROM persons
