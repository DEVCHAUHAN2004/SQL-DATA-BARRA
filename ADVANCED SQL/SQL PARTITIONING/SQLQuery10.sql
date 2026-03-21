SELECT
    p.partition_number AS PartitionNumber,
    f.name AS PartitionFilegroup,
    p.rows AS NumberOfRows
FROM sys.partitions p
JOIN sys.indexes i
    ON p.object_id = i.object_id
    AND p.index_id = i.index_id
JOIN sys.data_spaces ds
    ON i.data_space_id = ds.data_space_id
JOIN sys.partition_schemes ps
    ON ds.data_space_id = ps.data_space_id
JOIN sys.destination_data_spaces dds
    ON ps.data_space_id = dds.partition_scheme_id
    AND p.partition_number = dds.destination_id
JOIN sys.filegroups f
    ON dds.data_space_id = f.data_space_id
WHERE p.object_id = OBJECT_ID('Sales.Orders_Partitioned')
AND i.index_id IN (0, 1);