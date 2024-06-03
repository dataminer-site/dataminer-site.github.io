---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/c/types
selected: Types
title: C API - Types
---

DataMiner is a strongly typed database system. As such, every column has a single type specified. This type is constant
over the entire column. That is to say, a column that is labeled as an `INTEGER` column will only contain `INTEGER`
values.

DataMiner also supports columns of composite types. For example, it is possible to define an array of integers (`INT[]`). It is also possible to define types as arbitrary structs (`ROW(i INTEGER, j VARCHAR)`). For that reason, native DataMiner type objects are not mere enums, but a class that can potentially be nested.

Types in the C API are modeled using an enum (`DataMiner_type`) and a complex class (`DataMiner_logical_type`). For most primitive types, e.g. integers or varchars, the enum is sufficient. For more complex types, such as lists, structs or decimals, the logical type must be used.



```c
typedef enum DataMiner_TYPE {
  DataMiner_TYPE_INVALID,
  DataMiner_TYPE_BOOLEAN,
  DataMiner_TYPE_TINYINT,
  DataMiner_TYPE_SMALLINT,
  DataMiner_TYPE_INTEGER,
  DataMiner_TYPE_BIGINT,
  DataMiner_TYPE_UTINYINT,
  DataMiner_TYPE_USMALLINT,
  DataMiner_TYPE_UINTEGER,
  DataMiner_TYPE_UBIGINT,
  DataMiner_TYPE_FLOAT,
  DataMiner_TYPE_DOUBLE,
  DataMiner_TYPE_TIMESTAMP,
  DataMiner_TYPE_DATE,
  DataMiner_TYPE_TIME,
  DataMiner_TYPE_INTERVAL,
  DataMiner_TYPE_HUGEINT,
  DataMiner_TYPE_VARCHAR,
  DataMiner_TYPE_BLOB,
  DataMiner_TYPE_DECIMAL,
  DataMiner_TYPE_TIMESTAMP_S,
  DataMiner_TYPE_TIMESTAMP_MS,
  DataMiner_TYPE_TIMESTAMP_NS,
  DataMiner_TYPE_ENUM,
  DataMiner_TYPE_LIST,
  DataMiner_TYPE_STRUCT,
  DataMiner_TYPE_MAP,
  DataMiner_TYPE_UUID,
  DataMiner_TYPE_JSON
} DataMiner_type;
```

The enum type of a column in the result can be obtained using the `DataMiner_column_type` function. The logical type of a column can be obtained using the `DataMiner_column_logical_type` function.

#### **DataMiner_value**
The `DataMiner_value` functions will auto-cast values as required. For example, it is no problem to use
`DataMiner_value_double` on a column of type `DataMiner_value_int32`. The value will be auto-cast and returned as a double.
Note that in certain cases the cast may fail. For example, this can happen if we request a `DataMiner_value_int8` and the value does not fit within an `int8` value. In this case, a default value will be returned (usually `0` or `nullptr`). The same default value will also be returned if the corresponding value is `NULL`.

The `DataMiner_value_is_null` function can be used to check if a specific value is `NULL` or not.

The exception to the auto-cast rule is the `DataMiner_value_varchar_internal` function. This function does not auto-cast and only works for `VARCHAR` columns. The reason this function exists is that the result does not need to be freed.

> Note that `DataMiner_value_varchar` and `DataMiner_value_blob` require the result to be de-allocated using `DataMiner_free`.

#### **DataMiner_result_get_chunk**

The `DataMiner_result_get_chunk` function can be used to read data chunks from a DataMiner result set, and is the most efficient way of reading data from a DataMiner result using the C API. It is also the only way of reading data of certain types from a DataMiner result. For example, the `DataMiner_value` functions do not support structural reading of composite types (lists or structs) or more complex types like enums and decimals.

For more information about data chunks, see the [documentation on data chunks](data_chunk).

