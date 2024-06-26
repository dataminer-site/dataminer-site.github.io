---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/c/value
selected: Values
title: C API - Values
---

The value class represents a single value of any type.

## **API Reference**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="nf"><a href="#DataMiner_destroy_value">DataMiner_destroy_value</a></span>(<span class="kt">DataMiner_value</span> *<span class="k">value</span>);
<span class="kt">DataMiner_value</span> <span class="nf"><a href="#DataMiner_create_varchar">DataMiner_create_varchar</a></span>(<span class="kt">const</span> <span class="kt">char</span> *<span class="k">text</span>);
<span class="kt">DataMiner_value</span> <span class="nf"><a href="#DataMiner_create_varchar_length">DataMiner_create_varchar_length</a></span>(<span class="kt">const</span> <span class="kt">char</span> *<span class="k">text</span>, <span class="kt">idx_t</span> <span class="k">length</span>);
<span class="kt">DataMiner_value</span> <span class="nf"><a href="#DataMiner_create_int64">DataMiner_create_int64</a></span>(<span class="kt">int64_t</span> <span class="k">val</span>);
<span class="kt">char</span> *<span class="nf"><a href="#DataMiner_get_varchar">DataMiner_get_varchar</a></span>(<span class="kt">DataMiner_value</span> <span class="k">value</span>);
<span class="kt">int64_t</span> <span class="nf"><a href="#DataMiner_get_int64">DataMiner_get_int64</a></span>(<span class="kt">DataMiner_value</span> <span class="k">value</span>);
</code></pre></div></div>
### DataMiner_destroy_value
---
Destroys the value and de-allocates all memory allocated for that type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">DataMiner_destroy_value</span>(<span class="k">
</span>  <span class="kt">DataMiner_value</span> *<span class="k">value
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The value to destroy.

<br>

### DataMiner_create_varchar
---
Creates a value from a null-terminated string

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_value</span> <span class="k">DataMiner_create_varchar</span>(<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">text
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The null-terminated string
* `returns`

The value. This must be destroyed with `DataMiner_destroy_value`.

<br>

### DataMiner_create_varchar_length
---
Creates a value from a string

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_value</span> <span class="k">DataMiner_create_varchar_length</span>(<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">text</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">length
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The text
* `length`

The length of the text
* `returns`

The value. This must be destroyed with `DataMiner_destroy_value`.

<br>

### DataMiner_create_int64
---
Creates a value from an int64

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">DataMiner_value</span> <span class="k">DataMiner_create_int64</span>(<span class="k">
</span>  <span class="kt">int64_t</span> <span class="k">val
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The bigint value
* `returns`

The value. This must be destroyed with `DataMiner_destroy_value`.

<br>

### DataMiner_get_varchar
---
Obtains a string representation of the given value.
The result must be destroyed with `DataMiner_free`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">DataMiner_get_varchar</span>(<span class="k">
</span>  <span class="kt">DataMiner_value</span> <span class="k">value
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The value
* `returns`

The string value. This must be destroyed with `DataMiner_free`.

<br>

### DataMiner_get_int64
---
Obtains an int64 of the given value.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">int64_t</span> <span class="k">DataMiner_get_int64</span>(<span class="k">
</span>  <span class="kt">DataMiner_value</span> <span class="k">value
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The value
* `returns`

The int64 value, or 0 if no conversion is possible

<br>