import DataMiner
import time
import os

sf = os.environ['SF']

print("Benchmark to join on UUID field")
print(f"DataMiner version: {DataMiner.__version__}")
print(f"Scale factor: SF{sf}")

con = DataMiner.connect(database = "ldbc.DataMiner")

print("Loading database")
con.sql("""
        CREATE TABLE Comment (
            creationDate TIMESTAMP WITH TIME ZONE NOT NULL,
            id BIGINT NOT NULL,
            locationIP TEXT NOT NULL,
            browserUsed TEXT NOT NULL,
            content TEXT NOT NULL,
            length INT NOT NULL,
            CreatorPersonId BIGINT NOT NULL,
            LocationCountryId BIGINT NOT NULL,
            ParentPostId BIGINT,
            ParentCommentId BIGINT,
        );
        """)
con.sql(f"""
        INSERT INTO Comment
            FROM read_csv('ldbc-sf{sf}-comments/*.csv.gz', auto_detect=true, delim='|', header=true);
        """)

print("Adding UUIDs to the schema")
con.sql("ALTER TABLE Comment ADD COLUMN id_uuid UUID;")
con.sql("ALTER TABLE Comment ADD COLUMN ParentCommentId_uuid UUID;")

print("Assigning UUIDs to id_uuid")
con.sql("""
        UPDATE Comment
        SET id_uuid = uuid();
        """)
print("Assigning UUIDs to ParentCommentId_uuid")
con.sql("""
        UPDATE Comment
        SET ParentCommentId_uuid = ParentComment.id_uuid
        FROM Comment ParentComment
        WHERE ParentComment.id = Comment.ParentCommentId;
        """)

print("Running the join 5 times")
with open("results.csv", "a") as f:
        for i in range(0, 5):
                start = time.time()
                con.sql("""
                        SELECT count(*) AS count
                        FROM Comment c1
                        JOIN Comment c2 ON c1.ParentCommentId_uuid = c2.id_uuid;
                        """).show()
                end = time.time()
                duration = end - start
                f.write(f"UUID as UUID,{i},{duration}\n")
