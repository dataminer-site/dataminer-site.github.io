---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/c/prepared
selected: Prepared Statements
title: C API - Prepared Statements
---

A prepared statement is a parameterized query. The query is prepared with question marks (`?`) or dollar symbols (`$1`) indicating the parameters of the query. Values can then be bound to these parameters, after which the prepared statement can be executed using those parameters. A single query can be prepared once and executed many times.

Prepared statements are useful to:
* Easily supply parameters to functions while avoiding string concatenation/SQL injection attacks.
* Speeding up queries that will be executed many times with different parameters.

DataMiner supports prepared statements in the C API with the `DataMiner_prepare` method. The `DataMiner_bind` family of functions is used to supply values for subsequent execution of the prepared statement using `DataMiner_execute_prepared`. After we are done with the prepared statement it can be cleaned up using the `DataMiner_destroy_prepare` method.

### **Example**
```c
DataMiner_prepared_statement stmt;
DataMiner_result result;
if (DataMiner_prepare(con, "INSERT INTO integers VALUES ($1, $2)", &stmt) == DataMinerError) {
    // handle error
}

DataMiner_bind_int32(stmt, 1, 42); // the parameter index starts counting at 1!
DataMiner_bind_int32(stmt, 2, 43);
// NULL as second parameter means no result set is requested
DataMiner_execute_prepared(stmt, NULL);
DataMiner_destroy_prepare(&stmt);

// we can also query result sets using prepared statements
if (DataMiner_prepare(con, "SELECT * FROM integers WHERE i = ?", &stmt) == DataMinerError) {
    // handle error
}
DataMiner_bind_int32(stmt, 1, 42);
DataMiner_execute_prepared(stmt, &result);

// do something with result

// clean up
DataMiner_destroy_result(&result);
DataMiner_destroy_prepare(&stmt);
```

After calling `DataMiner_prepare`, the prepared statement parameters can be inspected using `DataMiner_nparams` and `DataMiner_param_type`. In case the prepare fails, the error can be obtained through `DataMiner_prepare_error`.

It is not required that the `DataMiner_bind` family of functions matches the prepared statement parameter type exactly. The values will be auto-cast to the required value as required. For example, calling `DataMiner_bind_int8` on a parameter type of `DataMiner_TYPE_INTEGER` will work as expected.

> Do **not** use prepared statements to insert large amounts of data into DataMiner. Instead it is recommended to use the [Appender](appender).

