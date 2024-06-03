---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/nodejs/reference
selected: Client APIs
title: NodeJS API
---

## Modules

<dl>
<dt><a href="#module_DataMiner">DataMiner</a></dt>
<dd></dd>
</dl>

## Typedefs

<dl>
<dt><a href="#DataMinerError">DataMinerError</a> : <code>object</code></dt>
<dd></dd>
<dt><a href="#HTTPError">HTTPError</a> : <code>object</code></dt>
<dd></dd>
</dl>

<a name="module_DataMiner"></a>

## DataMiner
**Summary**: these jsdoc annotations are still a work in progress - feedback and suggestions are welcome!  

* [DataMiner](#module_DataMiner)
    * [~Connection](#module_DataMiner..Connection)
        * [.run(sql, ...params, callback)](#module_DataMiner..Connection+run) ⇒ <code>void</code>
        * [.all(sql, ...params, callback)](#module_DataMiner..Connection+all) ⇒ <code>void</code>
        * [.arrowIPCAll(sql, ...params, callback)](#module_DataMiner..Connection+arrowIPCAll) ⇒ <code>void</code>
        * [.arrowIPCStream(sql, ...params, callback)](#module_DataMiner..Connection+arrowIPCStream) ⇒
        * [.each(sql, ...params, callback)](#module_DataMiner..Connection+each) ⇒ <code>void</code>
        * [.stream(sql, ...params)](#module_DataMiner..Connection+stream)
        * [.register_udf(name, return_type, fun)](#module_DataMiner..Connection+register_udf) ⇒ <code>void</code>
        * [.prepare(sql, ...params, callback)](#module_DataMiner..Connection+prepare) ⇒ <code>Statement</code>
        * [.exec(sql, ...params, callback)](#module_DataMiner..Connection+exec) ⇒ <code>void</code>
        * [.register_udf_bulk(name, return_type, callback)](#module_DataMiner..Connection+register_udf_bulk) ⇒ <code>void</code>
        * [.unregister_udf(name, return_type, callback)](#module_DataMiner..Connection+unregister_udf) ⇒ <code>void</code>
        * [.register_buffer(name, array, force, callback)](#module_DataMiner..Connection+register_buffer) ⇒ <code>void</code>
        * [.unregister_buffer(name, callback)](#module_DataMiner..Connection+unregister_buffer) ⇒ <code>void</code>
    * [~Statement](#module_DataMiner..Statement)
        * [.sql](#module_DataMiner..Statement+sql) ⇒
        * [.get()](#module_DataMiner..Statement+get)
        * [.run(sql, ...params, callback)](#module_DataMiner..Statement+run) ⇒ <code>void</code>
        * [.all(sql, ...params, callback)](#module_DataMiner..Statement+all) ⇒ <code>void</code>
        * [.arrowIPCAll(sql, ...params, callback)](#module_DataMiner..Statement+arrowIPCAll) ⇒ <code>void</code>
        * [.each(sql, ...params, callback)](#module_DataMiner..Statement+each) ⇒ <code>void</code>
        * [.finalize(sql, ...params, callback)](#module_DataMiner..Statement+finalize) ⇒ <code>void</code>
        * [.stream(sql, ...params)](#module_DataMiner..Statement+stream)
    * [~QueryResult](#module_DataMiner..QueryResult)
        * [.nextChunk()](#module_DataMiner..QueryResult+nextChunk) ⇒
        * [.nextIpcBuffer()](#module_DataMiner..QueryResult+nextIpcBuffer) ⇒
        * [.asyncIterator()](#module_DataMiner..QueryResult+asyncIterator)
    * [~Database](#module_DataMiner..Database)
        * [.close(callback)](#module_DataMiner..Database+close) ⇒ <code>void</code>
        * [.close_internal(callback)](#module_DataMiner..Database+close_internal) ⇒ <code>void</code>
        * [.wait(callback)](#module_DataMiner..Database+wait) ⇒ <code>void</code>
        * [.serialize(callback)](#module_DataMiner..Database+serialize) ⇒ <code>void</code>
        * [.parallelize(callback)](#module_DataMiner..Database+parallelize) ⇒ <code>void</code>
        * [.connect(path)](#module_DataMiner..Database+connect) ⇒ <code>Connection</code>
        * [.interrupt(callback)](#module_DataMiner..Database+interrupt) ⇒ <code>void</code>
        * [.prepare(sql)](#module_DataMiner..Database+prepare) ⇒ <code>Statement</code>
        * [.run(sql, ...params, callback)](#module_DataMiner..Database+run) ⇒ <code>void</code>
        * [.scanArrowIpc(sql, ...params, callback)](#module_DataMiner..Database+scanArrowIpc) ⇒ <code>void</code>
        * [.each(sql, ...params, callback)](#module_DataMiner..Database+each) ⇒ <code>void</code>
        * [.all(sql, ...params, callback)](#module_DataMiner..Database+all) ⇒ <code>void</code>
        * [.arrowIPCAll(sql, ...params, callback)](#module_DataMiner..Database+arrowIPCAll) ⇒ <code>void</code>
        * [.arrowIPCStream(sql, ...params, callback)](#module_DataMiner..Database+arrowIPCStream) ⇒ <code>void</code>
        * [.exec(sql, ...params, callback)](#module_DataMiner..Database+exec) ⇒ <code>void</code>
        * [.register_udf(name, return_type, fun)](#module_DataMiner..Database+register_udf) ⇒ <code>this</code>
        * [.register_buffer(name)](#module_DataMiner..Database+register_buffer) ⇒ <code>this</code>
        * [.unregister_buffer(name)](#module_DataMiner..Database+unregister_buffer) ⇒ <code>this</code>
        * [.unregister_udf(name)](#module_DataMiner..Database+unregister_udf) ⇒ <code>this</code>
        * [.registerReplacementScan(fun)](#module_DataMiner..Database+registerReplacementScan) ⇒ <code>this</code>
        * [.get()](#module_DataMiner..Database+get)
    * [~ERROR](#module_DataMiner..ERROR) : <code>number</code>
    * [~OPEN_READONLY](#module_DataMiner..OPEN_READONLY) : <code>number</code>
    * [~OPEN_READWRITE](#module_DataMiner..OPEN_READWRITE) : <code>number</code>
    * [~OPEN_CREATE](#module_DataMiner..OPEN_CREATE) : <code>number</code>
    * [~OPEN_FULLMUTEX](#module_DataMiner..OPEN_FULLMUTEX) : <code>number</code>
    * [~OPEN_SHAREDCACHE](#module_DataMiner..OPEN_SHAREDCACHE) : <code>number</code>
    * [~OPEN_PRIVATECACHE](#module_DataMiner..OPEN_PRIVATECACHE) : <code>number</code>

<a name="module_DataMiner..Connection"></a>

### DataMiner~Connection
**Kind**: inner class of [<code>DataMiner</code>](#module_DataMiner)  

* [~Connection](#module_DataMiner..Connection)
    * [.run(sql, ...params, callback)](#module_DataMiner..Connection+run) ⇒ <code>void</code>
    * [.all(sql, ...params, callback)](#module_DataMiner..Connection+all) ⇒ <code>void</code>
    * [.arrowIPCAll(sql, ...params, callback)](#module_DataMiner..Connection+arrowIPCAll) ⇒ <code>void</code>
    * [.arrowIPCStream(sql, ...params, callback)](#module_DataMiner..Connection+arrowIPCStream) ⇒
    * [.each(sql, ...params, callback)](#module_DataMiner..Connection+each) ⇒ <code>void</code>
    * [.stream(sql, ...params)](#module_DataMiner..Connection+stream)
    * [.register_udf(name, return_type, fun)](#module_DataMiner..Connection+register_udf) ⇒ <code>void</code>
    * [.prepare(sql, ...params, callback)](#module_DataMiner..Connection+prepare) ⇒ <code>Statement</code>
    * [.exec(sql, ...params, callback)](#module_DataMiner..Connection+exec) ⇒ <code>void</code>
    * [.register_udf_bulk(name, return_type, callback)](#module_DataMiner..Connection+register_udf_bulk) ⇒ <code>void</code>
    * [.unregister_udf(name, return_type, callback)](#module_DataMiner..Connection+unregister_udf) ⇒ <code>void</code>
    * [.register_buffer(name, array, force, callback)](#module_DataMiner..Connection+register_buffer) ⇒ <code>void</code>
    * [.unregister_buffer(name, callback)](#module_DataMiner..Connection+unregister_buffer) ⇒ <code>void</code>

<a name="module_DataMiner..Connection+run"></a>

#### connection.run(sql, ...params, callback) ⇒ <code>void</code>
Run a SQL statement and trigger a callback when done

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Connection+all"></a>

#### connection.all(sql, ...params, callback) ⇒ <code>void</code>
Run a SQL query and triggers the callback once for all result rows

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Connection+arrowIPCAll"></a>

#### connection.arrowIPCAll(sql, ...params, callback) ⇒ <code>void</code>
Run a SQL query and serialize the result into the Apache Arrow IPC format (requires arrow extension to be loaded)

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Connection+arrowIPCStream"></a>

#### connection.arrowIPCStream(sql, ...params, callback) ⇒
Run a SQL query, returns a IpcResultStreamIterator that allows streaming the result into the Apache Arrow IPC format
(requires arrow extension to be loaded)

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  
**Returns**: Promise<IpcResultStreamIterator>  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Connection+each"></a>

#### connection.each(sql, ...params, callback) ⇒ <code>void</code>
Runs a SQL query and triggers the callback for each result row

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Connection+stream"></a>

#### connection.stream(sql, ...params)
**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 

<a name="module_DataMiner..Connection+register_udf"></a>

#### connection.register\_udf(name, return_type, fun) ⇒ <code>void</code>
Register a User Defined Function

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  
**Note**: this follows the wasm udfs somewhat but is simpler because we can pass data much more cleanly  

| Param |
| --- |
| name | 
| return_type | 
| fun | 

<a name="module_DataMiner..Connection+prepare"></a>

#### connection.prepare(sql, ...params, callback) ⇒ <code>Statement</code>
Prepare a SQL query for execution

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Connection+exec"></a>

#### connection.exec(sql, ...params, callback) ⇒ <code>void</code>
Execute a SQL query

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Connection+register_udf_bulk"></a>

#### connection.register\_udf\_bulk(name, return_type, callback) ⇒ <code>void</code>
Register a User Defined Function

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param |
| --- |
| name | 
| return_type | 
| callback | 

<a name="module_DataMiner..Connection+unregister_udf"></a>

#### connection.unregister\_udf(name, return_type, callback) ⇒ <code>void</code>
Unregister a User Defined Function

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param |
| --- |
| name | 
| return_type | 
| callback | 

<a name="module_DataMiner..Connection+register_buffer"></a>

#### connection.register\_buffer(name, array, force, callback) ⇒ <code>void</code>
Register a Buffer to be scanned using the Apache Arrow IPC scanner
(requires arrow extension to be loaded)

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param |
| --- |
| name | 
| array | 
| force | 
| callback | 

<a name="module_DataMiner..Connection+unregister_buffer"></a>

#### connection.unregister\_buffer(name, callback) ⇒ <code>void</code>
Unregister the Buffer

**Kind**: instance method of [<code>Connection</code>](#module_DataMiner..Connection)  

| Param |
| --- |
| name | 
| callback | 

<a name="module_DataMiner..Statement"></a>

### DataMiner~Statement
**Kind**: inner class of [<code>DataMiner</code>](#module_DataMiner)  

* [~Statement](#module_DataMiner..Statement)
    * [.sql](#module_DataMiner..Statement+sql) ⇒
    * [.get()](#module_DataMiner..Statement+get)
    * [.run(sql, ...params, callback)](#module_DataMiner..Statement+run) ⇒ <code>void</code>
    * [.all(sql, ...params, callback)](#module_DataMiner..Statement+all) ⇒ <code>void</code>
    * [.arrowIPCAll(sql, ...params, callback)](#module_DataMiner..Statement+arrowIPCAll) ⇒ <code>void</code>
    * [.each(sql, ...params, callback)](#module_DataMiner..Statement+each) ⇒ <code>void</code>
    * [.finalize(sql, ...params, callback)](#module_DataMiner..Statement+finalize) ⇒ <code>void</code>
    * [.stream(sql, ...params)](#module_DataMiner..Statement+stream)

<a name="module_DataMiner..Statement+sql"></a>

#### statement.sql ⇒
**Kind**: instance property of [<code>Statement</code>](#module_DataMiner..Statement)  
**Returns**: sql contained in statement  
**Field**:   
<a name="module_DataMiner..Statement+get"></a>

#### statement.get()
Not implemented

**Kind**: instance method of [<code>Statement</code>](#module_DataMiner..Statement)  
<a name="module_DataMiner..Statement+run"></a>

#### statement.run(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Statement</code>](#module_DataMiner..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Statement+all"></a>

#### statement.all(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Statement</code>](#module_DataMiner..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Statement+arrowIPCAll"></a>

#### statement.arrowIPCAll(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Statement</code>](#module_DataMiner..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Statement+each"></a>

#### statement.each(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Statement</code>](#module_DataMiner..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Statement+finalize"></a>

#### statement.finalize(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Statement</code>](#module_DataMiner..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Statement+stream"></a>

#### statement.stream(sql, ...params)
**Kind**: instance method of [<code>Statement</code>](#module_DataMiner..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 

<a name="module_DataMiner..QueryResult"></a>

### DataMiner~QueryResult
**Kind**: inner class of [<code>DataMiner</code>](#module_DataMiner)  

* [~QueryResult](#module_DataMiner..QueryResult)
    * [.nextChunk()](#module_DataMiner..QueryResult+nextChunk) ⇒
    * [.nextIpcBuffer()](#module_DataMiner..QueryResult+nextIpcBuffer) ⇒
    * [.asyncIterator()](#module_DataMiner..QueryResult+asyncIterator)

<a name="module_DataMiner..QueryResult+nextChunk"></a>

#### queryResult.nextChunk() ⇒
**Kind**: instance method of [<code>QueryResult</code>](#module_DataMiner..QueryResult)  
**Returns**: data chunk  
<a name="module_DataMiner..QueryResult+nextIpcBuffer"></a>

#### queryResult.nextIpcBuffer() ⇒
Function to fetch the next result blob of an Arrow IPC Stream in a zero-copy way.
(requires arrow extension to be loaded)

**Kind**: instance method of [<code>QueryResult</code>](#module_DataMiner..QueryResult)  
**Returns**: data chunk  
<a name="module_DataMiner..QueryResult+asyncIterator"></a>

#### queryResult.asyncIterator()
**Kind**: instance method of [<code>QueryResult</code>](#module_DataMiner..QueryResult)  
<a name="module_DataMiner..Database"></a>

### DataMiner~Database
Main database interface

**Kind**: inner property of [<code>DataMiner</code>](#module_DataMiner)  

| Param | Description |
| --- | --- |
| path | path to database file or :memory: for in-memory database |
| access_mode | access mode |
| config | the configuration object |
| callback | callback function |


* [~Database](#module_DataMiner..Database)
    * [.close(callback)](#module_DataMiner..Database+close) ⇒ <code>void</code>
    * [.close_internal(callback)](#module_DataMiner..Database+close_internal) ⇒ <code>void</code>
    * [.wait(callback)](#module_DataMiner..Database+wait) ⇒ <code>void</code>
    * [.serialize(callback)](#module_DataMiner..Database+serialize) ⇒ <code>void</code>
    * [.parallelize(callback)](#module_DataMiner..Database+parallelize) ⇒ <code>void</code>
    * [.connect(path)](#module_DataMiner..Database+connect) ⇒ <code>Connection</code>
    * [.interrupt(callback)](#module_DataMiner..Database+interrupt) ⇒ <code>void</code>
    * [.prepare(sql)](#module_DataMiner..Database+prepare) ⇒ <code>Statement</code>
    * [.run(sql, ...params, callback)](#module_DataMiner..Database+run) ⇒ <code>void</code>
    * [.scanArrowIpc(sql, ...params, callback)](#module_DataMiner..Database+scanArrowIpc) ⇒ <code>void</code>
    * [.each(sql, ...params, callback)](#module_DataMiner..Database+each) ⇒ <code>void</code>
    * [.all(sql, ...params, callback)](#module_DataMiner..Database+all) ⇒ <code>void</code>
    * [.arrowIPCAll(sql, ...params, callback)](#module_DataMiner..Database+arrowIPCAll) ⇒ <code>void</code>
    * [.arrowIPCStream(sql, ...params, callback)](#module_DataMiner..Database+arrowIPCStream) ⇒ <code>void</code>
    * [.exec(sql, ...params, callback)](#module_DataMiner..Database+exec) ⇒ <code>void</code>
    * [.register_udf(name, return_type, fun)](#module_DataMiner..Database+register_udf) ⇒ <code>this</code>
    * [.register_buffer(name)](#module_DataMiner..Database+register_buffer) ⇒ <code>this</code>
    * [.unregister_buffer(name)](#module_DataMiner..Database+unregister_buffer) ⇒ <code>this</code>
    * [.unregister_udf(name)](#module_DataMiner..Database+unregister_udf) ⇒ <code>this</code>
    * [.registerReplacementScan(fun)](#module_DataMiner..Database+registerReplacementScan) ⇒ <code>this</code>
    * [.get()](#module_DataMiner..Database+get)

<a name="module_DataMiner..Database+close"></a>

#### database.close(callback) ⇒ <code>void</code>
Closes database instance

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| callback | 

<a name="module_DataMiner..Database+close_internal"></a>

#### database.close\_internal(callback) ⇒ <code>void</code>
Internal method. Do not use, call Connection#close instead

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| callback | 

<a name="module_DataMiner..Database+wait"></a>

#### database.wait(callback) ⇒ <code>void</code>
Triggers callback when all scheduled database tasks have completed.

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| callback | 

<a name="module_DataMiner..Database+serialize"></a>

#### database.serialize(callback) ⇒ <code>void</code>
TODO: what does this do?

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| callback | 

<a name="module_DataMiner..Database+parallelize"></a>

#### database.parallelize(callback) ⇒ <code>void</code>
TODO: what does this do?

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| callback | 

<a name="module_DataMiner..Database+connect"></a>

#### database.connect(path) ⇒ <code>Connection</code>
Create a new database connection

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param | Description |
| --- | --- |
| path | the database to connect to, either a file path, or `:memory:` |

<a name="module_DataMiner..Database+interrupt"></a>

#### database.interrupt(callback) ⇒ <code>void</code>
Supposedly interrupt queries, but currently does not do anything.

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| callback | 

<a name="module_DataMiner..Database+prepare"></a>

#### database.prepare(sql) ⇒ <code>Statement</code>
Prepare a SQL query for execution

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| sql | 

<a name="module_DataMiner..Database+run"></a>

#### database.run(sql, ...params, callback) ⇒ <code>void</code>
Convenience method for Connection#run using a built-in default connection

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Database+scanArrowIpc"></a>

#### database.scanArrowIpc(sql, ...params, callback) ⇒ <code>void</code>
Convenience method for Connection#scanArrowIpc using a built-in default connection

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Database+each"></a>

#### database.each(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Database+all"></a>

#### database.all(sql, ...params, callback) ⇒ <code>void</code>
Convenience method for Connection#apply using a built-in default connection

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Database+arrowIPCAll"></a>

#### database.arrowIPCAll(sql, ...params, callback) ⇒ <code>void</code>
Convenience method for Connection#arrowIPCAll using a built-in default connection

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Database+arrowIPCStream"></a>

#### database.arrowIPCStream(sql, ...params, callback) ⇒ <code>void</code>
Convenience method for Connection#arrowIPCStream using a built-in default connection

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Database+exec"></a>

#### database.exec(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_DataMiner..Database+register_udf"></a>

#### database.register\_udf(name, return_type, fun) ⇒ <code>this</code>
Register a User Defined Function

Convenience method for Connection#register_udf

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| name | 
| return_type | 
| fun | 

<a name="module_DataMiner..Database+register_buffer"></a>

#### database.register\_buffer(name) ⇒ <code>this</code>
Register a buffer containing serialized data to be scanned from DataMiner.

Convenience method for Connection#unregister_buffer

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| name | 

<a name="module_DataMiner..Database+unregister_buffer"></a>

#### database.unregister\_buffer(name) ⇒ <code>this</code>
Unregister a Buffer

Convenience method for Connection#unregister_buffer

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| name | 

<a name="module_DataMiner..Database+unregister_udf"></a>

#### database.unregister\_udf(name) ⇒ <code>this</code>
Unregister a UDF

Convenience method for Connection#unregister_udf

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param |
| --- |
| name | 

<a name="module_DataMiner..Database+registerReplacementScan"></a>

#### database.registerReplacementScan(fun) ⇒ <code>this</code>
Register a table replace scan function

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  

| Param | Description |
| --- | --- |
| fun | Replacement scan function |

<a name="module_DataMiner..Database+get"></a>

#### database.get()
Not implemented

**Kind**: instance method of [<code>Database</code>](#module_DataMiner..Database)  
<a name="module_DataMiner..ERROR"></a>

### DataMiner~ERROR : <code>number</code>
Check that errno attribute equals this to check for a DataMiner error

**Kind**: inner constant of [<code>DataMiner</code>](#module_DataMiner)  
<a name="module_DataMiner..OPEN_READONLY"></a>

### DataMiner~OPEN\_READONLY : <code>number</code>
Open database in readonly mode

**Kind**: inner constant of [<code>DataMiner</code>](#module_DataMiner)  
<a name="module_DataMiner..OPEN_READWRITE"></a>

### DataMiner~OPEN\_READWRITE : <code>number</code>
Currently ignored

**Kind**: inner constant of [<code>DataMiner</code>](#module_DataMiner)  
<a name="module_DataMiner..OPEN_CREATE"></a>

### DataMiner~OPEN\_CREATE : <code>number</code>
Currently ignored

**Kind**: inner constant of [<code>DataMiner</code>](#module_DataMiner)  
<a name="module_DataMiner..OPEN_FULLMUTEX"></a>

### DataMiner~OPEN\_FULLMUTEX : <code>number</code>
Currently ignored

**Kind**: inner constant of [<code>DataMiner</code>](#module_DataMiner)  
<a name="module_DataMiner..OPEN_SHAREDCACHE"></a>

### DataMiner~OPEN\_SHAREDCACHE : <code>number</code>
Currently ignored

**Kind**: inner constant of [<code>DataMiner</code>](#module_DataMiner)  
<a name="module_DataMiner..OPEN_PRIVATECACHE"></a>

### DataMiner~OPEN\_PRIVATECACHE : <code>number</code>
Currently ignored

**Kind**: inner constant of [<code>DataMiner</code>](#module_DataMiner)  
<a name="DataMinerError"></a>

## DataMinerError : <code>object</code>
**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| errno | <code>number</code> | -1 for DataMiner errors |
| message | <code>string</code> | Error message |
| code | <code>string</code> | 'DataMiner_NODEJS_ERROR' for DataMiner errors |
| errorType | <code>string</code> | DataMiner error type code (eg, HTTP, IO, Catalog) |

<a name="HTTPError"></a>

## HTTPError : <code>object</code>
**Kind**: global typedef  
**Extends**: [<code>DataMinerError</code>](#DataMinerError)  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| statusCode | <code>number</code> | HTTP response status code |
| reason | <code>string</code> | HTTP response reason |
| response | <code>string</code> | HTTP response body |
| headers | <code>object</code> | HTTP headers |