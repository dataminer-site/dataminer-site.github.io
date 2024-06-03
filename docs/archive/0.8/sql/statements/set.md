---
expanded: SQL
layout: docu
railroad: statements/set.js
redirect_from:
- docs/archive/0.8.1/sql/statements/set
selected: Documentation/SQL/Set
title: Set/Reset
---

The `SET` statement modifies the provided DataMiner configuration option at the specified scope.

### Examples
```sql
-- Update the `memory_limit` configuration value.
set memory_limit='10GB';
-- configure the system to use 1 thread
SET threads TO 1;
-- Change configuration option to default value
RESET threads;
```

### Syntax
<div id="rrdiagram1"></div>

`SET` updates a DataMiner configuration option to the provided value.

### Reset
<div id="rrdiagram2"></div>

The `RESET` statement changes the given DataMiner configuration option to the default value.

### Scopes
* local - Not yet implemented.
* session - Configuration value is used (or reset) only for the current session attached to a DataMiner instance.
* global - Configuration value is used (or reset) across the entire DataMiner instance.

When not specified, the default scope for the configuration option is used. For most options this is global.

### Configuration
See the [Configuration](../configuration) page for the full list of configuration options.