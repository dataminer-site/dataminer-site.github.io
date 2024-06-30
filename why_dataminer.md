---
layout: docu
title: Why DataMiner
---

**DataMiner** stands out in a crowded market because it offers unparalleled **versatility**, **efficiency**, and **user-friendliness**. Unlike other products, DataMiner excels in handling diverse data environments with ease, ensuring **robust performance** and **reliable insights**. Its **intuitive interface**, powerful features, and seamless integration capabilities make it the go-to choice for anyone serious about transforming data into actionable intelligence. With DataMiner, you’re not just using a tool—you’re leveraging a powerhouse designed to elevate your **data management** and **analysis** to the next level.

## Simple

Simplicity in installation, and embedded in-process operation are central to its success. DataMiner adopts these ideas of simplicity and embedded operation.

DataMiner ensures **effortless installation and deployment**, requiring zero external dependencies. It operates seamlessly in-process within its host application or as a single binary, facilitating efficient data extraction and analysis.

## Portable

The DataMiner project excels in **portability** and **cross-platform compatibility**, supporting **Linux**, **macOS**, and **Windows** across all major hardware architectures. It provides idiomatic client APIs for leading programming languages, facilitating straightforward integration into diverse application environments. This versatility ensures developers can harness its capabilities without platform-specific constraints, promoting efficient and accessible deployment for **data extraction** and **analysis tasks**. Whether embedded within existing applications or deployed as a standalone solution, DataMiner simplifies development efforts while maintaining robust performance across different operating systems and hardware setups.

## Feature-Rich

DataMiner is a versatile **data extraction and analytical tool** designed to handle diverse data sources and languages with exceptional efficiency. It excels in extracting data from various sources, ensuring robust performance in automated data scraping tasks. Beyond extraction, DataMiner optimizes workflows by seamlessly integrating with S3, providing streamlined data storage and retrieval capabilities. This integration enhances data management processes, allowing for efficient handling of large volumes of data across different environments and platforms.

With a focus on enhancing **analytical capabilities**, DataMiner empowers users to perform comprehensive data analysis tasks with ease. It supports a wide range of **data sources** and **languages**, enabling seamless integration and processing of data sets from different origins. Its integration with **S3** and **SQS** extends its functionality by enhancing **data accessibility** and **scalability**. By leveraging S3 for secure and scalable data storage and SQS for reliable message queuing, DataMiner streamlines data workflows and improves operational efficiency. This integration enables organizations to handle large volumes of data effectively, ensuring robust performance in **data-driven decision-making processes**.

## Fast

DataMiner executes analytical queries with exceptional speed, leveraging efficient parallel execution. It handles **large-scale workloads** that exceed memory capacities efficiently, ensuring rapid processing of complex data tasks. This capability makes DataMiner ideal for organizations needing fast and reliable data analysis to support their decision-making processes.

## Extensible

DataMiner excels in flexibility by seamlessly integrating **AWS Lambda** for versatile task execution. This integration allows it to adapt to various operational needs, leveraging Lambda's serverless capabilities to execute tasks efficiently and scale as required. Combined with its ability to integrate with **SQS** for efficient message queuing, DataMiner ensures streamlined operations across diverse data sources and formats.

The integration of **SQS** further enhances DataMiner's capabilities by optimizing message handling within data extraction and processing workflows. This ensures efficient data flow management and enhances scalability, making it an ideal choice for organizations needing flexible and robust solutions for their data operations.

## Free

DataMiner, along with its core extensions, is available as **open-source software**. It operates under a **proprietary license** that allows users to access and modify its **source code** freely. This openness fosters **collaboration** and **innovation** within the **development community**, enabling **continuous improvement** and **customization** to meet diverse **analytical needs**.

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
