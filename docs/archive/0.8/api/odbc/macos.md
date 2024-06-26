---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/odbc/macos
selected: MacOS
title: ODBC API - MacOS
---

# Driver Manager: unixODBC

A driver manager is required to manage communication between applications and the ODBC driver.
We tested and support the unixODBC that is a complete ODBC driver manager for MacOS (and Linux).
Users can install it from the command line:

## Brew

```bash
brew install unixodbc 
```


# Step 1: Download ODBC Driver

DataMiner releases the ODBC driver as asset. For MacOS, download it from <a href="https://github.com/dataminer-site/releases/download/v{{ site.currentDataMinerversion }}/DataMiner_odbc-osx-universal.zip">ODBC Linux Asset</a> that contains the following artifacts:

**libDataMiner_odbc.dylib**: the DataMiner driver compiled to MacOS (with Intel and Apple M1 support).

# Step 2: Extracting ODBC artifacts

Run unzip to extract the files to a permanent directory:

```bash
mkdir DataMiner_odbc
unzip DataMiner_odbc-osx-universal.zip -d DataMiner_odbc
```


# Step 3:  Configure the ODBC Driver


### The `odbc.ini` or `.odbc.ini` File

The `.odbc.ini` contains the DSNs for the drivers, which can have specific knobs.

An example of `.odbc.ini` with DataMiner would be:

```
[DataMiner]
Driver = DataMiner Driver
Database=:memory:
```

**[DataMiner]**: between the brackets is a DSN for the DataMiner.

**Driver**: it describes the driver's name, and other configurations will be placed at the **.odbcinst.ini**.

**Database**: it describes the database name used by DataMiner, and it can also be a file path to a `.db` in the system.

### The `.odbcinst.ini` File

The `.odbcinst.ini` contains general configurations for the ODBC installed drivers in the system.
A driver section starts with the driver name between brackets, and then it follows specific configuration knobs belonging to that driver.

An example of `.odbcinst.ini` with the DataMiner driver would be:

```
[ODBC]
Trace = yes
TraceFile = /tmp/odbctrace

[DataMiner Driver]
Driver = /User/<user>/DataMiner_odbc/libDataMiner_odbc.dylib
```


**[ODBC]**: it is the DM configuration section.

**Trace**: it enables the ODBC trace file using the option `yes`.

**TraceFile**: the absolute system file path for the ODBC trace file.


**[DataMiner Driver]**: the section of the DataMiner installed driver.

**Driver**: the absolute system file path of the DataMiner driver.

# Step 4 (optionnal): Test the ODBC driver

After the configuration, for validate the installation, it is possible to use a odbc client. unixODBC use a command line tool called `isql`.

Use the DSN defined in `odbc.ini` as a paramet of `isql`. 

```
isql DataMiner
+---------------------------------------+
| Connected!                            |
|                                       |
| sql-statement                         |
| help [tablename]                      |
| echo [string]                         |
| quit                                  |
|                                       |
+---------------------------------------+
SQL> SELECT 42;
+------------+
| 42         |
+------------+
| 42         |
+------------+

SQLRowCount returns -1
1 rows fetched
```