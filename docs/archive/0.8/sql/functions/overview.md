---
expanded: Functions
layout: docu
railroad: expressions/function.js
redirect_from:
- docs/archive/0.8.1/sql/functions/overview
- docs/archive/0.8.1/sql/functions
selected: Documentation/Functions
title: Functions
---

Functions are ...
<div id="rrdiagram"></div>

### Query functions

`dataminer_functions` table function shows the list of functions currently built into the system.

```
D select distinct on(function_name) function_name, function_type, return_type, parameters, parameter_types from dataminer_functions() where function_type='scalar' limit 10;
┌────────────────┬───────────────┬─────────────┬──────────────────────────┬──────────────────────────────────────┐
│ function_name  │ function_type │ return_type │        parameters        │           parameter_types            │
├────────────────┼───────────────┼─────────────┼──────────────────────────┼──────────────────────────────────────┤
│ log10          │ scalar        │ DOUBLE      │ [col0]                   │ [DOUBLE]                             │
│ mod            │ scalar        │ TINYINT     │ [col0, col1]             │ [TINYINT, TINYINT]                   │
│ date_diff      │ scalar        │ BIGINT      │ [col0, col1, col2]       │ [VARCHAR, DATE, DATE]                │
│ writefile      │ scalar        │ VARCHAR     │ []                       │ []                                   │
│ regexp_replace │ scalar        │ VARCHAR     │ [col0, col1, col2, col3] │ [VARCHAR, VARCHAR, VARCHAR, VARCHAR] │
│ age            │ scalar        │ INTERVAL    │ [col0]                   │ [TIMESTAMP]                          │
│ age            │ scalar        │ INTERVAL    │ [col0, col1]             │ [TIMESTAMP, TIMESTAMP]               │
│ datediff       │ scalar        │ BIGINT      │ [col0, col1, col2]       │ [VARCHAR, DATE, DATE]                │
│ map            │ scalar        │ MAP         │ []                       │ []                                   │
│ year           │ scalar        │ BIGINT      │ [col0]                   │ [TIMESTAMP WITH TIME ZONE]           │
└────────────────┴───────────────┴─────────────┴──────────────────────────┴──────────────────────────────────────┘
```

Currently the description and parameter names of functions are still missing.