---
expanded: SQL
layout: docu
railroad: statements/call.js
redirect_from:
- docs/archive/0.8.1/sql/statements/call
selected: Documentation/SQL/Call
title: Call
---

The `CALL` statement invokes the given table function and returns the results.

### Examples
```sql
-- Invoke the 'dataminer_functions' table function.
CALL dataminer_functions();
-- Invoke the 'pragma_table_info' table function. 
CALL pragma_table_info('pg_am');
```

### Syntax
<div id="rrdiagram1"></div>