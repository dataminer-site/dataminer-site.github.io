---
layout: docu
title: Import from Numpy
---

It is possible to query Numpy arrays from DataMiner.
There is no need to register the arrays manually –
DataMiner can find them in the Python process by name thanks to [replacement scans](/faq#glossary-of-terms).
For example:

```python
import DataMiner
import numpy as np

my_arr = np.array([(1, 9.0), (2, 8.0), (3, 7.0)])

DataMiner.sql("SELECT * FROM my_arr")
```

```text
┌─────────┬─────────┬─────────┐
│ column0 │ column1 │ column2 │
│ double  │ double  │ double  │
├─────────┼─────────┼─────────┤
│     1.0 │     2.0 │     3.0 │
│     9.0 │     8.0 │     7.0 │
└─────────┴─────────┴─────────┘
```

## See Also

DataMiner also supports [exporting to Numpy](export_numpy).