## **API Reference**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_prepare">DataMiner_prepare</a></span>(<span class="kt">DataMiner_connection</span> <span class="k">connection</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">query</span>, <span class="kt">DataMiner_prepared_statement</span> *<span class="k">out_prepared_statement</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_destroy_prepare">DataMiner_destroy_prepare</a></span>(<span class="kt">DataMiner_prepared_statement</span> *<span class="k">prepared_statement</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#DataMiner_prepare_error">DataMiner_prepare_error</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#DataMiner_nparams">DataMiner_nparams</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>);
<span class="k">DataMiner_type</span> <span class="nf"><a href="#DataMiner_param_type">DataMiner_param_type</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_clear_bindings">DataMiner_clear_bindings</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_boolean">DataMiner_bind_boolean</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">bool</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_int8">DataMiner_bind_int8</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">int8_t</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_int16">DataMiner_bind_int16</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">int16_t</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_int32">DataMiner_bind_int32</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">int32_t</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_int64">DataMiner_bind_int64</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">int64_t</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_hugeint">DataMiner_bind_hugeint</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">DataMiner_hugeint</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_decimal">DataMiner_bind_decimal</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="k">DataMiner_decimal</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_uint8">DataMiner_bind_uint8</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">uint8_t</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_uint16">DataMiner_bind_uint16</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">uint16_t</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_uint32">DataMiner_bind_uint32</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">uint32_t</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_uint64">DataMiner_bind_uint64</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">uint64_t</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_float">DataMiner_bind_float</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">float</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_double">DataMiner_bind_double</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">double</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_date">DataMiner_bind_date</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">DataMiner_date</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_time">DataMiner_bind_time</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">DataMiner_time</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_timestamp">DataMiner_bind_timestamp</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">DataMiner_timestamp</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_interval">DataMiner_bind_interval</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">DataMiner_interval</span> <span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_varchar">DataMiner_bind_varchar</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_varchar_length">DataMiner_bind_varchar_length</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>, <span class="kt">idx_t</span> <span class="k">length</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_blob">DataMiner_bind_blob</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">const</span> <span class="kt">void</span> *<span class="k">data</span>, <span class="kt">idx_t</span> <span class="k">length</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_bind_null">DataMiner_bind_null</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_execute_prepared">DataMiner_execute_prepared</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">DataMiner_result</span> *<span class="k">out_result</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_execute_prepared_arrow">DataMiner_execute_prepared_arrow</a></span>(<span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">DataMiner_arrow</span> *<span class="k">out_result</span>);
</code></pre></div></div>
### DataMiner_prepare
---
Create a prepared statement object from a query.

Note that after calling `DataMiner_prepare`, the prepared statement should always be destroyed using
`DataMiner_destroy_prepare`, even if the prepare fails.

If the prepare fails, `DataMiner_prepare_error` can be called to obtain the reason why the prepare failed.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_prepare</span>(<span class="k">
</span>  <span class="kt">DataMiner_connection</span> <span class="k">connection</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">query</span>,<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> *<span class="k">out_prepared_statement
</span>);
</code></pre></div></div>
#### Parameters
---
* `connection`

The connection object
* `query`

The SQL query to prepare
* `out_prepared_statement`

The resulting prepared statement object
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_destroy_prepare
---
Closes the prepared statement and de-allocates all memory allocated for the statement.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_destroy_prepare</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> *<span class="k">prepared_statement
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to destroy.

<br>

### DataMiner_prepare_error
---
Returns the error message associated with the given prepared statement.
If the prepared statement has no error message, this returns `nullptr` instead.

The error message should not be freed. It will be de-allocated when `DataMiner_destroy_prepare` is called.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">DataMiner_prepare_error</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to obtain the error from.
* `returns`

The error message, or `nullptr` if there is none.

<br>

### DataMiner_nparams
---
Returns the number of parameters that can be provided to the given prepared statement.

Returns 0 if the query was not successfully prepared.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">DataMiner_nparams</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to obtain the number of parameters for.

<br>

### DataMiner_param_type
---
Returns the parameter type for the parameter at the given index.

Returns `DataMiner_TYPE_INVALID` if the parameter index is out of range or the statement was not successfully prepared.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">DataMiner_type</span> <span class="k">DataMiner_param_type</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement.
* `param_idx`

The parameter index.
* `returns`

The parameter type

<br>

### DataMiner_clear_bindings
---
Clear the params bind to the prepared statement.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_clear_bindings</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_boolean
---
Binds a bool value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_boolean</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">bool</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_int8
---
Binds an int8_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_int8</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">int8_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_int16
---
Binds an int16_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_int16</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">int16_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_int32
---
Binds an int32_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_int32</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">int32_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_int64
---
Binds an int64_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_int64</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">int64_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_hugeint
---
Binds an DataMiner_hugeint value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_hugeint</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">DataMiner_hugeint</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_decimal
---
Binds a DataMiner_decimal value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_decimal</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="k">DataMiner_decimal</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_uint8
---
Binds an uint8_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_uint8</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_uint16
---
Binds an uint16_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_uint16</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">uint16_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_uint32
---
Binds an uint32_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_uint32</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">uint32_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_uint64
---
Binds an uint64_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_uint64</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">uint64_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_float
---
Binds an float value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_float</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">float</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_double
---
Binds an double value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_double</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">double</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_date
---
Binds a DataMiner_date value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_date</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">DataMiner_date</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_time
---
Binds a DataMiner_time value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_time</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">DataMiner_time</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_timestamp
---
Binds a DataMiner_timestamp value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_timestamp</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">DataMiner_timestamp</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_interval
---
Binds a DataMiner_interval value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_interval</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">DataMiner_interval</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_varchar
---
Binds a null-terminated varchar value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_varchar</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_varchar_length
---
Binds a varchar value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_varchar_length</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">length
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_blob
---
Binds a blob value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_blob</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">void</span> *<span class="k">data</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">length
</span>);
</code></pre></div></div>
<br>

### DataMiner_bind_null
---
Binds a NULL value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_bind_null</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx
</span>);
</code></pre></div></div>
<br>

### DataMiner_execute_prepared
---
Executes the prepared statement with the given bound parameters, and returns a materialized query result.

This method can be called multiple times for each prepared statement, and the parameters can be modified
between calls to this function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_execute_prepared</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">DataMiner_result</span> *<span class="k">out_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to execute.
* `out_result`

The query result.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_execute_prepared_arrow
---
Executes the prepared statement with the given bound parameters, and returns an arrow query result.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_execute_prepared_arrow</span>(<span class="k">
</span>  <span class="kt">DataMiner_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">DataMiner_arrow</span> *<span class="k">out_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to execute.
* `out_result`

The query result.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>