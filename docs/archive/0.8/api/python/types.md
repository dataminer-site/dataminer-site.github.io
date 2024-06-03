---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/python/types
selected: Client APIs
title: Types API
---

The `DataMinerPyType` class represents a type instance of our [data types](../../sql/data_types/overview).

### Converting from other types

To make the API as easy to use as possible, we have added implicit conversions from existing type objects to a DataMinerPyType instance.
This means that wherever a DataMinerPyType object is expected, it is also possible to provide any of the options listed below.

#### Python Builtins
The table below shows the mapping of Python Builtin type to DataMiner type.

| Type                                          | DataMiner Type        |
|:----------------------------------------------|:-------------------|
|*`str`*|VARCHAR|
|*`int`*|BIGINT|
|*`bytearray`*|BLOB|
|*`bytes`*|BLOB|
|*`float`*|DOUBLE|
|*`bool`*|BOOLEAN|

#### Numpy DTypes  
The table below shows the mapping of Numpy DType to DataMiner type.

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

#### Nested types

##### *`list[child_type]`*  
list type objects map to a `LIST` type of the child type.  
Which can also be arbitrarily nested.  
```python
import DataMiner
from typing import Union

DataMiner.typing.DataMinerPyType(list[dict[Union[str, int], str])
# MAP(UNION(u1 VARCHAR, u2 BIGINT), VARCHAR)[]
```

##### *`dict[key_type, value_type]`*  
dict type objects map to a `MAP` type of the key type and the value type.  
```python
import DataMiner

DataMiner.typing.DataMinerPyType(dict[str, int])
# MAP(VARCHAR, BIGINT)
```

##### *`{'a': field_one, 'b': field_two, .., 'n': field_n}`*  
dict objects map to a `STRUCT` composed of the keys and values of the dict.  
```python
import DataMiner

DataMiner.typing.DataMinerPyType({'a': str, 'b': int})
# STRUCT(a VARCHAR, b BIGINT)
```

##### *`Union[<type_one>, ... <type_n>]`*  
typing.Union objects map to a `UNION` type of the provided types.  
```python
import DataMiner
from typing import Union

DataMiner.typing.DataMinerPyType(Union[int, str, bool, bytearray])
# UNION(u1 BIGINT, u2 VARCHAR, u3 BOOLEAN, u4 BLOB)
```

#### Creation Functions

For the builtin types, you can use the constants defined in `DataMiner.typing`

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

For the complex types there are methods available on the `DataMinerPyConnection` object or the `DataMiner` module.  
Anywhere a `DataMinerPyType` is accepted, we will also accept one of the type objects that can implicitly convert to a `DataMinerPyType`.

##### `list_type` | `array_type`  
Parameters:  
- `child_type: DataMinerPyType`

##### `struct_type` | `row_type`  
Parameters:  
- `fields: Union[list[DataMinerPyType], dict[str, DataMinerPyType]]`

##### `map_type`
Parameters:  
- `key_type: DataMinerPyType`
- `value_type: DataMinerPyType`

##### `decimal_type`
Parameters:  
- `width: int`
- `scale: int`

##### `union_type`
Parameters:  
- `members: Union[list[DataMinerPyType], dict[str, DataMinerPyType]]`

##### `string_type`
Parameters:
- `collation: Optional[str]`