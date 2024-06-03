---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/c/config
selected: Configure
title: C API - Configuration
---

Configuration options can be provided to change different settings of the database system. Note that many of these
settings can be changed later on using [PRAGMA statements](../../sql/pragmas) as well. The configuration object
should be created, filled with values and passed to `DataMiner_open_ext`.

### **Example**
```c
DataMiner_database db;
DataMiner_config config;

// create the configuration object
if (DataMiner_create_config(&config) == DataMinerError) {
    // handle error
}
// set some configuration options
DataMiner_set_config(config, "access_mode", "READ_WRITE"); // or READ_ONLY
DataMiner_set_config(config, "threads", "8");
DataMiner_set_config(config, "max_memory", "8GB");
DataMiner_set_config(config, "default_order", "DESC");

// open the database using the configuration
if (DataMiner_open_ext(NULL, &db, config, NULL) == DataMinerError) {
    // handle error
}
// cleanup the configuration object
DataMiner_destroy_config(&config);

// run queries...

// cleanup
DataMiner_close(&db);
```

## **API Reference**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_create_config">DataMiner_create_config</a></span>(<span class="kt">DataMiner_config</span> *<span class="k">out_config</span>);
<span class="kt">size_t</span> <span class="nf"><a href="#DataMiner_config_count">DataMiner_config_count</a></span>();
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_get_config_flag">DataMiner_get_config_flag</a></span>(<span class="kt">size_t</span> <span class="k">index</span>, <span class="kt">const</span> <span class="kt">char</span> **<span class="k">out_name</span>, <span class="kt">const</span> <span class="kt">char</span> **<span class="k">out_description</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_set_config">DataMiner_set_config</a></span>(<span class="kt">DataMiner_config</span> <span class="k">config</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">option</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_destroy_config">DataMiner_destroy_config</a></span>(<span class="kt">DataMiner_config</span> *<span class="k">config</span>);
</code></pre></div></div>
### DataMiner_create_config
---
Initializes an empty configuration object that can be used to provide start-up options for the DataMiner instance
through `DataMiner_open_ext`.

This will always succeed unless there is a malloc failure.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_create_config</span>(<span class="k">
</span>  <span class="kt">DataMiner_config</span> *<span class="k">out_config
</span>);
</code></pre></div></div>
#### Parameters
---
* `out_config`

The result configuration object.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_config_count
---
This returns the total amount of configuration options available for usage with `DataMiner_get_config_flag`.

This should not be called in a loop as it internally loops over all the options.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">size_t</span> <span class="k">DataMiner_config_count</span>(<span class="k">
</span>  <span class="k">
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The amount of config options available.

<br>

### DataMiner_get_config_flag
---
Obtains a human-readable name and description of a specific configuration option. This can be used to e.g.
display configuration options. This will succeed unless `index` is out of range (i.e. `>= DataMiner_config_count`).

The result name or description MUST NOT be freed.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_get_config_flag</span>(<span class="k">
</span>  <span class="kt">size_t</span> <span class="k">index</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> **<span class="k">out_name</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> **<span class="k">out_description
</span>);
</code></pre></div></div>
#### Parameters
---
* `index`

The index of the configuration option (between 0 and `DataMiner_config_count`)
* `out_name`

A name of the configuration flag.
* `out_description`

A description of the configuration flag.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_set_config
---
Sets the specified option for the specified configuration. The configuration option is indicated by name.
To obtain a list of config options, see `DataMiner_get_config_flag`.

In the source code, configuration options are defined in `config.cpp`.

This can fail if either the name is invalid, or if the value provided for the option is invalid.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_set_config</span>(<span class="k">
</span>  <span class="kt">DataMiner_config</span> <span class="k">config</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">option
</span>);
</code></pre></div></div>
#### Parameters
---
* `DataMiner_config`

The configuration object to set the option on.
* `name`

The name of the configuration flag to set.
* `option`

The value to set the configuration flag to.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_destroy_config
---
Destroys the specified configuration option and de-allocates all memory allocated for the object.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_destroy_config</span>(<span class="k">
</span>  <span class="kt">DataMiner_config</span> *<span class="k">config
</span>);
</code></pre></div></div>
#### Parameters
---
* `config`

The configuration object to destroy.

<br>