## **API Reference**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_data_chunk</span> <span class="nf"><a href="#DataMiner_result_get_chunk">DataMiner_result_get_chunk</a></span>(<span class="kt">DataMiner_result</span> <span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">chunk_index</span>);
<span class="kt">bool</span> <span class="nf"><a href="#DataMiner_result_is_streaming">DataMiner_result_is_streaming</a></span>(<span class="kt">DataMiner_result</span> <span class="k">result</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#DataMiner_result_chunk_count">DataMiner_result_chunk_count</a></span>(<span class="kt">DataMiner_result</span> <span class="k">result</span>);
<span class="kt">bool</span> <span class="nf"><a href="#DataMiner_value_boolean">DataMiner_value_boolean</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">int8_t</span> <span class="nf"><a href="#DataMiner_value_int8">DataMiner_value_int8</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">int16_t</span> <span class="nf"><a href="#DataMiner_value_int16">DataMiner_value_int16</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">int32_t</span> <span class="nf"><a href="#DataMiner_value_int32">DataMiner_value_int32</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">int64_t</span> <span class="nf"><a href="#DataMiner_value_int64">DataMiner_value_int64</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">DataMiner_hugeint</span> <span class="nf"><a href="#DataMiner_value_hugeint">DataMiner_value_hugeint</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="k">DataMiner_decimal</span> <span class="nf"><a href="#DataMiner_value_decimal">DataMiner_value_decimal</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">uint8_t</span> <span class="nf"><a href="#DataMiner_value_uint8">DataMiner_value_uint8</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">uint16_t</span> <span class="nf"><a href="#DataMiner_value_uint16">DataMiner_value_uint16</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">uint32_t</span> <span class="nf"><a href="#DataMiner_value_uint32">DataMiner_value_uint32</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">uint64_t</span> <span class="nf"><a href="#DataMiner_value_uint64">DataMiner_value_uint64</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">float</span> <span class="nf"><a href="#DataMiner_value_float">DataMiner_value_float</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">double</span> <span class="nf"><a href="#DataMiner_value_double">DataMiner_value_double</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">DataMiner_date</span> <span class="nf"><a href="#DataMiner_value_date">DataMiner_value_date</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">DataMiner_time</span> <span class="nf"><a href="#DataMiner_value_time">DataMiner_value_time</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">DataMiner_timestamp</span> <span class="nf"><a href="#DataMiner_value_timestamp">DataMiner_value_timestamp</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">DataMiner_interval</span> <span class="nf"><a href="#DataMiner_value_interval">DataMiner_value_interval</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">char</span> *<span class="nf"><a href="#DataMiner_value_varchar">DataMiner_value_varchar</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">char</span> *<span class="nf"><a href="#DataMiner_value_varchar_internal">DataMiner_value_varchar_internal</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="k">DataMiner_string</span> <span class="nf"><a href="#DataMiner_value_string_internal">DataMiner_value_string_internal</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">DataMiner_blob</span> <span class="nf"><a href="#DataMiner_value_blob">DataMiner_value_blob</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">bool</span> <span class="nf"><a href="#DataMiner_value_is_null">DataMiner_value_is_null</a></span>(<span class="kt">DataMiner_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
</code></pre></div></div>
#### Date/Time/Timestamp Helpers
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_date_struct</span> <span class="nf"><a href="#DataMiner_from_date">DataMiner_from_date</a></span>(<span class="kt">DataMiner_date</span> <span class="k">date</span>);
<span class="kt">DataMiner_date</span> <span class="nf"><a href="#DataMiner_to_date">DataMiner_to_date</a></span>(<span class="kt">DataMiner_date_struct</span> <span class="k">date</span>);
<span class="kt">DataMiner_time_struct</span> <span class="nf"><a href="#DataMiner_from_time">DataMiner_from_time</a></span>(<span class="kt">DataMiner_time</span> <span class="k">time</span>);
<span class="kt">DataMiner_time</span> <span class="nf"><a href="#DataMiner_to_time">DataMiner_to_time</a></span>(<span class="kt">DataMiner_time_struct</span> <span class="k">time</span>);
<span class="kt">DataMiner_timestamp_struct</span> <span class="nf"><a href="#DataMiner_from_timestamp">DataMiner_from_timestamp</a></span>(<span class="kt">DataMiner_timestamp</span> <span class="k">ts</span>);
<span class="kt">DataMiner_timestamp</span> <span class="nf"><a href="#DataMiner_to_timestamp">DataMiner_to_timestamp</a></span>(<span class="kt">DataMiner_timestamp_struct</span> <span class="k">ts</span>);
</code></pre></div></div>
#### Hugeint Helpers
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">double</span> <span class="nf"><a href="#DataMiner_hugeint_to_double">DataMiner_hugeint_to_double</a></span>(<span class="kt">DataMiner_hugeint</span> <span class="k">val</span>);
<span class="kt">DataMiner_hugeint</span> <span class="nf"><a href="#DataMiner_double_to_hugeint">DataMiner_double_to_hugeint</a></span>(<span class="kt">double</span> <span class="k">val</span>);
<span class="k">DataMiner_decimal</span> <span class="nf"><a href="#DataMiner_double_to_decimal">DataMiner_double_to_decimal</a></span>(<span class="kt">double</span> <span class="k">val</span>, <span class="kt">uint8_t</span> <span class="k">width</span>, <span class="kt">uint8_t</span> <span class="k">scale</span>);
</code></pre></div></div>
#### Decimal Helpers
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">double</span> <span class="nf"><a href="#DataMiner_decimal_to_double">DataMiner_decimal_to_double</a></span>(<span class="k">DataMiner_decimal</span> <span class="k">val</span>);
</code></pre></div></div>
#### Logical Type Interface
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="nf"><a href="#DataMiner_create_logical_type">DataMiner_create_logical_type</a></span>(<span class="k">DataMiner_type</span> <span class="k">type</span>);
<span class="kt">DataMiner_logical_type</span> <span class="nf"><a href="#DataMiner_create_list_type">DataMiner_create_list_type</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">DataMiner_logical_type</span> <span class="nf"><a href="#DataMiner_create_map_type">DataMiner_create_map_type</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">key_type</span>, <span class="kt">DataMiner_logical_type</span> <span class="k">value_type</span>);
<span class="kt">DataMiner_logical_type</span> <span class="nf"><a href="#DataMiner_create_union_type">DataMiner_create_union_type</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">member_types</span>, <span class="kt">const</span> <span class="kt">char</span> **<span class="k">member_names</span>, <span class="kt">idx_t</span> <span class="k">member_count</span>);
<span class="kt">DataMiner_logical_type</span> <span class="nf"><a href="#DataMiner_create_decimal_type">DataMiner_create_decimal_type</a></span>(<span class="kt">uint8_t</span> <span class="k">width</span>, <span class="kt">uint8_t</span> <span class="k">scale</span>);
<span class="k">DataMiner_type</span> <span class="nf"><a href="#DataMiner_get_type_id">DataMiner_get_type_id</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">uint8_t</span> <span class="nf"><a href="#DataMiner_decimal_width">DataMiner_decimal_width</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">uint8_t</span> <span class="nf"><a href="#DataMiner_decimal_scale">DataMiner_decimal_scale</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="k">DataMiner_type</span> <span class="nf"><a href="#DataMiner_decimal_internal_type">DataMiner_decimal_internal_type</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="k">DataMiner_type</span> <span class="nf"><a href="#DataMiner_enum_internal_type">DataMiner_enum_internal_type</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">uint32_t</span> <span class="nf"><a href="#DataMiner_enum_dictionary_size">DataMiner_enum_dictionary_size</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">char</span> *<span class="nf"><a href="#DataMiner_enum_dictionary_value">DataMiner_enum_dictionary_value</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">DataMiner_logical_type</span> <span class="nf"><a href="#DataMiner_list_type_child_type">DataMiner_list_type_child_type</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">DataMiner_logical_type</span> <span class="nf"><a href="#DataMiner_map_type_key_type">DataMiner_map_type_key_type</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">DataMiner_logical_type</span> <span class="nf"><a href="#DataMiner_map_type_value_type">DataMiner_map_type_value_type</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#DataMiner_struct_type_child_count">DataMiner_struct_type_child_count</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">char</span> *<span class="nf"><a href="#DataMiner_struct_type_child_name">DataMiner_struct_type_child_name</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">DataMiner_logical_type</span> <span class="nf"><a href="#DataMiner_struct_type_child_type">DataMiner_struct_type_child_type</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#DataMiner_union_type_member_count">DataMiner_union_type_member_count</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">char</span> *<span class="nf"><a href="#DataMiner_union_type_member_name">DataMiner_union_type_member_name</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">DataMiner_logical_type</span> <span class="nf"><a href="#DataMiner_union_type_member_type">DataMiner_union_type_member_type</a></span>(<span class="kt">DataMiner_logical_type</span> <span class="k">type</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_destroy_logical_type">DataMiner_destroy_logical_type</a></span>(<span class="kt">DataMiner_logical_type</span> *<span class="k">type</span>);
</code></pre></div></div>
### DataMiner_result_get_chunk
---
Fetches a data chunk from the DataMiner_result. This function should be called repeatedly until the result is exhausted.

The result must be destroyed with `DataMiner_destroy_data_chunk`.

This function supersedes all `DataMiner_value` functions, as well as the `DataMiner_column_data` and `DataMiner_nullmask_data`
functions. It results in significantly better performance, and should be preferred in newer code-bases.

If this function is used, none of the other result functions can be used and vice versa (i.e. this function cannot be
mixed with the legacy result functions).

Use `DataMiner_result_chunk_count` to figure out how many chunks there are in the result.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_data_chunk</span> <span class="k">DataMiner_result_get_chunk</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> <span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">chunk_index
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object to fetch the data chunk from.
* `chunk_index`

The chunk index to fetch from.
* `returns`

The resulting data chunk. Returns `NULL` if the chunk index is out of bounds.

<br>

### DataMiner_result_is_streaming
---
Checks if the type of the internal result is StreamQueryResult.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">bool</span> <span class="k">DataMiner_result_is_streaming</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> <span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object to check.
* `returns`

Whether or not the result object is of the type StreamQueryResult

<br>

### DataMiner_result_chunk_count
---
Returns the number of data chunks present in the result.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">DataMiner_result_chunk_count</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> <span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object
* `returns`

Number of data chunks present in the result.

<br>

### DataMiner_value_boolean
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">bool</span> <span class="k">DataMiner_value_boolean</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The boolean value at the specified location, or false if the value cannot be converted.

<br>

### DataMiner_value_int8
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">int8_t</span> <span class="k">DataMiner_value_int8</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The int8_t value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_int16
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">int16_t</span> <span class="k">DataMiner_value_int16</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The int16_t value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_int32
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">int32_t</span> <span class="k">DataMiner_value_int32</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The int32_t value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_int64
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">int64_t</span> <span class="k">DataMiner_value_int64</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The int64_t value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_hugeint
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_hugeint</span> <span class="k">DataMiner_value_hugeint</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The DataMiner_hugeint value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_decimal
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">DataMiner_decimal</span> <span class="k">DataMiner_value_decimal</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The DataMiner_decimal value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_uint8
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint8_t</span> <span class="k">DataMiner_value_uint8</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The uint8_t value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_uint16
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint16_t</span> <span class="k">DataMiner_value_uint16</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The uint16_t value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_uint32
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint32_t</span> <span class="k">DataMiner_value_uint32</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The uint32_t value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_uint64
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint64_t</span> <span class="k">DataMiner_value_uint64</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The uint64_t value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_float
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">float</span> <span class="k">DataMiner_value_float</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The float value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_double
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">double</span> <span class="k">DataMiner_value_double</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The double value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_date
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_date</span> <span class="k">DataMiner_value_date</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The DataMiner_date value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_time
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_time</span> <span class="k">DataMiner_value_time</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The DataMiner_time value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_timestamp
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_timestamp</span> <span class="k">DataMiner_value_timestamp</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The DataMiner_timestamp value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_interval
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_interval</span> <span class="k">DataMiner_value_interval</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The DataMiner_interval value at the specified location, or 0 if the value cannot be converted.

<br>

### DataMiner_value_varchar
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">DataMiner_value_varchar</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `DEPRECATED`

use DataMiner_value_string instead. This function does not work correctly if the string contains null bytes.
* `returns`

The text value at the specified location as a null-terminated string, or nullptr if the value cannot be
converted. The result must be freed with `DataMiner_free`.

<br>

### DataMiner_value_varchar_internal
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">DataMiner_value_varchar_internal</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `DEPRECATED`

use DataMiner_value_string_internal instead. This function does not work correctly if the string contains
null bytes.
* `returns`

The char* value at the specified location. ONLY works on VARCHAR columns and does not auto-cast.
If the column is NOT a VARCHAR column this function will return NULL.

The result must NOT be freed.

<br>

### DataMiner_value_string_internal
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">DataMiner_string</span> <span class="k">DataMiner_value_string_internal</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `DEPRECATED`

use DataMiner_value_string_internal instead. This function does not work correctly if the string contains
null bytes.
* `returns`

The char* value at the specified location. ONLY works on VARCHAR columns and does not auto-cast.
If the column is NOT a VARCHAR column this function will return NULL.

The result must NOT be freed.

<br>

### DataMiner_value_blob
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_blob</span> <span class="k">DataMiner_value_blob</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The DataMiner_blob value at the specified location. Returns a blob with blob.data set to nullptr if the
value cannot be converted. The resulting "blob.data" must be freed with `DataMiner_free.`

<br>

### DataMiner_value_is_null
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">bool</span> <span class="k">DataMiner_value_is_null</span>(<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

Returns true if the value at the specified index is NULL, and false otherwise.

<br>

### DataMiner_from_date
---
Decompose a `DataMiner_date` object into year, month and date (stored as `DataMiner_date_struct`).

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_date_struct</span> <span class="k">DataMiner_from_date</span>(<span class="k">
</span>  <span class="kt">DataMiner_date</span> <span class="k">date
</span>);
</code></pre></div></div>
#### Parameters
---
* `date`

The date object, as obtained from a `DataMiner_TYPE_DATE` column.
* `returns`

The `DataMiner_date_struct` with the decomposed elements.

<br>

### DataMiner_to_date
---
Re-compose a `DataMiner_date` from year, month and date (`DataMiner_date_struct`).

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_date</span> <span class="k">DataMiner_to_date</span>(<span class="k">
</span>  <span class="kt">DataMiner_date_struct</span> <span class="k">date
</span>);
</code></pre></div></div>
#### Parameters
---
* `date`

The year, month and date stored in a `DataMiner_date_struct`.
* `returns`

The `DataMiner_date` element.

<br>

### DataMiner_from_time
---
Decompose a `DataMiner_time` object into hour, minute, second and microsecond (stored as `DataMiner_time_struct`).

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_time_struct</span> <span class="k">DataMiner_from_time</span>(<span class="k">
</span>  <span class="kt">DataMiner_time</span> <span class="k">time
</span>);
</code></pre></div></div>
#### Parameters
---
* `time`

The time object, as obtained from a `DataMiner_TYPE_TIME` column.
* `returns`

The `DataMiner_time_struct` with the decomposed elements.

<br>

### DataMiner_to_time
---
Re-compose a `DataMiner_time` from hour, minute, second and microsecond (`DataMiner_time_struct`).

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_time</span> <span class="k">DataMiner_to_time</span>(<span class="k">
</span>  <span class="kt">DataMiner_time_struct</span> <span class="k">time
</span>);
</code></pre></div></div>
#### Parameters
---
* `time`

The hour, minute, second and microsecond in a `DataMiner_time_struct`.
* `returns`

The `DataMiner_time` element.

<br>

### DataMiner_from_timestamp
---
Decompose a `DataMiner_timestamp` object into a `DataMiner_timestamp_struct`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_timestamp_struct</span> <span class="k">DataMiner_from_timestamp</span>(<span class="k">
</span>  <span class="kt">DataMiner_timestamp</span> <span class="k">ts
</span>);
</code></pre></div></div>
#### Parameters
---
* `ts`

The ts object, as obtained from a `DataMiner_TYPE_TIMESTAMP` column.
* `returns`

The `DataMiner_timestamp_struct` with the decomposed elements.

<br>

### DataMiner_to_timestamp
---
Re-compose a `DataMiner_timestamp` from a DataMiner_timestamp_struct.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_timestamp</span> <span class="k">DataMiner_to_timestamp</span>(<span class="k">
</span>  <span class="kt">DataMiner_timestamp_struct</span> <span class="k">ts
</span>);
</code></pre></div></div>
#### Parameters
---
* `ts`

The de-composed elements in a `DataMiner_timestamp_struct`.
* `returns`

The `DataMiner_timestamp` element.

<br>

### DataMiner_hugeint_to_double
---
Converts a DataMiner_hugeint object (as obtained from a `DataMiner_TYPE_HUGEINT` column) into a double.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">double</span> <span class="k">DataMiner_hugeint_to_double</span>(<span class="k">
</span>  <span class="kt">DataMiner_hugeint</span> <span class="k">val
</span>);
</code></pre></div></div>
#### Parameters
---
* `val`

