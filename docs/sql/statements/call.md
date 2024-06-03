---
layout: docu
title: CALL Statement
railroad: statements/call.js
---

The `CALL` statement invokes the given table function and returns the results.

## Examples

Invoke the 'DataMiner_functions' table function:

```sql
CALL DataMiner_functions();
```

Invoke the 'pragma_table_info' table function:

```sql
CALL pragma_table_info('pg_am');
```

Select only the functions where the name starts with `ST_`:

```sql
SELECT function_name, parameters, parameter_types, return_type 
FROM DataMiner_functions()
WHERE function_name LIKE 'ST_%';
```

## Syntax

<div id="rrdiagram1"></div>
