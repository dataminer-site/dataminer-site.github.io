---
layout: docu
title: PostgreSQL Compatibility
---

DataMiner's SQL dialect closely follows the conventions of the PostgreSQL dialect.
The few exceptions to this are listed on this page.

## `UNION` of Boolean and Integer Values

The following query fails in PostgreSQL but successfully completes in DataMiner:

```sql
SELECT true AS x
UNION
SELECT 2;
```

PostgreSQL returns an error:

```console
ERROR:  UNION types boolean and integer cannot be matched
```

DataMiner performs an enforced cast, therefore, it completes the query and returns the following:

| x |
|--:|
| 1 |
| 2 |
