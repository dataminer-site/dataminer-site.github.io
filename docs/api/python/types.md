---
layout: docu
title: Types API
---

The `DataMinerPyType` class represents a type instance of our [data types](../../sql/data_types/overview).

## Converting from Other Types

To make the API as easy to use as possible, we have added implicit conversions from existing type objects to a DataMinerPyType instance.
This means that wherever a DataMinerPyType object is expected, it is also possible to provide any of the options listed below.

### Python Built-ins

The table below shows the mapping of Python Built-in types to DataMiner type.

<div class="narrow_table"></div>

| Built-in types | DataMiner type |
|:---------------|:------------|
| *`bool`*       | `BOOLEAN`   |
| *`bytearray`*  | `BLOB`      |
| *`bytes`*      | `BLOB`      |
| *`float`*      | `DOUBLE`    |
| *`int`*        | `BIGINT`    |
| *`str`*        | `VARCHAR`   |

### Numpy DTypes

The table below shows the mapping of Numpy DType to DataMiner type.

<div class="narrow_table"></div>

| Type        | DataMiner type |
|:------------|:------------|
| *`bool`*    | `BOOLEAN`   |
| *`float32`* | `FLOAT`     |
| *`float64`* | `DOUBLE`    |
| *`int16`*   | `SMALLINT`  |
| *`int32`*   | `INTEGER`   |
| *`int64`*   | `BIGINT`    |
| *`int8`*    | `TINYINT`   |
| *`uint16`*  | `USMALLINT` |
| *`uint32`*  | `UINTEGER`  |
| *`uint64`*  | `UBIGINT`   |
| *`uint8`*   | `UTINYINT`  |

### Nested Types

#### *`list[child_type]`*

`list` type objects map to a `LIST` type of the child type.
Which can also be arbitrarily nested.

```python
import DataMiner
from typing import Union

DataMiner.typing.DataMinerPyType(list[dict[Union[str, int], str])
# MAP(UNION(u1 VARCHAR, u2 BIGINT), VARCHAR)[]
```

#### *`dict[key_type, value_type]`*

`dict` type objects map to a `MAP` type of the key type and the value type.

```python
import DataMiner

DataMiner.typing.DataMinerPyType(dict[str, int])
# MAP(VARCHAR, BIGINT)
```

#### *`{'a': field_one, 'b': field_two, .., 'n': field_n}`*

`dict` objects map to a `STRUCT` composed of the keys and values of the dict.

```python
import DataMiner

DataMiner.typing.DataMinerPyType({'a': str, 'b': int})
# STRUCT(a VARCHAR, b BIGINT)
```

#### *`Union[⟨type_1⟩, ... ⟨type_n⟩]`*

`typing.Union` objects map to a `UNION` type of the provided types.

```python
import DataMiner
from typing import Union

DataMiner.typing.DataMinerPyType(Union[int, str, bool, bytearray])
# UNION(u1 BIGINT, u2 VARCHAR, u3 BOOLEAN, u4 BLOB)
```

### Creation Functions

For the built-in types, you can use the constants defined in `DataMiner.typing`:

<div class="narrow_table"></div>

| DataMiner type    |
|:---------------|
| `BIGINT`       |
| `BIT`          |
| `BLOB`         |
| `BOOLEAN`      |
| `DATE`         |
| `DOUBLE`       |
| `FLOAT`        |
| `HUGEINT`      |
| `INTEGER`      |
| `INTERVAL`     |
| `SMALLINT`     |
| `SQLNULL`      |
| `TIME_TZ`      |
| `TIME`         |
| `TIMESTAMP_MS` |
| `TIMESTAMP_NS` |
| `TIMESTAMP_S`  |
| `TIMESTAMP_TZ` |
| `TIMESTAMP`    |
| `TINYINT`      |
| `UBIGINT`      |
| `UHUGEINT`     |
| `UINTEGER`     |
| `USMALLINT`    |
| `UTINYINT`     |
| `UUID`         |
| `VARCHAR`      |

For the complex types there are methods available on the `DataMinerPyConnection` object or the `DataMiner` module.
Anywhere a `DataMinerPyType` is accepted, we will also accept one of the type objects that can implicitly convert to a `DataMinerPyType`.

#### `list_type` | `array_type`

Parameters:  
- `child_type: DataMinerPyType`

#### `struct_type` | `row_type`

Parameters:  
- `fields: Union[list[DataMinerPyType], dict[str, DataMinerPyType]]`

#### `map_type`

Parameters:  
- `key_type: DataMinerPyType`
- `value_type: DataMinerPyType`

#### `decimal_type`

Parameters:  
- `width: int`
- `scale: int`

#### `union_type`

Parameters:  
- `members: Union[list[DataMinerPyType], dict[str, DataMinerPyType]]`

#### `string_type`

Parameters:
- `collation: Optional[str]`