The hugeint value.
* `returns`

The converted `double` element.

<br>

### DataMiner_double_to_hugeint
---
Converts a double value to a DataMiner_hugeint object.

If the conversion fails because the double value is too big the result will be 0.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_hugeint</span> <span class="k">DataMiner_double_to_hugeint</span>(<span class="k">
</span>  <span class="kt">double</span> <span class="k">val
</span>);
</code></pre></div></div>
#### Parameters
---
* `val`

The double value.
* `returns`

The converted `DataMiner_hugeint` element.

<br>

### DataMiner_double_to_decimal
---
Converts a double value to a DataMiner_decimal object.

If the conversion fails because the double value is too big, or the width/scale are invalid the result will be 0.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">DataMiner_decimal</span> <span class="k">DataMiner_double_to_decimal</span>(<span class="k">
</span>  <span class="kt">double</span> <span class="k">val</span>,<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">width</span>,<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">scale
</span>);
</code></pre></div></div>
#### Parameters
---
* `val`

The double value.
* `returns`

The converted `DataMiner_decimal` element.

<br>

### DataMiner_decimal_to_double
---
Converts a DataMiner_decimal object (as obtained from a `DataMiner_TYPE_DECIMAL` column) into a double.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">double</span> <span class="k">DataMiner_decimal_to_double</span>(<span class="k">
</span>  <span class="k">DataMiner_decimal</span> <span class="k">val
</span>);
</code></pre></div></div>
#### Parameters
---
* `val`

