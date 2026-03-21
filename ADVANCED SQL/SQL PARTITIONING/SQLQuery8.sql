SELECT
    ps.name AS PartitionScheme,
    pf.name AS PartitionFunction,
    ds.destination_id AS PartitionNumber,
    fg.name AS FilegroupName
FROM sys.partition_schemes ps
JOIN sys.partition_functions pf 
    ON ps.function_id = pf.function_id
JOIN sys.destination_data_spaces ds 
    ON ps.data_space_id = ds.partition_scheme_id
JOIN sys.filegroups fg 
    ON ds.data_space_id = fg.data_space_id;

--SchemePartitionbyyear	partition_by_year	1	FG_2023
--SchemePartitionbyyear	partition_by_year	2	FG_2024
--SchemePartitionbyyear	partition_by_year	3	FG_2025
--SchemePartitionbyyear	partition_by_year	4	FG_2026