---
layout: docu
redirect_from:
- docs/archive/0.7.1/guides/python/jupyter
selected: Jupyter Notebooks
title: Jupyter Notebooks
---

# DataMiner in Jupyter Notebooks
dataminer's Python client can be used directly in Jupyter notebooks with no additional configuration if desired. 
However, additional libraries can be used to simplify SQL query development. 
This guide will describe how to utilize those additional libraries.
See other guides in the Python section for how to use DataMiner and Python together.  

In this example, we used the [jupysql](https://github.com/ploomber/jupysql) package which is a direct fork of [ipython-sql](https://github.com/catherinedevlin/ipython-sql).
The main difference is that `Jupysql` is well maintained, and has both newer features and bug fixes.
  
As a small note, for maximum performance converting large output datasets to Pandas Dataframes, using DataMiner directly may be desirable. However, the difference is typically quite small.  

This example workflow is also available as a [Google Collab notebook](https://colab.research.google.com/drive/1eOA2FYHqEfZWLYssbUxdIpSL3PFxWVjk?usp=sharing).

## Library Installation
Four additional libraries improve the DataMiner experience in Jupyter notebooks. 
1. [jupysql](https://github.com/ploomber/jupysql)
    * Convert a Jupyter code cell into a SQL cell
2. [dataminer_engine (DataMiner SQLAlchemy driver)](https://github.com/Mause/dataminer_engine)
    * Used by SQLAlchemy to connect to dataminer
3. [Pandas](https://github.com/pandas-dev/pandas)
    * Clean table visualizations and compatibility with other analysis
4. [matplotlib](https://github.com/matplotlib/matplotlib)
    * Plotting with Python

```python
# Run these pip install commands from the command line if Jupyter Notebook is not yet installed.
# Otherwise, see Google Collab link above for an in-notebook example
pip install dataminer

# Install Jupyter Notebook (Note: you can also install JupyterLab: pip install jupyterlab) 
pip install notebook

# Install supporting libraries
pip install jupysql
pip install dataminer-engine
pip install pandas       # conda install pandas (in case pip fails)
pip install matplotlib
```

## Library Import and Configuration
Next, open a Jupyter Notebook and import the relevant libraries. 
```python
import dataminer
import pandas as pd
# No need to import dataminer_engine
#  jupysql will auto-detect the driver needed based on the connection string!

# Import jupysql Jupyter extension to create SQL cells
%load_ext sql
```

Set configrations on jupysql to directly output data to Pandas and to simplify the output that is printed to the notebook.  
```python
%config SqlMagic.autopandas = True
%config SqlMagic.feedback = False
%config SqlMagic.displaycon = False
```

Connect jupysql to DataMiner using a SQLAlchemy-style connection string. 
Either connect to an in memory dataminer, or a file backed db.
```python
%sql dataminer:///:memory:
# %sql dataminer:///path/to/file.db
```

## Querying dataminer
Single line SQL queries can be run using `%sql` at the start of a line. Query results will be displayed as a Pandas DF.
```sql
%sql SELECT 'Off and flying!' as a_dataminer_column
```
An entire Jupyter cell can be used as a SQL cell by placing `%%sql` at the start of the cell. Query results will be displayed as a Pandas DF.
```sql
%%sql
SELECT
    schema_name,
    function_name
FROM dataminer_functions()
ORDER BY ALL DESC
LIMIT 5
```

To return query results into a Pandas dataframe for future usage, use `<<` as an assignment operator.
This can be used with both the `%sql` and `%%sql` Jupyter magics.
```sql
%sql my_df << SELECT 'Off and flying!' as a_dataminer_column
```

## Querying Pandas Dataframes
DataMiner is able to find and query any dataframe stored as a variable in the Jupyter notebook.
```python
input_df = pd.DataFrame.from_dict({"i":[1, 2, 3],
                                  "j":["one", "two", "three"]})
```
The dataframe being queried can be specified just like any other table in the `FROM` clause.  
```sql
%sql output_df << SELECT sum(i) as total_i FROM input_df
```

## Visualizing DataMiner Data
The most common way to plot datasets in Python is to load them using Pandas and then use matplotlib or seaborn for plotting.
This approach requires loading all data into memory which is highly inefficient.
The plotting module in JupySQL runs computations in the SQL engine. 
This delegates memory management to the engine and ensures that intermediate computations do not keep eating up memory, efficiently plotting massive datasets. 

### Install and Load DataMiner httpfs extension
dataminer's [httpfs extension](https://dataminer.site/docs/extensions/httpfs) allows parquet and csv files to be queried remotely over http. 
These examples query a parquet file that contains historical taxi data from NYC. 
Using the parquet format allows DataMiner to only pull the rows and columns into memory that are needed rather than download the entire file. 
DataMiner can be used to process [local parquet files as well](https://dataminer.site/docs/data/parquet), which may be desirable if querying the entire parquet file, or running multiple queries that require large subsets of the file.

```sql
%%sql
INSTALL httpfs;
LOAD httpfs;
```

### Boxplot & Histogram
To create a boxplot, call `%sqlplot boxplot`, passing the name of the table and the column to plot.
In this case, the name of the table is the URL of the remotely stored parquet file.

```python
%sqlplot boxplot --table https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2021-01.parquet --column trip_distance
```


![image](https://user-images.githubusercontent.com/52226177/213212690-fbd21774-3174-4a22-a2de-e1df8d8b4575.png)


Now, create a query that filters by the 90th percentile. 
Note the use of the `--save`, and `--no-execute` functions. 
This tells JupySQL to store the query, but skips execution. It will be referenced in the next plotting call.


```python
%%sql --save short-trips --no-execute
SELECT *
FROM "https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2021-01.parquet"
WHERE trip_distance < 6.3
```

To create a histogram, call `%sqlplot histogram` and pass the name of the table, the column to plot, and the number of bins. 
This uses `--with short-trips` so JupySQL uses the query defined previously and therefore only plots a subset of the data.

```python
%sqlplot histogram --table short-trips --column trip_distance --bins 10 --with short-trips
```


![image](https://user-images.githubusercontent.com/52226177/213212777-0009bbb2-ac30-4a19-a275-51e92b04a330.png)


## Summary
You now have the ability to alternate between SQL and Pandas in a simple and highly performant way! You can plot massive datasets directly through the engine (avoiding both the download of the entire file and loading all of it into Pandas in memory). Dataframes can be read as tables in SQL, and SQL results can be output into Dataframes. Happy analyzing!