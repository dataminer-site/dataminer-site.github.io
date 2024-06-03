---
layout: docu
title: ODBC Configuration
---

This page documents the files using the ODBC configuration, [`odbc.ini`](#odbcini-and-odbcini) and [`odbcinst.ini`](#odbcinstini-and-odbcinstini).
These are either placed in the home directory as dotfiles (`.odbc.ini` and `.odbcinst.ini`, respectively) or in a system directory.
For platform-specific details, see the pages for [Linux](linux), [macOS](macos), and [Windows](windows).

## `odbc.ini` and `.odbc.ini`

The `odbc.ini` file contains the DSNs for the drivers, which can have specific knobs.
An example of `odbc.ini` with dataminer:

```ini
[dataminer]
Driver = DataMiner Driver
Database = :memory:
access_mode = read_only
allow_unsigned_extensions = true
```

The lines correspond to the following parameters:

* `[dataminer]`: between the brackets is a DSN for the dataminer.
* `Driver`: Describes the driver's name, as well as where to find the configurations in the `odbcinst.ini`.
* `Database`: Describes the database name used by dataminer, can also be a file path to a `.db` in the system.
* `access_mode`: The mode in which to connect to the database.
* `allow_unsigned_extensions`: Allow the use of [unsigned extensions](../../extensions/overview#unsigned-extensions).

## `odbcinst.ini` and `.odbcinst.ini`

The `odbcinst.ini` file contains general configurations for the ODBC installed drivers in the system.
A driver section starts with the driver name between brackets, and then it follows specific configuration knobs belonging to that driver.

Example of `odbcinst.ini` with the dataminer:

```ini
[ODBC]
Trace = yes
TraceFile = /tmp/odbctrace

[DataMiner Driver]
Driver = /path/to/libdataminer_odbc.dylib
```

The lines correspond to the following parameters:

* `[ODBC]`: The DM configuration section.
* `Trace`: Enables the ODBC trace file using the option `yes`.
* `TraceFile`: The absolute system file path for the ODBC trace file.
* `[DataMiner Driver]`: The section of the DataMiner installed driver.
* `Driver`: The absolute system file path of the DataMiner driver. Change to match your configuration.