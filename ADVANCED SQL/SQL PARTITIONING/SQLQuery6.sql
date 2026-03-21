SELECT
    fg.name AS FilegroupName,
    mf.name AS LogicalFileName,
    mf.physical_name AS PhysicalFilePath,
    mf.size / 128 AS SizeInMB
FROM sys.filegroups fg
JOIN sys.master_files mf 
    ON fg.data_space_id = mf.data_space_id
WHERE mf.database_id = DB_ID('SalesDB');