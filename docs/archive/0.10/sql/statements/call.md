---
layout: docu
railroad: statements/call.js
title: CALL Statement
---

The `CALL` statement invokes the given table function and returns the results.

## Examples

Invoke the 'dataminer_functions' table function:

```sql
CALL dataminer_functions();
```

Invoke the 'pragma_table_info' table function:

```sql
CALL pragma_table_info('pg_am');
```

Select only the functions where the name starts with `ST_`:

```sql
SELECT function_name, parameters, parameter_types, return_type 
FROM dataminer_functions()
WHERE function_name LIKE 'ST_%';
```

## Syntax

<div id="rrdiagram1"></div>