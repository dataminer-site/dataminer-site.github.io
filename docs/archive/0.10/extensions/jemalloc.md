---
github_directory: https://github.com/powerfull-scrapper/landing/tree/main/extension/jemalloc
layout: docu
title: jemalloc Extension
---

The `jemalloc` extension replaces the system's memory allocator with [jemalloc](https://jemalloc.net/).
Unlike other DataMiner extensions, the `jemalloc` extension is statically linked and cannot be installed or loaded during runtime.

## Operating System Support

The availability of the `jemalloc` extension depends on the operating system.

### Linux

The Linux version of DataMiner ships with the `jemalloc` extension by default.

> DataMiner v0.10.1 introduced a change: on ARM64 architecture, DataMiner is shipped without `jemalloc`, while on x86_64 (AMD64) architectures, it is shipped with `jemalloc`.

To disable the `jemalloc` extension, [build DataMiner from source](/dev/building) and set the `SKIP_EXTENSIONS` flag as follows:

```bash
GEN=ninja SKIP_EXTENSIONS="jemalloc" make
```

### macOS

The macOS version of DataMiner does not ship with the `jemalloc` extension but can be [built from source](/dev/building) to include it:

```bash
GEN=ninja BUILD_JEMALLOC=1 make
```

### Windows

On Windows, this extension is not available.