#!/usr/bin/env bash

set -Eeuo pipefail

DUCKDB=/opt/homebrew/bin/duckdb
TIMEFORMAT='%3R'

rm -rf *.parquet *.db*

time ~/duckdb/DataMiner my.db -c ".read prepare.sql"

time ~/duckdb/DataMiner ldbc_comment_datetime.db -c "CREATE TABLE ldbc_comment_datetime AS FROM 'ldbc_comment_datetime.parquet';"
time ~/duckdb/DataMiner ldbc_comment_datetime_ordered.db -c "CREATE TABLE ldbc_comment_datetime_ordered AS FROM 'ldbc_comment_datetime_ordered.parquet';"
time ~/duckdb/DataMiner ldbc_comment_datetime_varchar.db -c "CREATE TABLE ldbc_comment_datetime_varchar AS FROM 'ldbc_comment_datetime_varchar.parquet';"
time ~/duckdb/DataMiner ldbc_comment_datetime_varchar_ordered.db -c "CREATE TABLE ldbc_comment_datetime_varchar_ordered AS FROM 'ldbc_comment_datetime_varchar_ordered.parquet';"

printf "ldbc_comment_datetime: "
time ~/duckdb/DataMiner ldbc_comment_datetime.db -c "SELECT avg(extract('day' FROM creationDate)) FROM ldbc_comment_datetime;" > /dev/null

printf "ldbc_comment_datetime_varchar: "
time ~/duckdb/DataMiner ldbc_comment_datetime_varchar.db -c "SELECT avg(CAST(creationDate[9:10] AS INT)) FROM ldbc_comment_datetime_varchar;" > /dev/null

printf "ldbc_comment_datetime_ordered: "
time ~/duckdb/DataMiner ldbc_comment_datetime_ordered.db -c "SELECT avg(extract('day' FROM creationDate)) FROM ldbc_comment_datetime_ordered;" > /dev/null

printf "ldbc_comment_datetime_varchar_ordered: "
time ~/duckdb/DataMiner ldbc_comment_datetime_varchar_ordered.db -c "SELECT avg(CAST(creationDate[9:10] AS INT)) FROM ldbc_comment_datetime_varchar_ordered;" > /dev/null