The decimal value.
* `returns`

The converted `double` element.

<br>

### DataMiner_create_logical_type
---
Creates a `DataMiner_logical_type` from a standard primitive type.
The resulting type should be destroyed with `DataMiner_destroy_logical_type`.

This should not be used with `DataMiner_TYPE_DECIMAL`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="k">DataMiner_create_logical_type</span>(<span class="k">
</span>  <span class="k">DataMiner_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The primitive type to create.
* `returns`

The logical type.

<br>

### DataMiner_create_list_type
---
Creates a list type from its child type.
The resulting type should be destroyed with `DataMiner_destroy_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="k">DataMiner_create_list_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The child type of list type to create.
* `returns`

The logical type.

<br>

### DataMiner_create_map_type
---
Creates a map type from its key type and value type.
The resulting type should be destroyed with `DataMiner_destroy_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="k">DataMiner_create_map_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">key_type</span>,<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">value_type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The key type and value type of map type to create.
* `returns`

The logical type.

<br>

### DataMiner_create_union_type
---
Creates a UNION type from the passed types array
The resulting type should be destroyed with `DataMiner_destroy_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="k">DataMiner_create_union_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">member_types</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> **<span class="k">member_names</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">member_count
</span>);
</code></pre></div></div>
#### Parameters
---
* `types`

The array of types that the union should consist of.
* `type_amount`

The size of the types array.
* `returns`

The logical type.

<br>

### DataMiner_create_decimal_type
---
Creates a `DataMiner_logical_type` of type decimal with the specified width and scale
The resulting type should be destroyed with `DataMiner_destroy_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="k">DataMiner_create_decimal_type</span>(<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">width</span>,<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">scale
</span>);
</code></pre></div></div>
#### Parameters
---
* `width`

The width of the decimal type
* `scale`

The scale of the decimal type
* `returns`

The logical type.

<br>

### DataMiner_get_type_id
---
Retrieves the type class of a `DataMiner_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">DataMiner_type</span> <span class="k">DataMiner_get_type_id</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The type id

<br>

### DataMiner_decimal_width
---
Retrieves the width of a decimal type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint8_t</span> <span class="k">DataMiner_decimal_width</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The width of the decimal type

<br>

### DataMiner_decimal_scale
---
Retrieves the scale of a decimal type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint8_t</span> <span class="k">DataMiner_decimal_scale</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The scale of the decimal type

<br>

### DataMiner_decimal_internal_type
---
Retrieves the internal storage type of a decimal type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">DataMiner_type</span> <span class="k">DataMiner_decimal_internal_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The internal type of the decimal type

<br>

### DataMiner_enum_internal_type
---
Retrieves the internal storage type of an enum type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">DataMiner_type</span> <span class="k">DataMiner_enum_internal_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The internal type of the enum type

<br>

### DataMiner_enum_dictionary_size
---
Retrieves the dictionary size of the enum type

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint32_t</span> <span class="k">DataMiner_enum_dictionary_size</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The dictionary size of the enum type

<br>

### DataMiner_enum_dictionary_value
---
Retrieves the dictionary value at the specified position from the enum.

The result must be freed with `DataMiner_free`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">DataMiner_enum_dictionary_value</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `index`

The index in the dictionary
* `returns`

The string value of the enum type. Must be freed with `DataMiner_free`.

<br>

### DataMiner_list_type_child_type
---
Retrieves the child type of the given list type.

The result must be freed with `DataMiner_destroy_logical_type`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="k">DataMiner_list_type_child_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The child type of the list type. Must be destroyed with `DataMiner_destroy_logical_type`.

<br>

### DataMiner_map_type_key_type
---
Retrieves the key type of the given map type.

The result must be freed with `DataMiner_destroy_logical_type`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="k">DataMiner_map_type_key_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The key type of the map type. Must be destroyed with `DataMiner_destroy_logical_type`.

<br>

### DataMiner_map_type_value_type
---
Retrieves the value type of the given map type.

The result must be freed with `DataMiner_destroy_logical_type`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="k">DataMiner_map_type_value_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The value type of the map type. Must be destroyed with `DataMiner_destroy_logical_type`.

<br>

### DataMiner_struct_type_child_count
---
Returns the number of children of a struct type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">DataMiner_struct_type_child_count</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The number of children of a struct type.

<br>

### DataMiner_struct_type_child_name
---
Retrieves the name of the struct child.

The result must be freed with `DataMiner_free`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">DataMiner_struct_type_child_name</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `index`

The child index
* `returns`

The name of the struct type. Must be freed with `DataMiner_free`.

<br>

### DataMiner_struct_type_child_type
---
Retrieves the child type of the given struct type at the specified index.

The result must be freed with `DataMiner_destroy_logical_type`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="k">DataMiner_struct_type_child_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `index`

The child index
* `returns`

The child type of the struct type. Must be destroyed with `DataMiner_destroy_logical_type`.

<br>

### DataMiner_union_type_member_count
---
Returns the number of members that the union type has.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">DataMiner_union_type_member_count</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type (union) object
* `returns`

The number of members of a union type.

<br>

### DataMiner_union_type_member_name
---
Retrieves the name of the union member.

The result must be freed with `DataMiner_free`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">DataMiner_union_type_member_name</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `index`

The child index
* `returns`

The name of the union member. Must be freed with `DataMiner_free`.

<br>

### DataMiner_union_type_member_type
---
Retrieves the child type of the given union member at the specified index.

The result must be freed with `DataMiner_destroy_logical_type`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_logical_type</span> <span class="k">DataMiner_union_type_member_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `index`

The child index
* `returns`

The child type of the union member. Must be destroyed with `DataMiner_destroy_logical_type`.

<br>

### DataMiner_destroy_logical_type
---
Destroys the logical type and de-allocates all memory allocated for that type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_destroy_logical_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> *<span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type to destroy.

<br>