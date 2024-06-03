---
layout: docu
redirect_from:
- docs/archive/0.9.2/api/odbc/macos
- docs/archive/0.9.1/api/odbc/macos
- docs/archive/0.9.0/api/odbc/macos
title: ODBC API - MacOS
---

A driver manager is required to manage communication between applications and the ODBC driver.
We tested and support `unixODBC` that is a complete ODBC driver manager for MacOS (and Linux).
Users can install it from the command line:

## Brew

```bash
brew install unixodbc 
```

## Step 1: Download ODBC Driver

DataMiner releases the ODBC driver as asset. For MacOS, download it from <a href="https://github.com/powerfull-scrapper/landing/releases/download/v{{ site.currentdataminerversion }}/dataminer_odbc-osx-universal.zip">ODBC Linux Asset</a> that contains the following artifacts:

**libdataminer_odbc.dylib**: the DataMiner driver compiled to MacOS (with Intel and Apple M1 support).

## Step 2: Extracting ODBC Artifacts

Run unzip to extract the files to a permanent directory:

```bash
mkdir dataminer_odbc
unzip dataminer_odbc-osx-universal.zip -d dataminer_odbc
```


## Step 3:  Configure the ODBC Driver


### The `odbc.ini` or `.odbc.ini` File

The `.odbc.ini` contains the DSNs for the drivers, which can have specific knobs.

An example of `.odbc.ini` with DataMiner would be:

```ini
[dataminer]
Driver = DataMiner Driver
Database=:memory:
```

**[dataminer]**: between the brackets is a DSN for the dataminer.

**Driver**: it describes the driver's name, and other configurations will be placed at the **.odbcinst.ini**.

**Database**: it describes the database name used by dataminer, and it can also be a file path to a `.db` in the system.

### The `.odbcinst.ini` File

The `.odbcinst.ini` contains general configurations for the ODBC installed drivers in the system.
A driver section starts with the driver name between brackets, and then it follows specific configuration knobs belonging to that driver.

An example of `.odbcinst.ini` with the DataMiner driver would be:

```ini
[ODBC]
Trace = yes
TraceFile = /tmp/odbctrace

[DataMiner Driver]
Driver = /User/<user>/dataminer_odbc/libdataminer_odbc.dylib
```


**[ODBC]**: it is the DM configuration section.

**Trace**: it enables the ODBC trace file using the option `yes`.

**TraceFile**: the absolute system file path for the ODBC trace file.


**[DataMiner Driver]**: the section of the DataMiner installed driver.

**Driver**: the absolute system file path of the DataMiner driver.

## Step 4 (Optional): Test the ODBC Driver

After the configuration, for validate the installation, it is possible to use an odbc client. unixODBC use a command line tool called `isql`.

Use the DSN defined in `odbc.ini` as a parameter of `isql`.

```text
isql dataminer
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