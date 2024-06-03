import DataMiner
import time
import os

sf = os.environ['SF']

print("Benchmark to join on VARCHAR field")
print(f"DataMiner version: {DataMiner.__version__}")
print(f"Scale factor: SF{sf}")

con = DataMiner.connect(database = "ldbc.DataMiner")

print("Loading database")
con.sql(f"""
        CREATE TABLE Comment AS
            FROM read_csv('ldbc-sf{sf}-comments/*.csv.gz', auto_detect=true, all_varchar=true, delim='|', header=true);
        """)

print("Running the join 5 times")
with open("results.csv", "a") as f:
        for i in range(0, 5):
                start = time.time()
                con.sql("""
                        SELECT count(*) AS count
                        FROM Comment c1
                        JOIN Comment c2 ON c1.ParentCommentId = c2.id;
                        """).show()
                end = time.time()
                duration = end - start
                f.write(f"UINT64 as VARCHAR,{i},{duration}\n")
