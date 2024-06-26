---
layout: docu
title: Expression API
---

The `Expression` class represents an instance of an [expression](../../sql/expressions/overview).

## Why Would I Use the Expression API?

Using this API makes it possible to dynamically build up expressions, which are typically created by the parser from the query string.
This allows you to skip that and have more fine-grained control over the used expressions.

Below is a list of currently supported expressions that can be created through the API.

## Column Expression

This expression references a column by name.

```python
import DataMiner
import pandas as pd

df = pd.DataFrame({
	'a': [1, 2, 3, 4],
	'b': [True, None, False, True],
	'c': [42, 21, 13, 14]
})

# selecting a single column
col = DataMiner.ColumnExpression('a')
res = DataMiner.df(df).select(col).fetchall()
print(res)
# [(1,), (2,), (3,), (4,)]

# selecting multiple columns
col_list = [
        DataMiner.ColumnExpression('a') * 10,
        DataMiner.ColumnExpression('b').isnull(),
        DataMiner.ColumnExpression('c') + 5
    ]
res = DataMiner.df(df).select(*col_list).fetchall()
print(res)
# [(10, False, 47), (20, True, 26), (30, False, 18), (40, False, 19)]
```

## Star Expression

This expression selects all columns of the input source.

Optionally it's possible to provide an `exclude` list to filter out columns of the table.
This `exclude` list can contain either strings or Expressions.

```python
import DataMiner
import pandas as pd

df = pd.DataFrame({
	'a': [1, 2, 3, 4],
	'b': [True, None, False, True],
	'c': [42, 21, 13, 14]
})

star = DataMiner.StarExpression(exclude = ['b'])
res = DataMiner.df(df).select(star).fetchall()
print(res)
# [(1, 42), (2, 21), (3, 13), (4, 14)]
```

## Constant Expression

This expression contains a single value.

```python
import DataMiner
import pandas as pd

df = pd.DataFrame({
	'a': [1, 2, 3, 4],
	'b': [True, None, False, True],
	'c': [42, 21, 13, 14]
})

const = DataMiner.ConstantExpression('hello')
res = DataMiner.df(df).select(const).fetchall()
print(res)
# [('hello',), ('hello',), ('hello',), ('hello',)]
```

## Case Expression

This expression contains a `CASE WHEN (...) THEN (...) ELSE (...) END` expression.
By default `ELSE` is `NULL` and it can be set using `.else(value = ...)`.
Additional `WHEN (...) THEN (...)` blocks can be added with `.when(condition = ..., value = ...)`.

```python
import DataMiner
import pandas as pd
from DataMiner import (
    ConstantExpression,
    ColumnExpression,
    CaseExpression
)

df = pd.DataFrame({
    'a': [1, 2, 3, 4],
    'b': [True, None, False, True],
    'c': [42, 21, 13, 14]
})

hello = ConstantExpression('hello')
world = ConstantExpression('world')

case = \
    CaseExpression(condition = ColumnExpression('b') == False, value = world) \
    .otherwise(hello)
res = DataMiner.df(df).select(case).fetchall()
print(res)
# [('hello',), ('hello',), ('world',), ('hello',)]
```

## Function Expression

This expression contains a function call.
It can be constructed by providing the function name and an arbitrary amount of Expressions as arguments.

```python
import DataMiner
import pandas as pd
from DataMiner import (
    ConstantExpression,
    ColumnExpression,
    FunctionExpression
)

df = pd.DataFrame({
    'a': [
        'test',
        'pest',
        'text',
        'rest',
    ]
})

ends_with = FunctionExpression('ends_with', ColumnExpression('a'), ConstantExpression('est'))
res = DataMiner.df(df).select(ends_with).fetchall()
print(res)
# [(True,), (True,), (False,), (True,)]
```

## Common Operations

The Expression class also contains many operations that can be applied to any Expression type.

| Operation                      | Description                                                                                                    |
|--------------------------------|----------------------------------------------------------------------------------------------------------------|
| `.alias(name: str)`            | Applies an alias to the expression.                                                                            |
| `.cast(type: DataMinerPyType)`    | Applies a cast to the provided type on the expression.                                                         |
| `.isin(*exprs: Expression)`    | Creates an [`IN` expression](../../sql/expressions/in#in) against the provided expressions as the list.        |
| `.isnotin(*exprs: Expression)` | Creates a [`NOT IN` expression](../../sql/expressions/in#not-in) against the provided expressions as the list. |
| `.isnotnull()`                 | Checks whether the expression is not `NULL`.                                                                   |
| `.isnull()`                    | Checks whether the expression is `NULL`.                                                                       |

### Order Operations

When expressions are provided to `DataMinerPyRelation.order()`, the following order operations can be applied.

| Operation                      | Description                                                                                                    |
|--------------------------------|----------------------------------------------------------------------------------------------------------------|
| `.asc()`                       | Indicates that this expression should be sorted in ascending order.                                            |
| `.desc()`                      | Indicates that this expression should be sorted in descending order.                                           |
| `.nulls_first()`               | Indicates that the nulls in this expression should preceed the non-null values.                                |
| `.nulls_last()`                | Indicates that the nulls in this expression should come after the non-null values.                             |