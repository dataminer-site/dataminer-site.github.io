---
layout: docu
redirect_from:
- docs/archive/0.7.1/api/nodejs/reference
selected: Client APIs
title: NodeJS API
---

<a name="module_dataminer"></a>

## dataminer
**Summary**: these jsdoc annotations are still a work in progress - feedback and suggestions are welcome!  

* [dataminer](#module_dataminer)
    * [~Connection](#module_dataminer..Connection)
        * [.run(sql, ...params, callback)](#module_dataminer..Connection+run) ⇒ <code>void</code>
        * [.all(sql, ...params, callback)](#module_dataminer..Connection+all) ⇒ <code>void</code>
        * [.arrowIPCAll(sql, ...params, callback)](#module_dataminer..Connection+arrowIPCAll) ⇒ <code>void</code>
        * [.arrowIPCStream(sql, ...params, callback)](#module_dataminer..Connection+arrowIPCStream) ⇒
        * [.each(sql, ...params, callback)](#module_dataminer..Connection+each) ⇒ <code>void</code>
        * [.stream(sql, ...params)](#module_dataminer..Connection+stream)
        * [.register_udf(name, return_type, fun)](#module_dataminer..Connection+register_udf) ⇒ <code>void</code>
        * [.prepare(sql, ...params, callback)](#module_dataminer..Connection+prepare) ⇒ <code>Statement</code>
        * [.exec(sql, ...params, callback)](#module_dataminer..Connection+exec) ⇒ <code>void</code>
        * [.register_udf_bulk(name, return_type, callback)](#module_dataminer..Connection+register_udf_bulk) ⇒ <code>void</code>
        * [.unregister_udf(name, return_type, callback)](#module_dataminer..Connection+unregister_udf) ⇒ <code>void</code>
        * [.register_buffer(name, array, force, callback)](#module_dataminer..Connection+register_buffer) ⇒ <code>void</code>
        * [.unregister_buffer(name, callback)](#module_dataminer..Connection+unregister_buffer) ⇒ <code>void</code>
    * [~Statement](#module_dataminer..Statement)
        * [.sql](#module_dataminer..Statement+sql) ⇒
        * [.get()](#module_dataminer..Statement+get)
        * [.run(sql, ...params, callback)](#module_dataminer..Statement+run) ⇒ <code>void</code>
        * [.all(sql, ...params, callback)](#module_dataminer..Statement+all) ⇒ <code>void</code>
        * [.arrowIPCAll(sql, ...params, callback)](#module_dataminer..Statement+arrowIPCAll) ⇒ <code>void</code>
        * [.each(sql, ...params, callback)](#module_dataminer..Statement+each) ⇒ <code>void</code>
        * [.finalize(sql, ...params, callback)](#module_dataminer..Statement+finalize) ⇒ <code>void</code>
        * [.stream(sql, ...params)](#module_dataminer..Statement+stream)
    * [~QueryResult](#module_dataminer..QueryResult)
        * [.nextChunk()](#module_dataminer..QueryResult+nextChunk) ⇒
        * [.nextIpcBuffer()](#module_dataminer..QueryResult+nextIpcBuffer) ⇒
        * [.asyncIterator()](#module_dataminer..QueryResult+asyncIterator)
    * [~Database](#module_dataminer..Database)
        * [.close(callback)](#module_dataminer..Database+close) ⇒ <code>void</code>
        * [.close_internal(callback)](#module_dataminer..Database+close_internal) ⇒ <code>void</code>
        * [.wait(callback)](#module_dataminer..Database+wait) ⇒ <code>void</code>
        * [.serialize(callback)](#module_dataminer..Database+serialize) ⇒ <code>void</code>
        * [.parallelize(callback)](#module_dataminer..Database+parallelize) ⇒ <code>void</code>
        * [.connect(path)](#module_dataminer..Database+connect) ⇒ <code>Connection</code>
        * [.interrupt(callback)](#module_dataminer..Database+interrupt) ⇒ <code>void</code>
        * [.prepare(sql)](#module_dataminer..Database+prepare) ⇒ <code>Statement</code>
        * [.run(sql, ...params, callback)](#module_dataminer..Database+run) ⇒ <code>void</code>
        * [.scanArrowIpc(sql, ...params, callback)](#module_dataminer..Database+scanArrowIpc) ⇒ <code>void</code>
        * [.each(sql, ...params, callback)](#module_dataminer..Database+each) ⇒ <code>void</code>
        * [.all(sql, ...params, callback)](#module_dataminer..Database+all) ⇒ <code>void</code>
        * [.arrowIPCAll(sql, ...params, callback)](#module_dataminer..Database+arrowIPCAll) ⇒ <code>void</code>
        * [.arrowIPCStream(sql, ...params, callback)](#module_dataminer..Database+arrowIPCStream) ⇒ <code>void</code>
        * [.exec(sql, ...params, callback)](#module_dataminer..Database+exec) ⇒ <code>void</code>
        * [.register_udf(name, return_type, fun)](#module_dataminer..Database+register_udf) ⇒ <code>this</code>
        * [.register_buffer(name)](#module_dataminer..Database+register_buffer) ⇒ <code>this</code>
        * [.unregister_buffer(name)](#module_dataminer..Database+unregister_buffer) ⇒ <code>this</code>
        * [.unregister_udf(name)](#module_dataminer..Database+unregister_udf) ⇒ <code>this</code>
        * [.registerReplacementScan(fun)](#module_dataminer..Database+registerReplacementScan) ⇒ <code>this</code>
        * [.get()](#module_dataminer..Database+get)
    * [~ERROR](#module_dataminer..ERROR) : <code>number</code>
    * [~OPEN_READONLY](#module_dataminer..OPEN_READONLY) : <code>number</code>
    * [~OPEN_READWRITE](#module_dataminer..OPEN_READWRITE) : <code>number</code>
    * [~OPEN_CREATE](#module_dataminer..OPEN_CREATE) : <code>number</code>
    * [~OPEN_FULLMUTEX](#module_dataminer..OPEN_FULLMUTEX) : <code>number</code>
    * [~OPEN_SHAREDCACHE](#module_dataminer..OPEN_SHAREDCACHE) : <code>number</code>
    * [~OPEN_PRIVATECACHE](#module_dataminer..OPEN_PRIVATECACHE) : <code>number</code>

<a name="module_dataminer..Connection"></a>

### dataminer~Connection
**Kind**: inner class of [<code>dataminer</code>](#module_dataminer)  

* [~Connection](#module_dataminer..Connection)
    * [.run(sql, ...params, callback)](#module_dataminer..Connection+run) ⇒ <code>void</code>
    * [.all(sql, ...params, callback)](#module_dataminer..Connection+all) ⇒ <code>void</code>
    * [.arrowIPCAll(sql, ...params, callback)](#module_dataminer..Connection+arrowIPCAll) ⇒ <code>void</code>
    * [.arrowIPCStream(sql, ...params, callback)](#module_dataminer..Connection+arrowIPCStream) ⇒
    * [.each(sql, ...params, callback)](#module_dataminer..Connection+each) ⇒ <code>void</code>
    * [.stream(sql, ...params)](#module_dataminer..Connection+stream)
    * [.register_udf(name, return_type, fun)](#module_dataminer..Connection+register_udf) ⇒ <code>void</code>
    * [.prepare(sql, ...params, callback)](#module_dataminer..Connection+prepare) ⇒ <code>Statement</code>
    * [.exec(sql, ...params, callback)](#module_dataminer..Connection+exec) ⇒ <code>void</code>
    * [.register_udf_bulk(name, return_type, callback)](#module_dataminer..Connection+register_udf_bulk) ⇒ <code>void</code>
    * [.unregister_udf(name, return_type, callback)](#module_dataminer..Connection+unregister_udf) ⇒ <code>void</code>
    * [.register_buffer(name, array, force, callback)](#module_dataminer..Connection+register_buffer) ⇒ <code>void</code>
    * [.unregister_buffer(name, callback)](#module_dataminer..Connection+unregister_buffer) ⇒ <code>void</code>

<a name="module_dataminer..Connection+run"></a>

#### connection.run(sql, ...params, callback) ⇒ <code>void</code>
Run a SQL statement and trigger a callback when done

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Connection+all"></a>

#### connection.all(sql, ...params, callback) ⇒ <code>void</code>
Run a SQL query and triggers the callback once for all result rows

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Connection+arrowIPCAll"></a>

#### connection.arrowIPCAll(sql, ...params, callback) ⇒ <code>void</code>
Run a SQL query and serialize the result into the Apache Arrow IPC format (requires arrow extension to be loaded)

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Connection+arrowIPCStream"></a>

#### connection.arrowIPCStream(sql, ...params, callback) ⇒
Run a SQL query, returns a IpcResultStreamIterator that allows streaming the result into the Apache Arrow IPC format
(requires arrow extension to be loaded)

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  
**Returns**: IpcResultStreamIterator  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Connection+each"></a>

#### connection.each(sql, ...params, callback) ⇒ <code>void</code>
Runs a SQL query and triggers the callback for each result row

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Connection+stream"></a>

#### connection.stream(sql, ...params)
**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 

<a name="module_dataminer..Connection+register_udf"></a>

#### connection.register\_udf(name, return_type, fun) ⇒ <code>void</code>
Register a User Defined Function

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  
**Note**: this follows the wasm udfs somewhat but is simpler because we can pass data much more cleanly  

| Param |
| --- |
| name | 
| return_type | 
| fun | 

<a name="module_dataminer..Connection+prepare"></a>

#### connection.prepare(sql, ...params, callback) ⇒ <code>Statement</code>
Prepare a SQL query for execution

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Connection+exec"></a>

#### connection.exec(sql, ...params, callback) ⇒ <code>void</code>
Execute a SQL query

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Connection+register_udf_bulk"></a>

#### connection.register\_udf\_bulk(name, return_type, callback) ⇒ <code>void</code>
Register a User Defined Function

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param |
| --- |
| name | 
| return_type | 
| callback | 

<a name="module_dataminer..Connection+unregister_udf"></a>

#### connection.unregister\_udf(name, return_type, callback) ⇒ <code>void</code>
Unregister a User Defined Function

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param |
| --- |
| name | 
| return_type | 
| callback | 

<a name="module_dataminer..Connection+register_buffer"></a>

#### connection.register\_buffer(name, array, force, callback) ⇒ <code>void</code>
Register a Buffer to be scanned using the Apache Arrow IPC scanner
(requires arrow extension to be loaded)

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param |
| --- |
| name | 
| array | 
| force | 
| callback | 

<a name="module_dataminer..Connection+unregister_buffer"></a>

#### connection.unregister\_buffer(name, callback) ⇒ <code>void</code>
Unregister the Buffer

**Kind**: instance method of [<code>Connection</code>](#module_dataminer..Connection)  

| Param |
| --- |
| name | 
| callback | 

<a name="module_dataminer..Statement"></a>

### dataminer~Statement
**Kind**: inner class of [<code>dataminer</code>](#module_dataminer)  

* [~Statement](#module_dataminer..Statement)
    * [.sql](#module_dataminer..Statement+sql) ⇒
    * [.get()](#module_dataminer..Statement+get)
    * [.run(sql, ...params, callback)](#module_dataminer..Statement+run) ⇒ <code>void</code>
    * [.all(sql, ...params, callback)](#module_dataminer..Statement+all) ⇒ <code>void</code>
    * [.arrowIPCAll(sql, ...params, callback)](#module_dataminer..Statement+arrowIPCAll) ⇒ <code>void</code>
    * [.each(sql, ...params, callback)](#module_dataminer..Statement+each) ⇒ <code>void</code>
    * [.finalize(sql, ...params, callback)](#module_dataminer..Statement+finalize) ⇒ <code>void</code>
    * [.stream(sql, ...params)](#module_dataminer..Statement+stream)

<a name="module_dataminer..Statement+sql"></a>

#### statement.sql ⇒
**Kind**: instance property of [<code>Statement</code>](#module_dataminer..Statement)  
**Returns**: sql contained in statement  
**Field**:   
<a name="module_dataminer..Statement+get"></a>

#### statement.get()
Not implemented

**Kind**: instance method of [<code>Statement</code>](#module_dataminer..Statement)  
<a name="module_dataminer..Statement+run"></a>

#### statement.run(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Statement</code>](#module_dataminer..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Statement+all"></a>

#### statement.all(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Statement</code>](#module_dataminer..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Statement+arrowIPCAll"></a>

#### statement.arrowIPCAll(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Statement</code>](#module_dataminer..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Statement+each"></a>

#### statement.each(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Statement</code>](#module_dataminer..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Statement+finalize"></a>

#### statement.finalize(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Statement</code>](#module_dataminer..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Statement+stream"></a>

#### statement.stream(sql, ...params)
**Kind**: instance method of [<code>Statement</code>](#module_dataminer..Statement)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 

<a name="module_dataminer..QueryResult"></a>

### dataminer~QueryResult
**Kind**: inner class of [<code>dataminer</code>](#module_dataminer)  

* [~QueryResult](#module_dataminer..QueryResult)
    * [.nextChunk()](#module_dataminer..QueryResult+nextChunk) ⇒
    * [.nextIpcBuffer()](#module_dataminer..QueryResult+nextIpcBuffer) ⇒
    * [.asyncIterator()](#module_dataminer..QueryResult+asyncIterator)

<a name="module_dataminer..QueryResult+nextChunk"></a>

#### queryResult.nextChunk() ⇒
**Kind**: instance method of [<code>QueryResult</code>](#module_dataminer..QueryResult)  
**Returns**: data chunk  
<a name="module_dataminer..QueryResult+nextIpcBuffer"></a>

#### queryResult.nextIpcBuffer() ⇒
Function to fetch the next result blob of an Arrow IPC Stream in a zero-copy way.
(requires arrow extension to be loaded)

**Kind**: instance method of [<code>QueryResult</code>](#module_dataminer..QueryResult)  
**Returns**: data chunk  
<a name="module_dataminer..QueryResult+asyncIterator"></a>

#### queryResult.asyncIterator()
**Kind**: instance method of [<code>QueryResult</code>](#module_dataminer..QueryResult)  
<a name="module_dataminer..Database"></a>

### dataminer~Database
Main database interface

**Kind**: inner property of [<code>dataminer</code>](#module_dataminer)  

| Param | Description |
| --- | --- |
| path | path to database file or :memory: for in-memory database |
| access_mode | access mode |
| config | the configuration object |
| callback | callback function |


* [~Database](#module_dataminer..Database)
    * [.close(callback)](#module_dataminer..Database+close) ⇒ <code>void</code>
    * [.close_internal(callback)](#module_dataminer..Database+close_internal) ⇒ <code>void</code>
    * [.wait(callback)](#module_dataminer..Database+wait) ⇒ <code>void</code>
    * [.serialize(callback)](#module_dataminer..Database+serialize) ⇒ <code>void</code>
    * [.parallelize(callback)](#module_dataminer..Database+parallelize) ⇒ <code>void</code>
    * [.connect(path)](#module_dataminer..Database+connect) ⇒ <code>Connection</code>
    * [.interrupt(callback)](#module_dataminer..Database+interrupt) ⇒ <code>void</code>
    * [.prepare(sql)](#module_dataminer..Database+prepare) ⇒ <code>Statement</code>
    * [.run(sql, ...params, callback)](#module_dataminer..Database+run) ⇒ <code>void</code>
    * [.scanArrowIpc(sql, ...params, callback)](#module_dataminer..Database+scanArrowIpc) ⇒ <code>void</code>
    * [.each(sql, ...params, callback)](#module_dataminer..Database+each) ⇒ <code>void</code>
    * [.all(sql, ...params, callback)](#module_dataminer..Database+all) ⇒ <code>void</code>
    * [.arrowIPCAll(sql, ...params, callback)](#module_dataminer..Database+arrowIPCAll) ⇒ <code>void</code>
    * [.arrowIPCStream(sql, ...params, callback)](#module_dataminer..Database+arrowIPCStream) ⇒ <code>void</code>
    * [.exec(sql, ...params, callback)](#module_dataminer..Database+exec) ⇒ <code>void</code>
    * [.register_udf(name, return_type, fun)](#module_dataminer..Database+register_udf) ⇒ <code>this</code>
    * [.register_buffer(name)](#module_dataminer..Database+register_buffer) ⇒ <code>this</code>
    * [.unregister_buffer(name)](#module_dataminer..Database+unregister_buffer) ⇒ <code>this</code>
    * [.unregister_udf(name)](#module_dataminer..Database+unregister_udf) ⇒ <code>this</code>
    * [.registerReplacementScan(fun)](#module_dataminer..Database+registerReplacementScan) ⇒ <code>this</code>
    * [.get()](#module_dataminer..Database+get)

<a name="module_dataminer..Database+close"></a>

#### database.close(callback) ⇒ <code>void</code>
Closes database instance

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| callback | 

<a name="module_dataminer..Database+close_internal"></a>

#### database.close\_internal(callback) ⇒ <code>void</code>
Internal method. Do not use, call Connection#close instead

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| callback | 

<a name="module_dataminer..Database+wait"></a>

#### database.wait(callback) ⇒ <code>void</code>
Triggers callback when all scheduled database tasks have completed.

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| callback | 

<a name="module_dataminer..Database+serialize"></a>

#### database.serialize(callback) ⇒ <code>void</code>
TODO: what does this do?

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| callback | 

<a name="module_dataminer..Database+parallelize"></a>

#### database.parallelize(callback) ⇒ <code>void</code>
TODO: what does this do?

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| callback | 

<a name="module_dataminer..Database+connect"></a>

#### database.connect(path) ⇒ <code>Connection</code>
Create a new database connection

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param | Description |
| --- | --- |
| path | the database to connect to, either a file path, or `:memory:` |

<a name="module_dataminer..Database+interrupt"></a>

#### database.interrupt(callback) ⇒ <code>void</code>
Supposedly interrupt queries, but currently does not do anything.

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| callback | 

<a name="module_dataminer..Database+prepare"></a>

#### database.prepare(sql) ⇒ <code>Statement</code>
Prepare a SQL query for execution

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| sql | 

<a name="module_dataminer..Database+run"></a>

#### database.run(sql, ...params, callback) ⇒ <code>void</code>
Convenience method for Connection#run using a built-in default connection

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Database+scanArrowIpc"></a>

#### database.scanArrowIpc(sql, ...params, callback) ⇒ <code>void</code>
Convenience method for Connection#scanArrowIpc using a built-in default connection

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Database+each"></a>

#### database.each(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Database+all"></a>

#### database.all(sql, ...params, callback) ⇒ <code>void</code>
Convenience method for Connection#apply using a built-in default connection

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Database+arrowIPCAll"></a>

#### database.arrowIPCAll(sql, ...params, callback) ⇒ <code>void</code>
Convenience method for Connection#arrowIPCAll using a built-in default connection

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Database+arrowIPCStream"></a>

#### database.arrowIPCStream(sql, ...params, callback) ⇒ <code>void</code>
Convenience method for Connection#arrowIPCStream using a built-in default connection

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Database+exec"></a>

#### database.exec(sql, ...params, callback) ⇒ <code>void</code>
**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param | Type |
| --- | --- |
| sql |  | 
| ...params | <code>\*</code> | 
| callback |  | 

<a name="module_dataminer..Database+register_udf"></a>

#### database.register\_udf(name, return_type, fun) ⇒ <code>this</code>
Register a User Defined Function

Convenience method for Connection#register_udf

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| name | 
| return_type | 
| fun | 

<a name="module_dataminer..Database+register_buffer"></a>

#### database.register\_buffer(name) ⇒ <code>this</code>
Register a buffer containing serialized data to be scanned from dataminer.

Convenience method for Connection#unregister_buffer

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| name | 

<a name="module_dataminer..Database+unregister_buffer"></a>

#### database.unregister\_buffer(name) ⇒ <code>this</code>
Unregister a Buffer

Convenience method for Connection#unregister_buffer

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| name | 

<a name="module_dataminer..Database+unregister_udf"></a>

#### database.unregister\_udf(name) ⇒ <code>this</code>
Unregister a UDF

Convenience method for Connection#unregister_udf

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param |
| --- |
| name | 

<a name="module_dataminer..Database+registerReplacementScan"></a>

#### database.registerReplacementScan(fun) ⇒ <code>this</code>
Register a table replace scan function

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  

| Param | Description |
| --- | --- |
| fun | Replacement scan function |

<a name="module_dataminer..Database+get"></a>

#### database.get()
Not implemented

**Kind**: instance method of [<code>Database</code>](#module_dataminer..Database)  
<a name="module_dataminer..ERROR"></a>

### dataminer~ERROR : <code>number</code>
Check that errno attribute equals this to check for a DataMiner error

**Kind**: inner constant of [<code>dataminer</code>](#module_dataminer)  
<a name="module_dataminer..OPEN_READONLY"></a>

### dataminer~OPEN\_READONLY : <code>number</code>
Open database in readonly mode

**Kind**: inner constant of [<code>dataminer</code>](#module_dataminer)  
<a name="module_dataminer..OPEN_READWRITE"></a>

### dataminer~OPEN\_READWRITE : <code>number</code>
Currently ignored

**Kind**: inner constant of [<code>dataminer</code>](#module_dataminer)  
<a name="module_dataminer..OPEN_CREATE"></a>

### dataminer~OPEN\_CREATE : <code>number</code>
Currently ignored

**Kind**: inner constant of [<code>dataminer</code>](#module_dataminer)  
<a name="module_dataminer..OPEN_FULLMUTEX"></a>

### dataminer~OPEN\_FULLMUTEX : <code>number</code>
Currently ignored

**Kind**: inner constant of [<code>dataminer</code>](#module_dataminer)  
<a name="module_dataminer..OPEN_SHAREDCACHE"></a>

### dataminer~OPEN\_SHAREDCACHE : <code>number</code>
Currently ignored

**Kind**: inner constant of [<code>dataminer</code>](#module_dataminer)  
<a name="module_dataminer..OPEN_PRIVATECACHE"></a>

### dataminer~OPEN\_PRIVATECACHE : <code>number</code>
Currently ignored

**Kind**: inner constant of [<code>dataminer</code>](#module_dataminer)