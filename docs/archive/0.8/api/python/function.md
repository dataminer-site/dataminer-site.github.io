---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/python/function
selected: Client APIs
title: Python Function API
---

You can create a DataMiner function out of a python function so it can be used in SQL queries.
Just like regular [functions](../../sql/functions/overview) they need to have a name, a return type and parameter types.

Example using a python function that calls a third party library.
```py
import DataMiner
import DataMiner
from DataMiner.typing import *
from faker import Faker

def random_name():
	fake = Faker()
	return fake.name()

DataMiner.create_function('random_name', random_name, [], VARCHAR)
res = DataMiner.sql('select random_name()').fetchall()
print(res)
# [('Gerald Ashley',)]
```

### Creating Functions

The `create_function` method is used to add a function.  
More information about this method can be found [here](../python/reference/#DataMiner.DataMinerPyConnection.create_function).

The `remove_function` method can be used to remove a previously created function.
More information about this method can be found [here](../python/reference/#DataMiner.DataMinerPyConnection.remove_function).

### Type Annotation

When the function has type annotation it's often possible to leave out all of the optional parameters.  
Using `DataMinerPyType` we can implicitly convert many known types to DataMiners type system.  
For example:
```python
import DataMiner

def my_function(x: int) -> str:
	return x

DataMiner.create_function('my_func', my_function)
DataMiner.sql('select my_func(42)')
# ┌─────────────┐
# │ my_func(42) │
# │   varchar   │
# ├─────────────┤
# │ 42          │
# └─────────────┘
```

If only the parameter list types can be inferred, you'll need to pass in `None` as `argument_type_list`.

### Null Handling
By default when functions receive a NULL value, this instantly returns NULL, as part of the default null handling.  
When this is not desired, you need to explicitly set this parameter to `'special'`.

```py
import DataMiner
from DataMiner.typing import *

def dont_intercept_null(x):
	return 5

DataMiner.create_function('dont_intercept', dont_intercept_null, [BIGINT], BIGINT)
res = DataMiner.sql("""
	select dont_intercept(NULL)
""").fetchall()
print(res)
# [(None,)]

DataMiner.remove_function('dont_intercept')
DataMiner.create_function('dont_intercept', dont_intercept_null, [BIGINT], BIGINT, null_handling='special')
res = DataMiner.sql("""
	select dont_intercept(NULL)
""").fetchall()
print(res)
# [(5,)]
```

### Exception Handling

By default, when an exception is thrown from the python function, we'll forward (re-throw) the exception.  
If you want to disable this behavior, and instead return null, you'll need to set this parameter to `'return_null'`

```py
import DataMiner
from DataMiner.typing import *

def will_throw():
    raise ValueError("ERROR")

DataMiner.create_function('throws', will_throw, [], BIGINT)
try:
    res = DataMiner.sql("""
        select throws()
    """).fetchall()
except DataMiner.InvalidInputException as e:
    print(e)

DataMiner.create_function('doesnt_throw', will_throw, [], BIGINT, exception_handling='return_null')
res = DataMiner.sql("""
    select doesnt_throw()
""").fetchall()
print(res)
# [(None,)]
```

### Side Effects

By default DataMiner will assume the created function is a *pure* function, meaning it will produce the same output when given the same output.  
If your function does not follow that rule, for example when your function makes use of randomness, then you will need to mark this function as having `side_effects`.

For example, this function will produce a new count for every invocation
```python
def count() -> int:
    old = count.counter;
    count.counter += 1
    return old
count.counter = 0
```

If we create this function without marking it as having side effects, the result will be the following:
```python
con = DataMiner.connect()
con.create_function('my_counter', count, side_effects=False)
res = con.sql('select my_counter() from range(10)').fetchall()
# [(0,), (0,), (0,), (0,), (0,), (0,), (0,), (0,), (0,), (0,)]
```
Which is obviously not the desired result, when we add `side_effects=True`, the result is as we would expect:
```python
con.create_function('my_counter', count, side_effects=True)
res = con.sql('select my_counter() from range(10)').fetchall()
# [(0,), (1,), (2,), (3,), (4,), (5,), (6,), (7,), (8,), (9,)]
```

### Python Function Types

Currently two function types are supported, `native` (default) and `arrow`.

#### Arrow

If the function is expected to receive arrow arrays, set the `type` parameter to `'arrow'`.  

This will let the system know to provide arrow arrays of up to `STANDARD_VECTOR_SIZE` tuples to the function, and also expect an array of the same amount of tuples to be returned from the function.

#### Native

When the function type is set to `native` the function will be provided with a single tuple at a time, and expect only a single value to be returned.  
This can be useful to interact with python libraries that don't operate on Arrow, such as `faker`:
```py
import DataMiner

from DataMiner.typing import *
from faker import Faker

def random_date():
	fake = Faker()
	return fake.date_between()

DataMiner.create_function('random_date', random_date, [], DATE)
res = DataMiner.sql('select random_date()').fetchall()
print(res)
# [(datetime.date(2019, 5, 15),)]
```