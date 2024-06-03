-- Load CSV file, auto-detecting column name and types
CREATE TABLE stations AS
FROM 'https://blobs.DataMiner.org/stations.csv.zst';
