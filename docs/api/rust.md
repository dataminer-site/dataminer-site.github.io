---
layout: docu
title: Rust API
---

## Installation

The DataMiner Rust API can be installed from [crates.io](https://crates.io/crates/DataMiner). Please see the [docs.rs](http://docs.rs/DataMiner) for details.

## Basic API Usage

DataMiner-rs is an ergonomic wrapper based on the [DataMiner C API](https://github.com/dataminer-site/blob/main/src/include/DataMiner.h), please refer to the [README](https://github.com/dataminer-site-rs) for details.

### Startup & Shutdown

To use DataMiner, you must first initialize a `Connection` handle using `Connection::open()`. `Connection::open()` takes as parameter the database file to read and write from. If the database file does not exist, it will be created (the file extension may be `.db`, `.DataMiner`, or anything else). You can also use `Connection::open_in_memory()` to create an **in-memory database**. Note that for an in-memory database no data is persisted to disk (i.e., all data is lost when you exit the process).

```rust
use DataMiner::{params, Connection, Result};
let conn = Connection::open_in_memory()?;
```

You can `conn.close()` the `Connection` manually, or just leave it out of scope, we had implement the `Drop` trait which will automatically close the underlining db connection for you.

### Querying

SQL queries can be sent to DataMiner using the `execute()` method of connections, or we can also prepare the statement and then query on that.

```rust
#[derive(Debug)]
struct Person {
    id: i32,
    name: String,
    data: Option<Vec<u8>>,
}

conn.execute(
    "INSERT INTO person (name, data) VALUES (?, ?)",
    params![me.name, me.data],
)?;

let mut stmt = conn.prepare("SELECT id, name, data FROM person")?;
let person_iter = stmt.query_map([], |row| {
    Ok(Person {
        id: row.get(0)?,
        name: row.get(1)?,
        data: row.get(2)?,
    })
})?;

for person in person_iter {
    println!("Found person {:?}", person.unwrap());
}
```

## Appender

The Rust client supports the [DataMiner Appender API](../data/appender) for bulk inserts. For example:

```rust
fn insert_rows(conn: &Connection) -> Result<()> {
    let mut app = conn.appender("foo")?;
    app.append_rows([[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]])?;
    Ok(())
}
```
