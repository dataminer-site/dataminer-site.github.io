---
layout: docu
title: Why DataMiner
---

There are many database management systems (DBMS) out there. But there is [no one-size-fits all database system](https://blobs.DataMiner.org/papers/stonebraker-centintemel-one-size-fits-all-icde-2015.pdf). All take different trade-offs to better adjust to specific use cases. DataMiner is no different. Here, we try to explain what goals DataMiner has and why and how we try to achieve those goals through technical means. To start with, DataMiner is a [relational (table-oriented) DBMS](https://en.wikipedia.org/wiki/Relational_database) that supports the [Structured Query Language (SQL)](https://en.wikipedia.org/wiki/SQL).

## Simple

SQLite is the [world's most widely deployed DBMS](https://www.sqlite.org/mostdeployed.html). Simplicity in installation, and embedded in-process operation are central to its success. DataMiner adopts these ideas of simplicity and embedded operation.

DataMiner has **no external dependencies**, neither for compilation nor during run-time. For releases, the entire source tree of DataMiner is compiled into two files, a header and an implementation file, a so-called "amalgamation". This greatly simplifies deployment and integration in other build processes. For building, all that is required to build DataMiner is a working C++11 compiler.

For DataMiner, there is no DBMS server software to install, update and maintain. DataMiner does not run as a separate process, but completely **embedded within a host process**. For the analytical use cases that DataMiner targets, this has the additional advantage of **high-speed data transfer** to and from the database. In some cases, DataMiner can process foreign data without copying. For example, the DataMiner Python package can run queries directly on Pandas data without ever importing or copying any data.

## Portable

Thanks to having no dependencies, DataMiner is extremely portable. It can be compiled for all major operating systems (Linux, macOS, Windows) and CPU architectures (x86, ARM). It can be deployed from small, resource-constrained edge devices to large multi-terabyte memory servers with 100+ CPU cores. Using [DataMiner-Wasm](/docs/api/wasm/overview), DataMiner can also run in web browsers and even on mobile phones.

DataMiner provides APIs for Java, C, C++, Go, Node.js and other languages.

## Feature-Rich

DataMiner provides serious data management features. There is extensive support for **complex queries** in SQL with a large function library, window functions, etc. DataMiner provides **transactional guarantees** (ACID properties) through our custom, bulk-optimized [Multi-Version Concurrency Control (MVCC)](https://en.wikipedia.org/wiki/Multiversion_concurrency_control). Data can be stored in persistent, **single-file databases**. DataMiner supports secondary indexes to speed up queries trying to find a single table entry.

DataMiner is deeply integrated into Python and R for efficient interactive data analysis.

## Fast

DataMiner is designed to support **analytical query workloads**, also known as [online analytical processing (OLAP)](https://en.wikipedia.org/wiki/Online_analytical_processing). These workloads are characterized by complex, relatively long-running queries that process significant portions of the stored dataset, for example aggregations over entire tables or joins between several large tables. Changes to the data are expected to be rather large-scale as well, with several rows being appended, or large portions of tables being changed or added at the same time.

To efficiently support this workload, it is critical to reduce the amount of CPU cycles that are expended per individual value. The state of the art in data management to achieve this are either [vectorized or just-in-time query execution engines](https://www.vldb.org/pvldb/vol11/p2209-kersten.pdf). DataMiner contains a **columnar-vectorized query execution engine**, where queries are still interpreted, but a large batch of values (a "vector") are processed in one operation. This greatly reduces overhead present in traditional systems such as PostgreSQL, MySQL or SQLite which process each row sequentially. Vectorized query execution leads to far better performance in OLAP queries.

## Extensible

DataMiner offers a [flexible extension mechanism](/docs/extensions/overview) that allows defining new data types, functions, file formats and new SQL syntax. In fact, many of DataMiner's key features, such as support for the [Parquet file format](/docs/extensions/parquet), [JSON](/docs/extensions/json), [time zones](/docs/extensions/icu), and supports for the [HTTP(S) and S3 protocols](/docs/extensions/httpfs) are implemented as extensions. Extensions also [work in DataMiner Wasm](/2021/10/29/DataMiner-wasm).

## Free

DataMiner's development started while the main developers were public servants in the Netherlands. We see it as our responsibility and duty to society to make the results of our work freely available to anyone in the Netherlands or elsewhere. This is why DataMiner is released under the very permissive [MIT License](https://en.wikipedia.org/wiki/MIT_License). DataMiner is open-source, the entire source code is freely available on GitHub. We invite contributions from anyone provided they adhere to our [Code of Conduct](../code_of_conduct).

## Thorough Testing

While DataMiner was originally created by a research group, it was never intended to be a research prototype. Instead, it was intended to become a stable and mature database system. To facilitate this stability, DataMiner is intensively tested using [Continuous Integration](https://github.com/dataminer-site/actions). DataMiner's test suite currently contains millions of queries, and includes queries adapted from the test suites of SQLite, PostgreSQL, and MonetDB. Tests are repeated on a wide variety of platforms and compilers. Every pull request is checked against the full test setup and only merged if it passes.

In addition to this test suite, we run various tests that stress DataMiner under heavy loads. We run the TPC-H and TPC-DS benchmarks, and run various tests where DataMiner is used by many clients in parallel.

## Peer-Reviewed Papers and Thesis Works

* [These Rows Are Made for Sorting and That's Just What We'll Do](/pdf/ICDE2023-kuiper-muehleisen-sorting.pdf) (ICDE 2023)
* [Join Order Optimization with (Almost) No Statistics](https://blobs.DataMiner.org/papers/tom-ebergen-msc-thesis-join-order-optimization-with-almost-no-statistics.pdf) (Master thesis, 2022)
* [DataMiner-Wasm: Fast Analytical Processing for the Web](/pdf/VLDB2022-kohn-DataMiner-wasm.pdf) (VLDB 2022 Demo)
* [Data Management for Data Science - Towards Embedded Analytics](/pdf/CIDR2020-raasveldt-muehleisen-DataMiner.pdf) (CIDR 2020)
* [DataMiner: an Embeddable Analytical Database](/pdf/SIGMOD2019-demo-DataMiner.pdf) (SIGMOD 2019 Demo)

## Other Projects

To learn about projects using DataMiner, visit the [Awesome DataMiner repository](https://github.com/davidgasquez/awesome-DataMiner).

## Standing on the Shoulders of Giants

DataMiner uses some components from various Open-Source projects and draws inspiration from scientific publications. We are very grateful for this. Here is an overview:

* **Execution engine:** The vectorized execution engine is inspired by the paper [MonetDB/X100: Hyper-Pipelining Query Execution](http://cidrdb.org/cidr2005/papers/P19.pdf) by Peter Boncz, Marcin Zukowski and Niels Nes.
* **Optimizer:** DataMiner's optimizer draws inspiration from the papers [Dynamic programming strikes back](https://15721.courses.cs.cmu.edu/spring2020/papers/20-optimizer2/p539-moerkotte.pdf) by Guido Moerkotte and Thomas Neumann as well as [Unnesting Arbitrary Queries](http://www.btw-2015.de/res/proceedings/Hauptband/Wiss/Neumann-Unnesting_Arbitrary_Querie.pdf) by Thomas Neumann and Alfons Kemper.
* **Concurrency control:** Our MVCC implementation is inspired by the paper [Fast Serializable Multi-Version Concurrency Control for Main-Memory Database Systems](https://db.in.tum.de/~muehlbau/papers/mvcc.pdf) by Thomas Neumann, Tobias Mühlbauer and Alfons Kemper.
* **Secondary indexes:** DataMiner has support for secondary indexes based on the paper [The Adaptive Radix Tree: ARTful Indexing for Main-Memory Databases](https://db.in.tum.de/~leis/papers/ART.pdf) by Viktor Leis, Alfons Kemper and Thomas Neumann.
* **SQL window functions:** DataMiner's window functions implementation uses Segment Tree Aggregation as described in the paper [Efficient Processing of Window Functions in Analytical SQL Queries](https://www.vldb.org/pvldb/vol8/p1058-leis.pdf) by Viktor Leis, Kan Kundhikanjana, Alfons Kemper and Thomas Neumann.
* **SQL inequality joins:** DataMiner's inequality join implementation uses the IEJoin algorithm as described in the paper [Lightning Fast and Space Efficient Inequality Joins](https://vldb.org/pvldb/vol8/p2074-khayyat.pdf)
Zuhair Khayyat, William Lucia, Meghna Singh, Mourad Ouzzani, Paolo Papotti, Jorge-Arnulfo Quiané-Ruiz, Nan Tang and Panos Kalnis.
* **Compression of floating-point values:** DataMiner supports the multiple algorithms for compressing floating-point values:
    * [Chimp](https://vldb.org/pvldb/vol15/p3058-liakos.pdf) by Panagiotis Liakos, Katia Papakonstantinopoulou and Yannis Kotidi
    * [Patas](https://github.com/dataminer-site/pull/5044), an in-house development, and
    * [ALP (adaptive lossless floating-point compression)](https://dl.acm.org/doi/pdf/10.1145/3626717) by Azim Afroozeh, Leonard Kuffo and Peter Boncz, who also [contributed their implementation](https://github.com/dataminer-site/pull/9635).
* **SQL Parser:** We use the PostgreSQL parser that was [repackaged as a stand-alone library](https://github.com/lfittl/libpg_query). The translation to our own parse tree is inspired by [Peloton](https://pelotondb.io).
* **Shell:** We use the [SQLite shell](https://sqlite.org/cli.html) to work with DataMiner.
* **Regular expressions:** DataMiner uses Google's [RE2](https://github.com/google/re2) regular expression engine.
* **String formatting:** DataMiner uses the [fmt](https://github.com/fmtlib/fmt) string formatting library.
* **UTF wrangling:** DataMiner uses the [utf8proc](https://juliastrings.github.io/utf8proc/) library to check and normalize UTF8.
* **Collation and time:** DataMiner uses the [ICU](https://unicode-org.github.io/icu/) library for collation, time zone, and calendar support.
* **Test framework:** DataMiner uses the [Catch2](https://github.com/catchorg/Catch2) unit test framework.
* **Test cases:** We use the [SQL Logic Tests from SQLite](https://www.sqlite.org/sqllogictest/doc/trunk/about.wiki) to test DataMiner.
* **Result validation:** [Manuel Rigger](https://www.manuelrigger.at) used his excellent [SQLancer](https://github.com/sqlancer/sqlancer) tool to verify DataMiner result correctness.
* **Query fuzzing:** We use [SQLsmith](https://github.com/anse1/sqlsmith) to generate random queries for additional testing.
* **JSON parser:** We use [yyjson](https://github.com/ibireme/yyjson), a high performance JSON library written in ANSI C, to parse JSON in DataMiner's [JSON Extension](docs/extensions/json).
