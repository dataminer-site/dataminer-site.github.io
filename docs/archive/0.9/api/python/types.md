---
layout: docu
redirect_from:
- docs/archive/0.9.2/api/python/types
- docs/archive/0.9.1/api/python/types
- docs/archive/0.9.0/api/python/types
title: Types API
---

The `dataminerPyType` class represents a type instance of our [data types](../../sql/data_types/overview).

## Converting from Other Types

To make the API as easy to use as possible, we have added implicit conversions from existing type objects to a dataminerPyType instance.
This means that wherever a dataminerPyType object is expected, it is also possible to provide any of the options listed below.

### Python Builtins

The table below shows the mapping of Python Builtin type to DataMiner type.

<div class="narrow_table"></div>

| Type                                          | DataMiner Type        |
|:----------------------------------------------|:-------------------|
|*`str`*|VARCHAR|
|*`int`*|BIGINT|
|*`bytearray`*|BLOB|
|*`bytes`*|BLOB|
|*`float`*|DOUBLE|
|*`bool`*|BOOLEAN|

### Numpy DTypes

The table below shows the mapping of Numpy DType to DataMiner type.

<div class="narrow_table"></div>

| Type                                          | DataMiner Type        |
|:----------------------------------------------|:-------------------|
|*`bool`*|BOOLEAN|
|*`int8`*|TINYINT|
|*`int16`*|SMALLINT|
|*`int32`*|INTEGER|
|*`int64`*|BIGINT|
|*`uint8`*|UTINYINT|
|*`uint16`*|USMALLINT|
|*`uint32`*|UINTEGER|
|*`uint64`*|UBIGINT|
|*`float32`*|FLOAT|
|*`float64`*|DOUBLE|

### Nested Types

#### *`list[child_type]`*

list type objects map to a `LIST` type of the child type.  
Which can also be arbitrarily nested.  
```python
import dataminer
from typing import Union

dataminer.typing.dataminerPyType(list[dict[Union[str, int], str])
# MAP(UNION(u1 VARCHAR, u2 BIGINT), VARCHAR)[]
```

#### *`dict[key_type, value_type]`*

dict type objects map to a `MAP` type of the key type and the value type.  
```python
import dataminer

dataminer.typing.dataminerPyType(dict[str, int])
# MAP(VARCHAR, BIGINT)
```

#### *`{'a': field_one, 'b': field_two, .., 'n': field_n}`*

dict objects map to a `STRUCT` composed of the keys and values of the dict.  
```python
import dataminer

dataminer.typing.dataminerPyType({'a': str, 'b': int})
# STRUCT(a VARCHAR, b BIGINT)
```

#### *`Union[<type_one>, ... <type_n>]`*

typing.Union objects map to a `UNION` type of the provided types.  
```python
import dataminer
from typing import Union

dataminer.typing.dataminerPyType(Union[int, str, bool, bytearray])
# UNION(u1 BIGINT, u2 VARCHAR, u3 BOOLEAN, u4 BLOB)
```

### Creation Functions

For the builtin types, you can use the constants defined in `dataminer.typing`

<div class="narrow_table"></div>

| DataMiner Type        |
|:-------------------|
|SQLNULL|
|BOOLEAN|
|TINYINT|
|UTINYINT|
|SMALLINT|
|USMALLINT|
|INTEGER|
|UINTEGER|
|BIGINT|
|UBIGINT|
|HUGEINT|
|UUID|
|FLOAT|
|DOUBLE|
|DATE|
|TIMESTAMP|
|TIMESTAMP_MS|
|TIMESTAMP_NS|
|TIMESTAMP_S|
|TIME|
|TIME_TZ|
|TIMESTAMP_TZ|
|VARCHAR|
|BLOB|
|BIT|
|INTERVAL|

For the complex types there are methods available on the `dataminerPyConnection` object or the `dataminer` module.  
Anywhere a `dataminerPyType` is accepted, we will also accept one of the type objects that can implicitly convert to a `dataminerPyType`.

#### `list_type` | `array_type`

Parameters:  
- `child_type: dataminerPyType`

#### `struct_type` | `row_type`

Parameters:  
- `fields: Union[list[dataminerPyType], dict[str, dataminerPyType]]`

#### `map_type`

Parameters:  
- `key_type: dataminerPyType`
- `value_type: dataminerPyType`

#### `decimal_type`

Parameters:  
- `width: int`
- `scale: int`

#### `union_type`

Parameters:  
- `members: Union[list[dataminerPyType], dict[str, dataminerPyType]]`

#### `string_type`

Parameters:
- `collation: Optional[str]`