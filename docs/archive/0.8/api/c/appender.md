---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/c/appender
selected: Appender
title: C API - Appender
---

Appenders are the most efficient way of loading data into DataMiner from within the C interface, and are recommended for
fast data loading. The appender is much faster than using prepared statements or individual `INSERT INTO` statements.

Appends are made in row-wise format. For every column, a `DataMiner_append_[type]` call should be made, after which
the row should be finished by calling `DataMiner_appender_end_row`. After all rows have been appended,
`DataMiner_appender_destroy` should be used to finalize the appender and clean up the resulting memory.

Note that `DataMiner_appender_destroy` should always be called on the resulting appender, even if the function returns
`DataMinerError`.

### **Example**
```c
DataMiner_query(con, "CREATE TABLE people(id INTEGER, name VARCHAR)", NULL);

DataMiner_appender appender;
if (DataMiner_appender_create(con, NULL, "people", &appender) == DataMinerError) {
  // handle error
}
// append the first row (1, Mark)
DataMiner_append_int32(appender, 1);
DataMiner_append_varchar(appender, "Mark");
DataMiner_appender_end_row(appender);

// append the second row (2, Hannes)
DataMiner_append_int32(appender, 2);
DataMiner_append_varchar(appender, "Hannes");
DataMiner_appender_end_row(appender);

// finish appending and flush all the rows to the table
DataMiner_appender_destroy(&appender);
```

## **API Reference**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_appender_create">DataMiner_appender_create</a></span>(<span class="kt">DataMiner_connection</span> <span class="k">connection</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">schema</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">table</span>, <span class="kt">DataMiner_appender</span> *<span class="k">out_appender</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#DataMiner_appender_error">DataMiner_appender_error</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_appender_flush">DataMiner_appender_flush</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_appender_close">DataMiner_appender_close</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_appender_destroy">DataMiner_appender_destroy</a></span>(<span class="kt">DataMiner_appender</span> *<span class="k">appender</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_appender_begin_row">DataMiner_appender_begin_row</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_appender_end_row">DataMiner_appender_end_row</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_bool">DataMiner_append_bool</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">bool</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_int8">DataMiner_append_int8</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">int8_t</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_int16">DataMiner_append_int16</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">int16_t</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_int32">DataMiner_append_int32</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">int32_t</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_int64">DataMiner_append_int64</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">int64_t</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_hugeint">DataMiner_append_hugeint</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">DataMiner_hugeint</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_uint8">DataMiner_append_uint8</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">uint8_t</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_uint16">DataMiner_append_uint16</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">uint16_t</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_uint32">DataMiner_append_uint32</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">uint32_t</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_uint64">DataMiner_append_uint64</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">uint64_t</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_float">DataMiner_append_float</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">float</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_double">DataMiner_append_double</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">double</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_date">DataMiner_append_date</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">DataMiner_date</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_time">DataMiner_append_time</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">DataMiner_time</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_timestamp">DataMiner_append_timestamp</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">DataMiner_timestamp</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_interval">DataMiner_append_interval</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">DataMiner_interval</span> <span class="k">value</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_varchar">DataMiner_append_varchar</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_varchar_length">DataMiner_append_varchar_length</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>, <span class="kt">idx_t</span> <span class="k">length</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_blob">DataMiner_append_blob</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">const</span> <span class="kt">void</span> *<span class="k">data</span>, <span class="kt">idx_t</span> <span class="k">length</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_null">DataMiner_append_null</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_append_data_chunk">DataMiner_append_data_chunk</a></span>(<span class="kt">DataMiner_appender</span> <span class="k">appender</span>, <span class="kt">DataMiner_data_chunk</span> <span class="k">chunk</span>);
</code></pre></div></div>
### DataMiner_appender_create
---
Creates an appender object.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_appender_create</span>(<span class="k">
</span>  <span class="kt">DataMiner_connection</span> <span class="k">connection</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">schema</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">table</span>,<span class="k">
</span>  <span class="kt">DataMiner_appender</span> *<span class="k">out_appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `connection`

The connection context to create the appender in.
* `schema`

The schema of the table to append to, or `nullptr` for the default schema.
* `table`

The table name to append to.
* `out_appender`

The resulting appender object.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_appender_error
---
Returns the error message associated with the given appender.
If the appender has no error message, this returns `nullptr` instead.

The error message should not be freed. It will be de-allocated when `DataMiner_appender_destroy` is called.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">DataMiner_appender_error</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender to get the error from.
* `returns`

The error message, or `nullptr` if there is none.

<br>

### DataMiner_appender_flush
---
Flush the appender to the table, forcing the cache of the appender to be cleared and the data to be appended to the
base table.

This should generally not be used unless you know what you are doing. Instead, call `DataMiner_appender_destroy` when you
are done with the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_appender_flush</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender to flush.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_appender_close
---
Close the appender, flushing all intermediate state in the appender to the table and closing it for further appends.

This is generally not necessary. Call `DataMiner_appender_destroy` instead.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_appender_close</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender to flush and close.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_appender_destroy
---
Close the appender and destroy it. Flushing all intermediate state in the appender to the table, and de-allocating
all memory associated with the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_appender_destroy</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> *<span class="k">appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender to flush, close and destroy.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_appender_begin_row
---
A nop function, provided for backwards compatibility reasons. Does nothing. Only `DataMiner_appender_end_row` is required.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_appender_begin_row</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
<br>

### DataMiner_appender_end_row
---
Finish the current row of appends. After end_row is called, the next row can be appended.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_appender_end_row</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_append_bool
---
Append a bool value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_bool</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">bool</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_int8
---
Append an int8_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_int8</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">int8_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_int16
---
Append an int16_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_int16</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">int16_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_int32
---
Append an int32_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_int32</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">int32_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_int64
---
Append an int64_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_int64</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">int64_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_hugeint
---
Append a DataMiner_hugeint value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_hugeint</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">DataMiner_hugeint</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_uint8
---
Append a uint8_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_uint8</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_uint16
---
Append a uint16_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_uint16</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">uint16_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_uint32
---
Append a uint32_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_uint32</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">uint32_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_uint64
---
Append a uint64_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_uint64</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">uint64_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_float
---
Append a float value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_float</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">float</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_double
---
Append a double value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_double</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">double</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_date
---
Append a DataMiner_date value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_date</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">DataMiner_date</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_time
---
Append a DataMiner_time value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_time</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">DataMiner_time</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_timestamp
---
Append a DataMiner_timestamp value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_timestamp</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">DataMiner_timestamp</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_interval
---
Append a DataMiner_interval value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_interval</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">DataMiner_interval</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_varchar
---
Append a varchar value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_varchar</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_varchar_length
---
Append a varchar value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_varchar_length</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">length
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_blob
---
Append a blob value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_blob</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">void</span> *<span class="k">data</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">length
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_null
---
Append a NULL value to the appender (of any type).

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_null</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
<br>

### DataMiner_append_data_chunk
---
Appends a pre-filled data chunk to the specified appender.

The types of the data chunk must exactly match the types of the table, no casting is performed.
If the types do not match or the appender is in an invalid state, DataMinerError is returned.
If the append is successful, DataMinerSuccess is returned.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_append_data_chunk</span>(<span class="k">
</span>  <span class="kt">DataMiner_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">DataMiner_data_chunk</span> <span class="k">chunk
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender to append to.
* `chunk`

The data chunk to append.
* `returns`

The return state.

<br>