# Get the top-3 busiest train stations
import DataMiner
DataMiner.sql("""
    SELECT station, count(*) AS num_services
    FROM train_services
    GROUP BY ALL
    ORDER BY num_services DESC
    LIMIT 3;
    """)
