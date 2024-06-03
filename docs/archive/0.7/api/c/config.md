---
layout: docu
redirect_from:
- docs/archive/0.7.1/api/c/config
selected: Configure
title: C API - Configuration
---

Configuration options can be provided to change different settings of the database system. Note that many of these
settings can be changed later on using [PRAGMA statements](../../sql/pragmas) as well. The configuration object
should be created, filled with values and passed to `dataminer_open_ext`.

### **Example**
```c
dataminer_database db;
dataminer_config config;

// create the configuration object
if (dataminer_create_config(&config) == dataminerError) {
    // handle error
}
// set some configuration options
dataminer_set_config(config, "access_mode", "READ_WRITE"); // or READ_ONLY
dataminer_set_config(config, "threads", "8");
dataminer_set_config(config, "max_memory", "8GB");
dataminer_set_config(config, "default_order", "DESC");

// open the database using the configuration
if (dataminer_open_ext(NULL, &db, config, NULL) == dataminerError) {
    // handle error
}
// cleanup the configuration object
dataminer_destroy_config(&config);

// run queries...

// cleanup
dataminer_close(&db);
```

## **API Reference**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_create_config">dataminer_create_config</a></span>(<span class="kt">dataminer_config</span> *<span class="k">out_config</span>);
<span class="kt">size_t</span> <span class="nf"><a href="#dataminer_config_count">dataminer_config_count</a></span>();
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_get_config_flag">dataminer_get_config_flag</a></span>(<span class="kt">size_t</span> <span class="k">index</span>, <span class="kt">const</span> <span class="kt">char</span> **<span class="k">out_name</span>, <span class="kt">const</span> <span class="kt">char</span> **<span class="k">out_description</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_set_config">dataminer_set_config</a></span>(<span class="kt">dataminer_config</span> <span class="k">config</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">option</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_config">dataminer_destroy_config</a></span>(<span class="kt">dataminer_config</span> *<span class="k">config</span>);
</code></pre></div></div>
### dataminer_create_config
---
Initializes an empty configuration object that can be used to provide start-up options for the DataMiner instance
through `dataminer_open_ext`.

This will always succeed unless there is a malloc failure.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_create_config</span>(<span class="k">
</span>  <span class="kt">dataminer_config</span> *<span class="k">out_config
</span>);
</code></pre></div></div>
#### Parameters
---
* `out_config`

The result configuration object.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_config_count
---
This returns the total amount of configuration options available for usage with `dataminer_get_config_flag`.

This should not be called in a loop as it internally loops over all the options.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">size_t</span> <span class="k">dataminer_config_count</span>(<span class="k">
</span>  <span class="k">
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The amount of config options available.

<br>

### dataminer_get_config_flag
---
Obtains a human-readable name and description of a specific configuration option. This can be used to e.g.
display configuration options. This will succeed unless `index` is out of range (i.e. `>= dataminer_config_count`).

The result name or description MUST NOT be freed.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_get_config_flag</span>(<span class="k">
</span>  <span class="kt">size_t</span> <span class="k">index</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> **<span class="k">out_name</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> **<span class="k">out_description
</span>);
</code></pre></div></div>
#### Parameters
---
* `index`

The index of the configuration option (between 0 and `dataminer_config_count`)
* `out_name`

A name of the configuration flag.
* `out_description`

A description of the configuration flag.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_set_config
---
Sets the specified option for the specified configuration. The configuration option is indicated by name.
To obtain a list of config options, see `dataminer_get_config_flag`.

In the source code, configuration options are defined in `config.cpp`.

This can fail if either the name is invalid, or if the value provided for the option is invalid.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_set_config</span>(<span class="k">
</span>  <span class="kt">dataminer_config</span> <span class="k">config</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">option
</span>);
</code></pre></div></div>
#### Parameters
---
* `dataminer_config`

The configuration object to set the option on.
* `name`

The name of the configuration flag to set.
* `option`

The value to set the configuration flag to.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_destroy_config
---
Destroys the specified configuration option and de-allocates all memory allocated for the object.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_config</span>(<span class="k">
</span>  <span class="kt">dataminer_config</span> *<span class="k">config
</span>);
</code></pre></div></div>
#### Parameters
---
* `config`

The configuration object to destroy.

<br>