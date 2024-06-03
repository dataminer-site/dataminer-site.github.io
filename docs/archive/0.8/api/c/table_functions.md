---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/c/table_functions
selected: Table Functions
title: C API - Table Functions
---

The table function API can be used to define a table function that can then be called from within DataMiner in the `FROM` clause of a query.

## **API Reference**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_table_function</span> <span class="nf"><a href="#DataMiner_create_table_function">DataMiner_create_table_function</a></span>();
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_destroy_table_function">DataMiner_destroy_table_function</a></span>(<span class="kt">DataMiner_table_function</span> *<span class="k">table_function</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_table_function_set_name">DataMiner_table_function_set_name</a></span>(<span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_table_function_add_parameter">DataMiner_table_function_add_parameter</a></span>(<span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>, <span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_table_function_add_named_parameter">DataMiner_table_function_add_named_parameter</a></span>(<span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>, <span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_table_function_set_extra_info">DataMiner_table_function_set_extra_info</a></span>(<span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>, <span class="kt">void</span> *<span class="k">extra_info</span>, <span class="k">DataMiner_delete_callback_t</span> <span class="k">destroy</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_table_function_set_bind">DataMiner_table_function_set_bind</a></span>(<span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>, <span class="k">DataMiner_table_function_bind_t</span> <span class="k">bind</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_table_function_set_init">DataMiner_table_function_set_init</a></span>(<span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>, <span class="k">DataMiner_table_function_init_t</span> <span class="k">init</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_table_function_set_local_init">DataMiner_table_function_set_local_init</a></span>(<span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>, <span class="k">DataMiner_table_function_init_t</span> <span class="k">init</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_table_function_set_function">DataMiner_table_function_set_function</a></span>(<span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>, <span class="k">DataMiner_table_function_t</span> <span class="k">function</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_table_function_supports_projection_pushdown">DataMiner_table_function_supports_projection_pushdown</a></span>(<span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>, <span class="kt">bool</span> <span class="k">pushdown</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_register_table_function">DataMiner_register_table_function</a></span>(<span class="kt">DataMiner_connection</span> <span class="k">con</span>, <span class="kt">DataMiner_table_function</span> <span class="k">function</span>);
</code></pre></div></div>
#### Table Function Bind
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="nf"><a href="#DataMiner_bind_get_extra_info">DataMiner_bind_get_extra_info</a></span>(<span class="kt">DataMiner_bind_info</span> <span class="k">info</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_bind_add_result_column">DataMiner_bind_add_result_column</a></span>(<span class="kt">DataMiner_bind_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>, <span class="kt">DataMiner_logical_type</span> <span class="k">type</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#DataMiner_bind_get_parameter_count">DataMiner_bind_get_parameter_count</a></span>(<span class="kt">DataMiner_bind_info</span> <span class="k">info</span>);
<span class="kt">DataMiner_value</span> <span class="nf"><a href="#DataMiner_bind_get_parameter">DataMiner_bind_get_parameter</a></span>(<span class="kt">DataMiner_bind_info</span> <span class="k">info</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">DataMiner_value</span> <span class="nf"><a href="#DataMiner_bind_get_named_parameter">DataMiner_bind_get_named_parameter</a></span>(<span class="kt">DataMiner_bind_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_bind_set_bind_data">DataMiner_bind_set_bind_data</a></span>(<span class="kt">DataMiner_bind_info</span> <span class="k">info</span>, <span class="kt">void</span> *<span class="k">bind_data</span>, <span class="k">DataMiner_delete_callback_t</span> <span class="k">destroy</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_bind_set_cardinality">DataMiner_bind_set_cardinality</a></span>(<span class="kt">DataMiner_bind_info</span> <span class="k">info</span>, <span class="kt">idx_t</span> <span class="k">cardinality</span>, <span class="kt">bool</span> <span class="k">is_exact</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_bind_set_error">DataMiner_bind_set_error</a></span>(<span class="kt">DataMiner_bind_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error</span>);
</code></pre></div></div>
#### Table Function Init
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="nf"><a href="#DataMiner_init_get_extra_info">DataMiner_init_get_extra_info</a></span>(<span class="kt">DataMiner_init_info</span> <span class="k">info</span>);
<span class="kt">void</span> *<span class="nf"><a href="#DataMiner_init_get_bind_data">DataMiner_init_get_bind_data</a></span>(<span class="kt">DataMiner_init_info</span> <span class="k">info</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_init_set_init_data">DataMiner_init_set_init_data</a></span>(<span class="kt">DataMiner_init_info</span> <span class="k">info</span>, <span class="kt">void</span> *<span class="k">init_data</span>, <span class="k">DataMiner_delete_callback_t</span> <span class="k">destroy</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#DataMiner_init_get_column_count">DataMiner_init_get_column_count</a></span>(<span class="kt">DataMiner_init_info</span> <span class="k">info</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#DataMiner_init_get_column_index">DataMiner_init_get_column_index</a></span>(<span class="kt">DataMiner_init_info</span> <span class="k">info</span>, <span class="kt">idx_t</span> <span class="k">column_index</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_init_set_max_threads">DataMiner_init_set_max_threads</a></span>(<span class="kt">DataMiner_init_info</span> <span class="k">info</span>, <span class="kt">idx_t</span> <span class="k">max_threads</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_init_set_error">DataMiner_init_set_error</a></span>(<span class="kt">DataMiner_init_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error</span>);
</code></pre></div></div>
#### Table Function
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="nf"><a href="#DataMiner_function_get_extra_info">DataMiner_function_get_extra_info</a></span>(<span class="kt">DataMiner_function_info</span> <span class="k">info</span>);
<span class="kt">void</span> *<span class="nf"><a href="#DataMiner_function_get_bind_data">DataMiner_function_get_bind_data</a></span>(<span class="kt">DataMiner_function_info</span> <span class="k">info</span>);
<span class="kt">void</span> *<span class="nf"><a href="#DataMiner_function_get_init_data">DataMiner_function_get_init_data</a></span>(<span class="kt">DataMiner_function_info</span> <span class="k">info</span>);
<span class="kt">void</span> *<span class="nf"><a href="#DataMiner_function_get_local_init_data">DataMiner_function_get_local_init_data</a></span>(<span class="kt">DataMiner_function_info</span> <span class="k">info</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_function_set_error">DataMiner_function_set_error</a></span>(<span class="kt">DataMiner_function_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error</span>);
</code></pre></div></div>
### DataMiner_create_table_function
---
Creates a new empty table function.

The return value should be destroyed with `DataMiner_destroy_table_function`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_table_function</span> <span class="k">DataMiner_create_table_function</span>(<span class="k">
</span>  <span class="k">
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The table function object.

<br>

### DataMiner_destroy_table_function
---
Destroys the given table function object.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_destroy_table_function</span>(<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> *<span class="k">table_function
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function to destroy

<br>

### DataMiner_table_function_set_name
---
Sets the name of the given table function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_table_function_set_name</span>(<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `name`

The name of the table function

<br>

### DataMiner_table_function_add_parameter
---
Adds a parameter to the table function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_table_function_add_parameter</span>(<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `type`

The type of the parameter to add.

<br>

### DataMiner_table_function_add_named_parameter
---
Adds a named parameter to the table function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_table_function_add_named_parameter</span>(<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>,<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `name`

The name of the parameter
* `type`

The type of the parameter to add.

<br>

### DataMiner_table_function_set_extra_info
---
Assigns extra information to the table function that can be fetched during binding, etc.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_table_function_set_extra_info</span>(<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="kt">void</span> *<span class="k">extra_info</span>,<span class="k">
</span>  <span class="k">DataMiner_delete_callback_t</span> <span class="k">destroy
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `extra_info`

The extra information
* `destroy`

The callback that will be called to destroy the bind data (if any)

<br>

### DataMiner_table_function_set_bind
---
Sets the bind function of the table function

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_table_function_set_bind</span>(<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="k">DataMiner_table_function_bind_t</span> <span class="k">bind
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `bind`

The bind function

<br>

### DataMiner_table_function_set_init
---
Sets the init function of the table function

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_table_function_set_init</span>(<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="k">DataMiner_table_function_init_t</span> <span class="k">init
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `init`

The init function

<br>

### DataMiner_table_function_set_local_init
---
Sets the thread-local init function of the table function

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_table_function_set_local_init</span>(<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="k">DataMiner_table_function_init_t</span> <span class="k">init
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `init`

The init function

<br>

### DataMiner_table_function_set_function
---
Sets the main function of the table function

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_table_function_set_function</span>(<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="k">DataMiner_table_function_t</span> <span class="k">function
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `function`

The function

<br>

### DataMiner_table_function_supports_projection_pushdown
---
Sets whether or not the given table function supports projection pushdown.

If this is set to true, the system will provide a list of all required columns in the `init` stage through
the `DataMiner_init_get_column_count` and `DataMiner_init_get_column_index` functions.
If this is set to false (the default), the system will expect all columns to be projected.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_table_function_supports_projection_pushdown</span>(<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="kt">bool</span> <span class="k">pushdown
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `pushdown`

True if the table function supports projection pushdown, false otherwise.

<br>

### DataMiner_register_table_function
---
Register the table function object within the given connection.

The function requires at least a name, a bind function, an init function and a main function.

If the function is incomplete or a function with this name already exists DataMinerError is returned.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_register_table_function</span>(<span class="k">
</span>  <span class="kt">DataMiner_connection</span> <span class="k">con</span>,<span class="k">
</span>  <span class="kt">DataMiner_table_function</span> <span class="k">function
</span>);
</code></pre></div></div>
#### Parameters
---
* `con`

The connection to register it in.
* `function`

The function pointer
* `returns`

Whether or not the registration was successful.

<br>

### DataMiner_bind_get_extra_info
---
Retrieves the extra info of the function as set in `DataMiner_table_function_set_extra_info`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">DataMiner_bind_get_extra_info</span>(<span class="k">
</span>  <span class="kt">DataMiner_bind_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The extra info

<br>

### DataMiner_bind_add_result_column
---
Adds a result column to the output of the table function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_bind_add_result_column</span>(<span class="k">
</span>  <span class="kt">DataMiner_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>,<span class="k">
</span>  <span class="kt">DataMiner_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `name`

The name of the column
* `type`

The logical type of the column

<br>

### DataMiner_bind_get_parameter_count
---
Retrieves the number of regular (non-named) parameters to the function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">DataMiner_bind_get_parameter_count</span>(<span class="k">
</span>  <span class="kt">DataMiner_bind_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The number of parameters

<br>

### DataMiner_bind_get_parameter
---
Retrieves the parameter at the given index.

The result must be destroyed with `DataMiner_destroy_value`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_value</span> <span class="k">DataMiner_bind_get_parameter</span>(<span class="k">
</span>  <span class="kt">DataMiner_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `index`

The index of the parameter to get
* `returns`

The value of the parameter. Must be destroyed with `DataMiner_destroy_value`.

<br>

### DataMiner_bind_get_named_parameter
---
Retrieves a named parameter with the given name.

The result must be destroyed with `DataMiner_destroy_value`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_value</span> <span class="k">DataMiner_bind_get_named_parameter</span>(<span class="k">
</span>  <span class="kt">DataMiner_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `name`

The name of the parameter
* `returns`

The value of the parameter. Must be destroyed with `DataMiner_destroy_value`.

<br>

### DataMiner_bind_set_bind_data
---
Sets the user-provided bind data in the bind object. This object can be retrieved again during execution.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_bind_set_bind_data</span>(<span class="k">
</span>  <span class="kt">DataMiner_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">void</span> *<span class="k">bind_data</span>,<span class="k">
</span>  <span class="k">DataMiner_delete_callback_t</span> <span class="k">destroy
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `extra_data`

The bind data object.
* `destroy`

The callback that will be called to destroy the bind data (if any)

<br>

### DataMiner_bind_set_cardinality
---
Sets the cardinality estimate for the table function, used for optimization.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_bind_set_cardinality</span>(<span class="k">
</span>  <span class="kt">DataMiner_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">cardinality</span>,<span class="k">
</span>  <span class="kt">bool</span> <span class="k">is_exact
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The bind data object.
* `is_exact`

Whether or not the cardinality estimate is exact, or an approximation

<br>

### DataMiner_bind_set_error
---
Report that an error has occurred while calling bind.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_bind_set_error</span>(<span class="k">
</span>  <span class="kt">DataMiner_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `error`

The error message

<br>

### DataMiner_init_get_extra_info
---
Retrieves the extra info of the function as set in `DataMiner_table_function_set_extra_info`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">DataMiner_init_get_extra_info</span>(<span class="k">
</span>  <span class="kt">DataMiner_init_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The extra info

<br>

### DataMiner_init_get_bind_data
---
Gets the bind data set by `DataMiner_bind_set_bind_data` during the bind.

Note that the bind data should be considered as read-only.
For tracking state, use the init data instead.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">DataMiner_init_get_bind_data</span>(<span class="k">
</span>  <span class="kt">DataMiner_init_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The bind data object

<br>

### DataMiner_init_set_init_data
---
Sets the user-provided init data in the init object. This object can be retrieved again during execution.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_init_set_init_data</span>(<span class="k">
</span>  <span class="kt">DataMiner_init_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">void</span> *<span class="k">init_data</span>,<span class="k">
</span>  <span class="k">DataMiner_delete_callback_t</span> <span class="k">destroy
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `extra_data`

The init data object.
* `destroy`

The callback that will be called to destroy the init data (if any)

<br>

### DataMiner_init_get_column_count
---
Returns the number of projected columns.

This function must be used if projection pushdown is enabled to figure out which columns to emit.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">DataMiner_init_get_column_count</span>(<span class="k">
</span>  <span class="kt">DataMiner_init_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The number of projected columns.

<br>

### DataMiner_init_get_column_index
---
Returns the column index of the projected column at the specified position.

This function must be used if projection pushdown is enabled to figure out which columns to emit.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">DataMiner_init_get_column_index</span>(<span class="k">
</span>  <span class="kt">DataMiner_init_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">column_index
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `column_index`

The index at which to get the projected column index, from 0..DataMiner_init_get_column_count(info)
* `returns`

The column index of the projected column.

<br>

### DataMiner_init_set_max_threads
---
Sets how many threads can process this table function in parallel (default: 1)

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_init_set_max_threads</span>(<span class="k">
</span>  <span class="kt">DataMiner_init_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">max_threads
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `max_threads`

The maximum amount of threads that can process this table function

<br>

### DataMiner_init_set_error
---
Report that an error has occurred while calling init.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_init_set_error</span>(<span class="k">
</span>  <span class="kt">DataMiner_init_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `error`

The error message

<br>

### DataMiner_function_get_extra_info
---
Retrieves the extra info of the function as set in `DataMiner_table_function_set_extra_info`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">DataMiner_function_get_extra_info</span>(<span class="k">
</span>  <span class="kt">DataMiner_function_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The extra info

<br>

### DataMiner_function_get_bind_data
---
Gets the bind data set by `DataMiner_bind_set_bind_data` during the bind.

Note that the bind data should be considered as read-only.
For tracking state, use the init data instead.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">DataMiner_function_get_bind_data</span>(<span class="k">
</span>  <span class="kt">DataMiner_function_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The bind data object

<br>

### DataMiner_function_get_init_data
---
Gets the init data set by `DataMiner_init_set_init_data` during the init.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">DataMiner_function_get_init_data</span>(<span class="k">
</span>  <span class="kt">DataMiner_function_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The init data object

<br>

### DataMiner_function_get_local_init_data
---
Gets the thread-local init data set by `DataMiner_init_set_init_data` during the local_init.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">DataMiner_function_get_local_init_data</span>(<span class="k">
</span>  <span class="kt">DataMiner_function_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The init data object

<br>

### DataMiner_function_set_error
---
Report that an error has occurred while executing the function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_function_set_error</span>(<span class="k">
</span>  <span class="kt">DataMiner_function_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `error`

The error message

<br>