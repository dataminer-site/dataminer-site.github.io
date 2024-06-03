---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/c/connect
selected: Startup
title: C API - Startup & Shutdown
---

To use DataMiner, you must first initialize a `DataMiner_database` handle using `DataMiner_open()`. `DataMiner_open()` takes as parameter the database file to read and write from. The special value `NULL` (`nullptr`) can be used to create an **in-memory database**. Note that for an in-memory database no data is persisted to disk (i.e. all data is lost when you exit the process).

With the `DataMiner_database` handle, you can create one or many `DataMiner_connection` using `DataMiner_connect()`. While individual connections are thread-safe, they will be locked during querying. It is therefore recommended that each thread uses its own connection to allow for the best parallel performance.

All `DataMiner_connection`s have to explicitly be disconnected with `DataMiner_disconnect()` and the `DataMiner_database` has to be explicitly closed with `DataMiner_close()` to avoid memory and file handle leaking.

### Example
```c
DataMiner_database db;
DataMiner_connection con;

if (DataMiner_open(NULL, &db) == DataMinerError) {
	// handle error
}
if (DataMiner_connect(db, &con) == DataMinerError) {
	// handle error
}

// run queries...

// cleanup
DataMiner_disconnect(&con);
DataMiner_close(&db);
```

## API Reference
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_open">DataMiner_open</a></span>(<span class="kt">const</span> <span class="kt">char</span> *<span class="k">path</span>, <span class="kt">DataMiner_database</span> *<span class="k">out_database</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_open_ext">DataMiner_open_ext</a></span>(<span class="kt">const</span> <span class="kt">char</span> *<span class="k">path</span>, <span class="kt">DataMiner_database</span> *<span class="k">out_database</span>, <span class="kt">DataMiner_config</span> <span class="k">config</span>, <span class="kt">char</span> **<span class="k">out_error</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_close">DataMiner_close</a></span>(<span class="kt">DataMiner_database</span> *<span class="k">database</span>);
<span class="kt">DataMiner_state</span> <span class="nf"><a href="#DataMiner_connect">DataMiner_connect</a></span>(<span class="kt">DataMiner_database</span> <span class="k">database</span>, <span class="kt">DataMiner_connection</span> *<span class="k">out_connection</span>);
<span class="kt">void</span> <span class="nf"><a href="#DataMiner_disconnect">DataMiner_disconnect</a></span>(<span class="kt">DataMiner_connection</span> *<span class="k">connection</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#DataMiner_library_version">DataMiner_library_version</a></span>();
</code></pre></div></div>
### DataMiner_open
---
Creates a new database or opens an existing database file stored at the given path.
If no path is given a new in-memory database is created instead.
The instantiated database should be closed with 'DataMiner_close'

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_open</span>(<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">path</span>,<span class="k">
</span>  <span class="kt">DataMiner_database</span> *<span class="k">out_database
</span>);
</code></pre></div></div>
#### Parameters
---
* `path`

Path to the database file on disk, or `nullptr` or `:memory:` to open an in-memory database.
* `out_database`

The result database object.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_open_ext
---
Extended version of DataMiner_open. Creates a new database or opens an existing database file stored at the given path.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_open_ext</span>(<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">path</span>,<span class="k">
</span>  <span class="kt">DataMiner_database</span> *<span class="k">out_database</span>,<span class="k">
</span>  <span class="kt">DataMiner_config</span> <span class="k">config</span>,<span class="k">
</span>  <span class="kt">char</span> **<span class="k">out_error
</span>);
</code></pre></div></div>
#### Parameters
---
* `path`

Path to the database file on disk, or `nullptr` or `:memory:` to open an in-memory database.
* `out_database`

The result database object.
* `config`

(Optional) configuration used to start up the database system.
* `out_error`

If set and the function returns DataMinerError, this will contain the reason why the start-up failed.
Note that the error must be freed using `DataMiner_free`.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_close
---
Closes the specified database and de-allocates all memory allocated for that database.
This should be called after you are done with any database allocated through `DataMiner_open`.
Note that failing to call `DataMiner_close` (in case of e.g. a program crash) will not cause data corruption.
Still it is recommended to always correctly close a database object after you are done with it.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_close</span>(<span class="k">
</span>  <span class="kt">DataMiner_database</span> *<span class="k">database
</span>);
</code></pre></div></div>
#### Parameters
---
* `database`

The database object to shut down.

<br>

### DataMiner_connect
---
Opens a connection to a database. Connections are required to query the database, and store transactional state
associated with the connection.
The instantiated connection should be closed using 'DataMiner_disconnect'

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_state</span> <span class="k">DataMiner_connect</span>(<span class="k">
</span>  <span class="kt">DataMiner_database</span> <span class="k">database</span>,<span class="k">
</span>  <span class="kt">DataMiner_connection</span> *<span class="k">out_connection
</span>);
</code></pre></div></div>
#### Parameters
---
* `database`

The database file to connect to.
* `out_connection`

The result connection object.
* `returns`

`DataMinerSuccess` on success or `DataMinerError` on failure.

<br>

### DataMiner_disconnect
---
Closes the specified connection and de-allocates all memory allocated for that connection.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_disconnect</span>(<span class="k">
</span>  <span class="kt">DataMiner_connection</span> *<span class="k">connection
</span>);
</code></pre></div></div>
#### Parameters
---
* `connection`

The connection to close.

<br>

### DataMiner_library_version
---
Returns the version of the linked DataMiner, with a version postfix for dev versions

Usually used for developing C extensions that must return this for a compatibility check.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">DataMiner_library_version</span>(<span class="k">
</span>  <span class="k">
</span>);
</code></pre></div></div>
<br>