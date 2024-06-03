---
layout: docu
redirect_from:
- docs/archive/0.7.1/api/c/api
selected: API Reference
title: C API - Complete API
---

## **API Reference**
### **Open/Connect**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_open">dataminer_open</a></span>(<span class="kt">const</span> <span class="kt">char</span> *<span class="k">path</span>, <span class="kt">dataminer_database</span> *<span class="k">out_database</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_open_ext">dataminer_open_ext</a></span>(<span class="kt">const</span> <span class="kt">char</span> *<span class="k">path</span>, <span class="kt">dataminer_database</span> *<span class="k">out_database</span>, <span class="kt">dataminer_config</span> <span class="k">config</span>, <span class="kt">char</span> **<span class="k">out_error</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_close">dataminer_close</a></span>(<span class="kt">dataminer_database</span> *<span class="k">database</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_connect">dataminer_connect</a></span>(<span class="kt">dataminer_database</span> <span class="k">database</span>, <span class="kt">dataminer_connection</span> *<span class="k">out_connection</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_disconnect">dataminer_disconnect</a></span>(<span class="kt">dataminer_connection</span> *<span class="k">connection</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#dataminer_library_version">dataminer_library_version</a></span>();
</code></pre></div></div>
### **Configuration**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_create_config">dataminer_create_config</a></span>(<span class="kt">dataminer_config</span> *<span class="k">out_config</span>);
<span class="kt">size_t</span> <span class="nf"><a href="#dataminer_config_count">dataminer_config_count</a></span>();
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_get_config_flag">dataminer_get_config_flag</a></span>(<span class="kt">size_t</span> <span class="k">index</span>, <span class="kt">const</span> <span class="kt">char</span> **<span class="k">out_name</span>, <span class="kt">const</span> <span class="kt">char</span> **<span class="k">out_description</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_set_config">dataminer_set_config</a></span>(<span class="kt">dataminer_config</span> <span class="k">config</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">option</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_config">dataminer_destroy_config</a></span>(<span class="kt">dataminer_config</span> *<span class="k">config</span>);
</code></pre></div></div>
### **Query Execution**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_query">dataminer_query</a></span>(<span class="kt">dataminer_connection</span> <span class="k">connection</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">query</span>, <span class="kt">dataminer_result</span> *<span class="k">out_result</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_result">dataminer_destroy_result</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#dataminer_column_name">dataminer_column_name</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>);
<span class="k">dataminer_type</span> <span class="nf"><a href="#dataminer_column_type">dataminer_column_type</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>);
<span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_column_logical_type">dataminer_column_logical_type</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_column_count">dataminer_column_count</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_row_count">dataminer_row_count</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_rows_changed">dataminer_rows_changed</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>);
<span class="kt">void</span> *<span class="nf"><a href="#dataminer_column_data">dataminer_column_data</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>);
<span class="kt">bool</span> *<span class="nf"><a href="#dataminer_nullmask_data">dataminer_nullmask_data</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#dataminer_result_error">dataminer_result_error</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>);
</code></pre></div></div>
### **Result Functions**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_data_chunk</span> <span class="nf"><a href="#dataminer_result_get_chunk">dataminer_result_get_chunk</a></span>(<span class="kt">dataminer_result</span> <span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">chunk_index</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_result_chunk_count">dataminer_result_chunk_count</a></span>(<span class="kt">dataminer_result</span> <span class="k">result</span>);
<span class="kt">bool</span> <span class="nf"><a href="#dataminer_value_boolean">dataminer_value_boolean</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">int8_t</span> <span class="nf"><a href="#dataminer_value_int8">dataminer_value_int8</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">int16_t</span> <span class="nf"><a href="#dataminer_value_int16">dataminer_value_int16</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">int32_t</span> <span class="nf"><a href="#dataminer_value_int32">dataminer_value_int32</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">int64_t</span> <span class="nf"><a href="#dataminer_value_int64">dataminer_value_int64</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">dataminer_hugeint</span> <span class="nf"><a href="#dataminer_value_hugeint">dataminer_value_hugeint</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="k">dataminer_decimal</span> <span class="nf"><a href="#dataminer_value_decimal">dataminer_value_decimal</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">uint8_t</span> <span class="nf"><a href="#dataminer_value_uint8">dataminer_value_uint8</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">uint16_t</span> <span class="nf"><a href="#dataminer_value_uint16">dataminer_value_uint16</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">uint32_t</span> <span class="nf"><a href="#dataminer_value_uint32">dataminer_value_uint32</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">uint64_t</span> <span class="nf"><a href="#dataminer_value_uint64">dataminer_value_uint64</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">float</span> <span class="nf"><a href="#dataminer_value_float">dataminer_value_float</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">double</span> <span class="nf"><a href="#dataminer_value_double">dataminer_value_double</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">dataminer_date</span> <span class="nf"><a href="#dataminer_value_date">dataminer_value_date</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">dataminer_time</span> <span class="nf"><a href="#dataminer_value_time">dataminer_value_time</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">dataminer_timestamp</span> <span class="nf"><a href="#dataminer_value_timestamp">dataminer_value_timestamp</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">dataminer_interval</span> <span class="nf"><a href="#dataminer_value_interval">dataminer_value_interval</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">char</span> *<span class="nf"><a href="#dataminer_value_varchar">dataminer_value_varchar</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">char</span> *<span class="nf"><a href="#dataminer_value_varchar_internal">dataminer_value_varchar_internal</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="k">dataminer_string</span> <span class="nf"><a href="#dataminer_value_string_internal">dataminer_value_string_internal</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">dataminer_blob</span> <span class="nf"><a href="#dataminer_value_blob">dataminer_value_blob</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">bool</span> <span class="nf"><a href="#dataminer_value_is_null">dataminer_value_is_null</a></span>(<span class="kt">dataminer_result</span> *<span class="k">result</span>, <span class="kt">idx_t</span> <span class="k">col</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
</code></pre></div></div>
### **Helpers**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="nf"><a href="#dataminer_malloc">dataminer_malloc</a></span>(<span class="kt">size_t</span> <span class="k">size</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_free">dataminer_free</a></span>(<span class="kt">void</span> *<span class="k">ptr</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_vector_size">dataminer_vector_size</a></span>();
</code></pre></div></div>
### **Date/Time/Timestamp Helpers**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_date_struct</span> <span class="nf"><a href="#dataminer_from_date">dataminer_from_date</a></span>(<span class="kt">dataminer_date</span> <span class="k">date</span>);
<span class="kt">dataminer_date</span> <span class="nf"><a href="#dataminer_to_date">dataminer_to_date</a></span>(<span class="kt">dataminer_date_struct</span> <span class="k">date</span>);
<span class="kt">dataminer_time_struct</span> <span class="nf"><a href="#dataminer_from_time">dataminer_from_time</a></span>(<span class="kt">dataminer_time</span> <span class="k">time</span>);
<span class="kt">dataminer_time</span> <span class="nf"><a href="#dataminer_to_time">dataminer_to_time</a></span>(<span class="kt">dataminer_time_struct</span> <span class="k">time</span>);
<span class="kt">dataminer_timestamp_struct</span> <span class="nf"><a href="#dataminer_from_timestamp">dataminer_from_timestamp</a></span>(<span class="kt">dataminer_timestamp</span> <span class="k">ts</span>);
<span class="kt">dataminer_timestamp</span> <span class="nf"><a href="#dataminer_to_timestamp">dataminer_to_timestamp</a></span>(<span class="kt">dataminer_timestamp_struct</span> <span class="k">ts</span>);
</code></pre></div></div>
### **Hugeint Helpers**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">double</span> <span class="nf"><a href="#dataminer_hugeint_to_double">dataminer_hugeint_to_double</a></span>(<span class="kt">dataminer_hugeint</span> <span class="k">val</span>);
<span class="kt">dataminer_hugeint</span> <span class="nf"><a href="#dataminer_double_to_hugeint">dataminer_double_to_hugeint</a></span>(<span class="kt">double</span> <span class="k">val</span>);
<span class="k">dataminer_decimal</span> <span class="nf"><a href="#dataminer_double_to_decimal">dataminer_double_to_decimal</a></span>(<span class="kt">double</span> <span class="k">val</span>, <span class="kt">uint8_t</span> <span class="k">width</span>, <span class="kt">uint8_t</span> <span class="k">scale</span>);
</code></pre></div></div>
### **Decimal Helpers**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">double</span> <span class="nf"><a href="#dataminer_decimal_to_double">dataminer_decimal_to_double</a></span>(<span class="k">dataminer_decimal</span> <span class="k">val</span>);
</code></pre></div></div>
### **Prepared Statements**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_prepare">dataminer_prepare</a></span>(<span class="kt">dataminer_connection</span> <span class="k">connection</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">query</span>, <span class="kt">dataminer_prepared_statement</span> *<span class="k">out_prepared_statement</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_prepare">dataminer_destroy_prepare</a></span>(<span class="kt">dataminer_prepared_statement</span> *<span class="k">prepared_statement</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#dataminer_prepare_error">dataminer_prepare_error</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_nparams">dataminer_nparams</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>);
<span class="k">dataminer_type</span> <span class="nf"><a href="#dataminer_param_type">dataminer_param_type</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_clear_bindings">dataminer_clear_bindings</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_boolean">dataminer_bind_boolean</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">bool</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_int8">dataminer_bind_int8</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">int8_t</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_int16">dataminer_bind_int16</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">int16_t</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_int32">dataminer_bind_int32</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">int32_t</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_int64">dataminer_bind_int64</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">int64_t</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_hugeint">dataminer_bind_hugeint</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">dataminer_hugeint</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_decimal">dataminer_bind_decimal</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="k">dataminer_decimal</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_uint8">dataminer_bind_uint8</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">uint8_t</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_uint16">dataminer_bind_uint16</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">uint16_t</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_uint32">dataminer_bind_uint32</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">uint32_t</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_uint64">dataminer_bind_uint64</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">uint64_t</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_float">dataminer_bind_float</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">float</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_double">dataminer_bind_double</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">double</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_date">dataminer_bind_date</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">dataminer_date</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_time">dataminer_bind_time</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">dataminer_time</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_timestamp">dataminer_bind_timestamp</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">dataminer_timestamp</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_interval">dataminer_bind_interval</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">dataminer_interval</span> <span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_varchar">dataminer_bind_varchar</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_varchar_length">dataminer_bind_varchar_length</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>, <span class="kt">idx_t</span> <span class="k">length</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_blob">dataminer_bind_blob</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>, <span class="kt">const</span> <span class="kt">void</span> *<span class="k">data</span>, <span class="kt">idx_t</span> <span class="k">length</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_bind_null">dataminer_bind_null</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">idx_t</span> <span class="k">param_idx</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_execute_prepared">dataminer_execute_prepared</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">dataminer_result</span> *<span class="k">out_result</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_execute_prepared_arrow">dataminer_execute_prepared_arrow</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="kt">dataminer_arrow</span> *<span class="k">out_result</span>);
</code></pre></div></div>
### **Extract Statements**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_extract_statements">dataminer_extract_statements</a></span>(<span class="kt">dataminer_connection</span> <span class="k">connection</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">query</span>, <span class="k">dataminer_extracted_statements</span> *<span class="k">out_extracted_statements</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_prepare_extracted_statement">dataminer_prepare_extracted_statement</a></span>(<span class="kt">dataminer_connection</span> <span class="k">connection</span>, <span class="k">dataminer_extracted_statements</span> <span class="k">extracted_statements</span>, <span class="kt">idx_t</span> <span class="k">index</span>, <span class="kt">dataminer_prepared_statement</span> *<span class="k">out_prepared_statement</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#dataminer_extract_statements_error">dataminer_extract_statements_error</a></span>(<span class="k">dataminer_extracted_statements</span> <span class="k">extracted_statements</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_extracted">dataminer_destroy_extracted</a></span>(<span class="k">dataminer_extracted_statements</span> *<span class="k">extracted_statements</span>);
</code></pre></div></div>
### **Pending Result Interface**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_pending_prepared">dataminer_pending_prepared</a></span>(<span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>, <span class="k">dataminer_pending_result</span> *<span class="k">out_result</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_pending">dataminer_destroy_pending</a></span>(<span class="k">dataminer_pending_result</span> *<span class="k">pending_result</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#dataminer_pending_error">dataminer_pending_error</a></span>(<span class="k">dataminer_pending_result</span> <span class="k">pending_result</span>);
<span class="k">dataminer_pending_state</span> <span class="nf"><a href="#dataminer_pending_execute_task">dataminer_pending_execute_task</a></span>(<span class="k">dataminer_pending_result</span> <span class="k">pending_result</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_execute_pending">dataminer_execute_pending</a></span>(<span class="k">dataminer_pending_result</span> <span class="k">pending_result</span>, <span class="kt">dataminer_result</span> *<span class="k">out_result</span>);
</code></pre></div></div>
### **Value Interface**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_value">dataminer_destroy_value</a></span>(<span class="kt">dataminer_value</span> *<span class="k">value</span>);
<span class="kt">dataminer_value</span> <span class="nf"><a href="#dataminer_create_varchar">dataminer_create_varchar</a></span>(<span class="kt">const</span> <span class="kt">char</span> *<span class="k">text</span>);
<span class="kt">dataminer_value</span> <span class="nf"><a href="#dataminer_create_varchar_length">dataminer_create_varchar_length</a></span>(<span class="kt">const</span> <span class="kt">char</span> *<span class="k">text</span>, <span class="kt">idx_t</span> <span class="k">length</span>);
<span class="kt">dataminer_value</span> <span class="nf"><a href="#dataminer_create_int64">dataminer_create_int64</a></span>(<span class="kt">int64_t</span> <span class="k">val</span>);
<span class="kt">char</span> *<span class="nf"><a href="#dataminer_get_varchar">dataminer_get_varchar</a></span>(<span class="kt">dataminer_value</span> <span class="k">value</span>);
<span class="kt">int64_t</span> <span class="nf"><a href="#dataminer_get_int64">dataminer_get_int64</a></span>(<span class="kt">dataminer_value</span> <span class="k">value</span>);
</code></pre></div></div>
### **Logical Type Interface**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_create_logical_type">dataminer_create_logical_type</a></span>(<span class="k">dataminer_type</span> <span class="k">type</span>);
<span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_create_list_type">dataminer_create_list_type</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_create_map_type">dataminer_create_map_type</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">key_type</span>, <span class="kt">dataminer_logical_type</span> <span class="k">value_type</span>);
<span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_create_union_type">dataminer_create_union_type</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">member_types</span>, <span class="kt">const</span> <span class="kt">char</span> **<span class="k">member_names</span>, <span class="kt">idx_t</span> <span class="k">member_count</span>);
<span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_create_decimal_type">dataminer_create_decimal_type</a></span>(<span class="kt">uint8_t</span> <span class="k">width</span>, <span class="kt">uint8_t</span> <span class="k">scale</span>);
<span class="k">dataminer_type</span> <span class="nf"><a href="#dataminer_get_type_id">dataminer_get_type_id</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">uint8_t</span> <span class="nf"><a href="#dataminer_decimal_width">dataminer_decimal_width</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">uint8_t</span> <span class="nf"><a href="#dataminer_decimal_scale">dataminer_decimal_scale</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="k">dataminer_type</span> <span class="nf"><a href="#dataminer_decimal_internal_type">dataminer_decimal_internal_type</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="k">dataminer_type</span> <span class="nf"><a href="#dataminer_enum_internal_type">dataminer_enum_internal_type</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">uint32_t</span> <span class="nf"><a href="#dataminer_enum_dictionary_size">dataminer_enum_dictionary_size</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">char</span> *<span class="nf"><a href="#dataminer_enum_dictionary_value">dataminer_enum_dictionary_value</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_list_type_child_type">dataminer_list_type_child_type</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_map_type_key_type">dataminer_map_type_key_type</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_map_type_value_type">dataminer_map_type_value_type</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_struct_type_child_count">dataminer_struct_type_child_count</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">char</span> *<span class="nf"><a href="#dataminer_struct_type_child_name">dataminer_struct_type_child_name</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_struct_type_child_type">dataminer_struct_type_child_type</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_union_type_member_count">dataminer_union_type_member_count</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">char</span> *<span class="nf"><a href="#dataminer_union_type_member_name">dataminer_union_type_member_name</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_union_type_member_type">dataminer_union_type_member_type</a></span>(<span class="kt">dataminer_logical_type</span> <span class="k">type</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_logical_type">dataminer_destroy_logical_type</a></span>(<span class="kt">dataminer_logical_type</span> *<span class="k">type</span>);
</code></pre></div></div>
### **Data Chunk Interface**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_data_chunk</span> <span class="nf"><a href="#dataminer_create_data_chunk">dataminer_create_data_chunk</a></span>(<span class="kt">dataminer_logical_type</span> *<span class="k">types</span>, <span class="kt">idx_t</span> <span class="k">column_count</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_data_chunk">dataminer_destroy_data_chunk</a></span>(<span class="kt">dataminer_data_chunk</span> *<span class="k">chunk</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_data_chunk_reset">dataminer_data_chunk_reset</a></span>(<span class="kt">dataminer_data_chunk</span> <span class="k">chunk</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_data_chunk_get_column_count">dataminer_data_chunk_get_column_count</a></span>(<span class="kt">dataminer_data_chunk</span> <span class="k">chunk</span>);
<span class="kt">dataminer_vector</span> <span class="nf"><a href="#dataminer_data_chunk_get_vector">dataminer_data_chunk_get_vector</a></span>(<span class="kt">dataminer_data_chunk</span> <span class="k">chunk</span>, <span class="kt">idx_t</span> <span class="k">col_idx</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_data_chunk_get_size">dataminer_data_chunk_get_size</a></span>(<span class="kt">dataminer_data_chunk</span> <span class="k">chunk</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_data_chunk_set_size">dataminer_data_chunk_set_size</a></span>(<span class="kt">dataminer_data_chunk</span> <span class="k">chunk</span>, <span class="kt">idx_t</span> <span class="k">size</span>);
</code></pre></div></div>
### **Vector Interface**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="nf"><a href="#dataminer_vector_get_column_type">dataminer_vector_get_column_type</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>);
<span class="kt">void</span> *<span class="nf"><a href="#dataminer_vector_get_data">dataminer_vector_get_data</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>);
<span class="kt">uint64_t</span> *<span class="nf"><a href="#dataminer_vector_get_validity">dataminer_vector_get_validity</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_vector_ensure_validity_writable">dataminer_vector_ensure_validity_writable</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_vector_assign_string_element">dataminer_vector_assign_string_element</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>, <span class="kt">idx_t</span> <span class="k">index</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">str</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_vector_assign_string_element_len">dataminer_vector_assign_string_element_len</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>, <span class="kt">idx_t</span> <span class="k">index</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">str</span>, <span class="kt">idx_t</span> <span class="k">str_len</span>);
<span class="kt">dataminer_vector</span> <span class="nf"><a href="#dataminer_list_vector_get_child">dataminer_list_vector_get_child</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_list_vector_get_size">dataminer_list_vector_get_size</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_list_vector_set_size">dataminer_list_vector_set_size</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>, <span class="kt">idx_t</span> <span class="k">size</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_list_vector_reserve">dataminer_list_vector_reserve</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>, <span class="kt">idx_t</span> <span class="k">required_capacity</span>);
<span class="kt">dataminer_vector</span> <span class="nf"><a href="#dataminer_struct_vector_get_child">dataminer_struct_vector_get_child</a></span>(<span class="kt">dataminer_vector</span> <span class="k">vector</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
</code></pre></div></div>
### **Validity Mask Functions**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">bool</span> <span class="nf"><a href="#dataminer_validity_row_is_valid">dataminer_validity_row_is_valid</a></span>(<span class="kt">uint64_t</span> *<span class="k">validity</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_validity_set_row_validity">dataminer_validity_set_row_validity</a></span>(<span class="kt">uint64_t</span> *<span class="k">validity</span>, <span class="kt">idx_t</span> <span class="k">row</span>, <span class="kt">bool</span> <span class="k">valid</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_validity_set_row_invalid">dataminer_validity_set_row_invalid</a></span>(<span class="kt">uint64_t</span> *<span class="k">validity</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_validity_set_row_valid">dataminer_validity_set_row_valid</a></span>(<span class="kt">uint64_t</span> *<span class="k">validity</span>, <span class="kt">idx_t</span> <span class="k">row</span>);
</code></pre></div></div>
### **Table Functions**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_table_function</span> <span class="nf"><a href="#dataminer_create_table_function">dataminer_create_table_function</a></span>();
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_table_function">dataminer_destroy_table_function</a></span>(<span class="kt">dataminer_table_function</span> *<span class="k">table_function</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_table_function_set_name">dataminer_table_function_set_name</a></span>(<span class="kt">dataminer_table_function</span> <span class="k">table_function</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_table_function_add_parameter">dataminer_table_function_add_parameter</a></span>(<span class="kt">dataminer_table_function</span> <span class="k">table_function</span>, <span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_table_function_set_extra_info">dataminer_table_function_set_extra_info</a></span>(<span class="kt">dataminer_table_function</span> <span class="k">table_function</span>, <span class="kt">void</span> *<span class="k">extra_info</span>, <span class="k">dataminer_delete_callback_t</span> <span class="k">destroy</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_table_function_set_bind">dataminer_table_function_set_bind</a></span>(<span class="kt">dataminer_table_function</span> <span class="k">table_function</span>, <span class="k">dataminer_table_function_bind_t</span> <span class="k">bind</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_table_function_set_init">dataminer_table_function_set_init</a></span>(<span class="kt">dataminer_table_function</span> <span class="k">table_function</span>, <span class="k">dataminer_table_function_init_t</span> <span class="k">init</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_table_function_set_local_init">dataminer_table_function_set_local_init</a></span>(<span class="kt">dataminer_table_function</span> <span class="k">table_function</span>, <span class="k">dataminer_table_function_init_t</span> <span class="k">init</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_table_function_set_function">dataminer_table_function_set_function</a></span>(<span class="kt">dataminer_table_function</span> <span class="k">table_function</span>, <span class="k">dataminer_table_function_t</span> <span class="k">function</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_table_function_supports_projection_pushdown">dataminer_table_function_supports_projection_pushdown</a></span>(<span class="kt">dataminer_table_function</span> <span class="k">table_function</span>, <span class="kt">bool</span> <span class="k">pushdown</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_register_table_function">dataminer_register_table_function</a></span>(<span class="kt">dataminer_connection</span> <span class="k">con</span>, <span class="kt">dataminer_table_function</span> <span class="k">function</span>);
</code></pre></div></div>
### **Table Function Bind**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="nf"><a href="#dataminer_bind_get_extra_info">dataminer_bind_get_extra_info</a></span>(<span class="kt">dataminer_bind_info</span> <span class="k">info</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_bind_add_result_column">dataminer_bind_add_result_column</a></span>(<span class="kt">dataminer_bind_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>, <span class="kt">dataminer_logical_type</span> <span class="k">type</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_bind_get_parameter_count">dataminer_bind_get_parameter_count</a></span>(<span class="kt">dataminer_bind_info</span> <span class="k">info</span>);
<span class="kt">dataminer_value</span> <span class="nf"><a href="#dataminer_bind_get_parameter">dataminer_bind_get_parameter</a></span>(<span class="kt">dataminer_bind_info</span> <span class="k">info</span>, <span class="kt">idx_t</span> <span class="k">index</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_bind_set_bind_data">dataminer_bind_set_bind_data</a></span>(<span class="kt">dataminer_bind_info</span> <span class="k">info</span>, <span class="kt">void</span> *<span class="k">bind_data</span>, <span class="k">dataminer_delete_callback_t</span> <span class="k">destroy</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_bind_set_cardinality">dataminer_bind_set_cardinality</a></span>(<span class="kt">dataminer_bind_info</span> <span class="k">info</span>, <span class="kt">idx_t</span> <span class="k">cardinality</span>, <span class="kt">bool</span> <span class="k">is_exact</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_bind_set_error">dataminer_bind_set_error</a></span>(<span class="kt">dataminer_bind_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error</span>);
</code></pre></div></div>
### **Table Function Init**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="nf"><a href="#dataminer_init_get_extra_info">dataminer_init_get_extra_info</a></span>(<span class="kt">dataminer_init_info</span> <span class="k">info</span>);
<span class="kt">void</span> *<span class="nf"><a href="#dataminer_init_get_bind_data">dataminer_init_get_bind_data</a></span>(<span class="kt">dataminer_init_info</span> <span class="k">info</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_init_set_init_data">dataminer_init_set_init_data</a></span>(<span class="kt">dataminer_init_info</span> <span class="k">info</span>, <span class="kt">void</span> *<span class="k">init_data</span>, <span class="k">dataminer_delete_callback_t</span> <span class="k">destroy</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_init_get_column_count">dataminer_init_get_column_count</a></span>(<span class="kt">dataminer_init_info</span> <span class="k">info</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_init_get_column_index">dataminer_init_get_column_index</a></span>(<span class="kt">dataminer_init_info</span> <span class="k">info</span>, <span class="kt">idx_t</span> <span class="k">column_index</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_init_set_max_threads">dataminer_init_set_max_threads</a></span>(<span class="kt">dataminer_init_info</span> <span class="k">info</span>, <span class="kt">idx_t</span> <span class="k">max_threads</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_init_set_error">dataminer_init_set_error</a></span>(<span class="kt">dataminer_init_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error</span>);
</code></pre></div></div>
### **Table Function**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="nf"><a href="#dataminer_function_get_extra_info">dataminer_function_get_extra_info</a></span>(<span class="kt">dataminer_function_info</span> <span class="k">info</span>);
<span class="kt">void</span> *<span class="nf"><a href="#dataminer_function_get_bind_data">dataminer_function_get_bind_data</a></span>(<span class="kt">dataminer_function_info</span> <span class="k">info</span>);
<span class="kt">void</span> *<span class="nf"><a href="#dataminer_function_get_init_data">dataminer_function_get_init_data</a></span>(<span class="kt">dataminer_function_info</span> <span class="k">info</span>);
<span class="kt">void</span> *<span class="nf"><a href="#dataminer_function_get_local_init_data">dataminer_function_get_local_init_data</a></span>(<span class="kt">dataminer_function_info</span> <span class="k">info</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_function_set_error">dataminer_function_set_error</a></span>(<span class="kt">dataminer_function_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error</span>);
</code></pre></div></div>
### **Replacement Scans**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="nf"><a href="#dataminer_add_replacement_scan">dataminer_add_replacement_scan</a></span>(<span class="kt">dataminer_database</span> <span class="k">db</span>, <span class="k">dataminer_replacement_callback_t</span> <span class="k">replacement</span>, <span class="kt">void</span> *<span class="k">extra_data</span>, <span class="k">dataminer_delete_callback_t</span> <span class="k">delete_callback</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_replacement_scan_set_function_name">dataminer_replacement_scan_set_function_name</a></span>(<span class="kt">dataminer_replacement_scan_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">function_name</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_replacement_scan_add_parameter">dataminer_replacement_scan_add_parameter</a></span>(<span class="kt">dataminer_replacement_scan_info</span> <span class="k">info</span>, <span class="kt">dataminer_value</span> <span class="k">parameter</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_replacement_scan_set_error">dataminer_replacement_scan_set_error</a></span>(<span class="kt">dataminer_replacement_scan_info</span> <span class="k">info</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error</span>);
</code></pre></div></div>
### **Appender**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_appender_create">dataminer_appender_create</a></span>(<span class="kt">dataminer_connection</span> <span class="k">connection</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">schema</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">table</span>, <span class="kt">dataminer_appender</span> *<span class="k">out_appender</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#dataminer_appender_error">dataminer_appender_error</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_appender_flush">dataminer_appender_flush</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_appender_close">dataminer_appender_close</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_appender_destroy">dataminer_appender_destroy</a></span>(<span class="kt">dataminer_appender</span> *<span class="k">appender</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_appender_begin_row">dataminer_appender_begin_row</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_appender_end_row">dataminer_appender_end_row</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_bool">dataminer_append_bool</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">bool</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_int8">dataminer_append_int8</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">int8_t</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_int16">dataminer_append_int16</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">int16_t</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_int32">dataminer_append_int32</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">int32_t</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_int64">dataminer_append_int64</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">int64_t</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_hugeint">dataminer_append_hugeint</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">dataminer_hugeint</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_uint8">dataminer_append_uint8</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">uint8_t</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_uint16">dataminer_append_uint16</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">uint16_t</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_uint32">dataminer_append_uint32</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">uint32_t</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_uint64">dataminer_append_uint64</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">uint64_t</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_float">dataminer_append_float</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">float</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_double">dataminer_append_double</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">double</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_date">dataminer_append_date</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">dataminer_date</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_time">dataminer_append_time</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">dataminer_time</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_timestamp">dataminer_append_timestamp</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">dataminer_timestamp</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_interval">dataminer_append_interval</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">dataminer_interval</span> <span class="k">value</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_varchar">dataminer_append_varchar</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_varchar_length">dataminer_append_varchar_length</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>, <span class="kt">idx_t</span> <span class="k">length</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_blob">dataminer_append_blob</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">const</span> <span class="kt">void</span> *<span class="k">data</span>, <span class="kt">idx_t</span> <span class="k">length</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_null">dataminer_append_null</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_append_data_chunk">dataminer_append_data_chunk</a></span>(<span class="kt">dataminer_appender</span> <span class="k">appender</span>, <span class="kt">dataminer_data_chunk</span> <span class="k">chunk</span>);
</code></pre></div></div>
### **Arrow Interface**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_query_arrow">dataminer_query_arrow</a></span>(<span class="kt">dataminer_connection</span> <span class="k">connection</span>, <span class="kt">const</span> <span class="kt">char</span> *<span class="k">query</span>, <span class="kt">dataminer_arrow</span> *<span class="k">out_result</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_query_arrow_schema">dataminer_query_arrow_schema</a></span>(<span class="kt">dataminer_arrow</span> <span class="k">result</span>, <span class="kt">dataminer_arrow_schema</span> *<span class="k">out_schema</span>);
<span class="kt">dataminer_state</span> <span class="nf"><a href="#dataminer_query_arrow_array">dataminer_query_arrow_array</a></span>(<span class="kt">dataminer_arrow</span> <span class="k">result</span>, <span class="kt">dataminer_arrow_array</span> *<span class="k">out_array</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_arrow_column_count">dataminer_arrow_column_count</a></span>(<span class="kt">dataminer_arrow</span> <span class="k">result</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_arrow_row_count">dataminer_arrow_row_count</a></span>(<span class="kt">dataminer_arrow</span> <span class="k">result</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_arrow_rows_changed">dataminer_arrow_rows_changed</a></span>(<span class="kt">dataminer_arrow</span> <span class="k">result</span>);
<span class="kt">const</span> <span class="kt">char</span> *<span class="nf"><a href="#dataminer_query_arrow_error">dataminer_query_arrow_error</a></span>(<span class="kt">dataminer_arrow</span> <span class="k">result</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_arrow">dataminer_destroy_arrow</a></span>(<span class="kt">dataminer_arrow</span> *<span class="k">result</span>);
</code></pre></div></div>
### **Threading Information**
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="nf"><a href="#dataminer_execute_tasks">dataminer_execute_tasks</a></span>(<span class="kt">dataminer_database</span> <span class="k">database</span>, <span class="kt">idx_t</span> <span class="k">max_tasks</span>);
<span class="k">dataminer_task_state</span> <span class="nf"><a href="#dataminer_create_task_state">dataminer_create_task_state</a></span>(<span class="kt">dataminer_database</span> <span class="k">database</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_execute_tasks_state">dataminer_execute_tasks_state</a></span>(<span class="k">dataminer_task_state</span> <span class="k">state</span>);
<span class="kt">idx_t</span> <span class="nf"><a href="#dataminer_execute_n_tasks_state">dataminer_execute_n_tasks_state</a></span>(<span class="k">dataminer_task_state</span> <span class="k">state</span>, <span class="kt">idx_t</span> <span class="k">max_tasks</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_finish_execution">dataminer_finish_execution</a></span>(<span class="k">dataminer_task_state</span> <span class="k">state</span>);
<span class="kt">bool</span> <span class="nf"><a href="#dataminer_task_state_is_finished">dataminer_task_state_is_finished</a></span>(<span class="k">dataminer_task_state</span> <span class="k">state</span>);
<span class="kt">void</span> <span class="nf"><a href="#dataminer_destroy_task_state">dataminer_destroy_task_state</a></span>(<span class="k">dataminer_task_state</span> <span class="k">state</span>);
<span class="kt">bool</span> <span class="nf"><a href="#dataminer_execution_is_finished">dataminer_execution_is_finished</a></span>(<span class="kt">dataminer_connection</span> <span class="k">con</span>);
</code></pre></div></div>
### dataminer_open
---
Creates a new database or opens an existing database file stored at the the given path.
If no path is given a new in-memory database is created instead.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_open</span>(<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">path</span>,<span class="k">
</span>  <span class="kt">dataminer_database</span> *<span class="k">out_database
</span>);
</code></pre></div></div>
#### Parameters
---
* `path`

Path to the database file on disk, or `nullptr` or `:memory:` to open an in-memory database.
* `out_database`

The result database object.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_open_ext
---
Extended version of dataminer_open. Creates a new database or opens an existing database file stored at the the given path.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_open_ext</span>(<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">path</span>,<span class="k">
</span>  <span class="kt">dataminer_database</span> *<span class="k">out_database</span>,<span class="k">
</span>  <span class="kt">dataminer_config</span> <span class="k">config</span>,<span class="k">
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

If set and the function returns dataminerError, this will contain the reason why the start-up failed.
Note that the error must be freed using `dataminer_free`.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_close
---
Closes the specified database and de-allocates all memory allocated for that database.
This should be called after you are done with any database allocated through `dataminer_open`.
Note that failing to call `dataminer_close` (in case of e.g. a program crash) will not cause data corruption.
Still it is recommended to always correctly close a database object after you are done with it.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_close</span>(<span class="k">
</span>  <span class="kt">dataminer_database</span> *<span class="k">database
</span>);
</code></pre></div></div>
#### Parameters
---
* `database`

The database object to shut down.

<br>

### dataminer_connect
---
Opens a connection to a database. Connections are required to query the database, and store transactional state
associated with the connection.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_connect</span>(<span class="k">
</span>  <span class="kt">dataminer_database</span> <span class="k">database</span>,<span class="k">
</span>  <span class="kt">dataminer_connection</span> *<span class="k">out_connection
</span>);
</code></pre></div></div>
#### Parameters
---
* `database`

The database file to connect to.
* `out_connection`

The result connection object.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_disconnect
---
Closes the specified connection and de-allocates all memory allocated for that connection.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_disconnect</span>(<span class="k">
</span>  <span class="kt">dataminer_connection</span> *<span class="k">connection
</span>);
</code></pre></div></div>
#### Parameters
---
* `connection`

The connection to close.

<br>

### dataminer_library_version
---
Returns the version of the linked dataminer, with a version postfix for dev versions

Usually used for developing C extensions that must return this for a compatibility check.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">dataminer_library_version</span>(<span class="k">
</span>  <span class="k">
</span>);
</code></pre></div></div>
<br>

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

### dataminer_query
---
Executes a SQL query within a connection and stores the full (materialized) result in the out_result pointer.
If the query fails to execute, dataminerError is returned and the error message can be retrieved by calling
`dataminer_result_error`.

Note that after running `dataminer_query`, `dataminer_destroy_result` must be called on the result object even if the
query fails, otherwise the error stored within the result will not be freed correctly.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_query</span>(<span class="k">
</span>  <span class="kt">dataminer_connection</span> <span class="k">connection</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">query</span>,<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">out_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `connection`

The connection to perform the query in.
* `query`

The SQL query to run.
* `out_result`

The query result.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_destroy_result
---
Closes the result and de-allocates all memory allocated for that connection.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_result</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result to destroy.

<br>

### dataminer_column_name
---
Returns the column name of the specified column. The result should not need be freed; the column names will
automatically be destroyed when the result is destroyed.

Returns `NULL` if the column is out of range.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">dataminer_column_name</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object to fetch the column name from.
* `col`

The column index.
* `returns`

The column name of the specified column.

<br>

### dataminer_column_type
---
Returns the column type of the specified column.

Returns `dataminer_TYPE_INVALID` if the column is out of range.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">dataminer_type</span> <span class="k">dataminer_column_type</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object to fetch the column type from.
* `col`

The column index.
* `returns`

The column type of the specified column.

<br>

### dataminer_column_logical_type
---
Returns the logical column type of the specified column.

The return type of this call should be destroyed with `dataminer_destroy_logical_type`.

Returns `NULL` if the column is out of range.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_column_logical_type</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object to fetch the column type from.
* `col`

The column index.
* `returns`

The logical column type of the specified column.

<br>

### dataminer_column_count
---
Returns the number of columns present in a the result object.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_column_count</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object.
* `returns`

The number of columns present in the result object.

<br>

### dataminer_row_count
---
Returns the number of rows present in a the result object.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_row_count</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object.
* `returns`

The number of rows present in the result object.

<br>

### dataminer_rows_changed
---
Returns the number of rows changed by the query stored in the result. This is relevant only for INSERT/UPDATE/DELETE
queries. For other queries the rows_changed will be 0.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_rows_changed</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object.
* `returns`

The number of rows changed.

<br>

### dataminer_column_data
---
**DEPRECATED**: Prefer using `dataminer_result_get_chunk` instead.

Returns the data of a specific column of a result in columnar format.

The function returns a dense array which contains the result data. The exact type stored in the array depends on the
corresponding dataminer_type (as provided by `dataminer_column_type`). For the exact type by which the data should be
accessed, see the comments in [the types section](types) or the `dataminer_TYPE` enum.

For example, for a column of type `dataminer_TYPE_INTEGER`, rows can be accessed in the following manner:
```c
int32_t *data = (int32_t *) dataminer_column_data(&result, 0);
printf("Data for row %d: %d\n", row, data[row]);
```

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">dataminer_column_data</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object to fetch the column data from.
* `col`

The column index.
* `returns`

The column data of the specified column.

<br>

### dataminer_nullmask_data
---
**DEPRECATED**: Prefer using `dataminer_result_get_chunk` instead.

Returns the nullmask of a specific column of a result in columnar format. The nullmask indicates for every row
whether or not the corresponding row is `NULL`. If a row is `NULL`, the values present in the array provided
by `dataminer_column_data` are undefined.

```c
int32_t *data = (int32_t *) dataminer_column_data(&result, 0);
bool *nullmask = dataminer_nullmask_data(&result, 0);
if (nullmask[row]) {
printf("Data for row %d: NULL\n", row);
} else {
printf("Data for row %d: %d\n", row, data[row]);
}
```

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">bool</span> *<span class="k">dataminer_nullmask_data</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object to fetch the nullmask from.
* `col`

The column index.
* `returns`

The nullmask of the specified column.

<br>

### dataminer_result_error
---
Returns the error message contained within the result. The error is only set if `dataminer_query` returns `dataminerError`.

The result of this function must not be freed. It will be cleaned up when `dataminer_destroy_result` is called.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">dataminer_result_error</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object to fetch the error from.
* `returns`

The error of the result.

<br>

### dataminer_result_get_chunk
---
Fetches a data chunk from the dataminer_result. This function should be called repeatedly until the result is exhausted.

The result must be destroyed with `dataminer_destroy_data_chunk`.

This function supersedes all `dataminer_value` functions, as well as the `dataminer_column_data` and `dataminer_nullmask_data`
functions. It results in significantly better performance, and should be preferred in newer code-bases.

If this function is used, none of the other result functions can be used and vice versa (i.e. this function cannot be
mixed with the legacy result functions).

Use `dataminer_result_chunk_count` to figure out how many chunks there are in the result.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_data_chunk</span> <span class="k">dataminer_result_get_chunk</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> <span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">chunk_index
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object to fetch the data chunk from.
* `chunk_index`

The chunk index to fetch from.
* `returns`

The resulting data chunk. Returns `NULL` if the chunk index is out of bounds.

<br>

### dataminer_result_chunk_count
---
Returns the number of data chunks present in the result.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_result_chunk_count</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> <span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object
* `returns`

The resulting data chunk. Returns `NULL` if the chunk index is out of bounds.

<br>

### dataminer_value_boolean
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">bool</span> <span class="k">dataminer_value_boolean</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The boolean value at the specified location, or false if the value cannot be converted.

<br>

### dataminer_value_int8
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">int8_t</span> <span class="k">dataminer_value_int8</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The int8_t value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_int16
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">int16_t</span> <span class="k">dataminer_value_int16</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The int16_t value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_int32
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">int32_t</span> <span class="k">dataminer_value_int32</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The int32_t value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_int64
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">int64_t</span> <span class="k">dataminer_value_int64</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The int64_t value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_hugeint
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_hugeint</span> <span class="k">dataminer_value_hugeint</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The dataminer_hugeint value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_decimal
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">dataminer_decimal</span> <span class="k">dataminer_value_decimal</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The dataminer_decimal value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_uint8
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint8_t</span> <span class="k">dataminer_value_uint8</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The uint8_t value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_uint16
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint16_t</span> <span class="k">dataminer_value_uint16</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The uint16_t value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_uint32
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint32_t</span> <span class="k">dataminer_value_uint32</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The uint32_t value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_uint64
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint64_t</span> <span class="k">dataminer_value_uint64</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The uint64_t value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_float
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">float</span> <span class="k">dataminer_value_float</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The float value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_double
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">double</span> <span class="k">dataminer_value_double</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The double value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_date
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_date</span> <span class="k">dataminer_value_date</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The dataminer_date value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_time
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_time</span> <span class="k">dataminer_value_time</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The dataminer_time value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_timestamp
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_timestamp</span> <span class="k">dataminer_value_timestamp</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The dataminer_timestamp value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_interval
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_interval</span> <span class="k">dataminer_value_interval</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The dataminer_interval value at the specified location, or 0 if the value cannot be converted.

<br>

### dataminer_value_varchar
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">dataminer_value_varchar</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `DEPRECATED`

use dataminer_value_string instead. This function does not work correctly if the string contains null bytes.
* `returns`

The text value at the specified location as a null-terminated string, or nullptr if the value cannot be
converted. The result must be freed with `dataminer_free`.

<br>

### dataminer_value_varchar_internal
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">dataminer_value_varchar_internal</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `DEPRECATED`

use dataminer_value_string_internal instead. This function does not work correctly if the string contains
null bytes.
* `returns`

The char* value at the specified location. ONLY works on VARCHAR columns and does not auto-cast.
If the column is NOT a VARCHAR column this function will return NULL.

The result must NOT be freed.

<br>

### dataminer_value_string_internal
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">dataminer_string</span> <span class="k">dataminer_value_string_internal</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `DEPRECATED`

use dataminer_value_string_internal instead. This function does not work correctly if the string contains
null bytes.
* `returns`

The char* value at the specified location. ONLY works on VARCHAR columns and does not auto-cast.
If the column is NOT a VARCHAR column this function will return NULL.

The result must NOT be freed.

<br>

### dataminer_value_blob
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_blob</span> <span class="k">dataminer_value_blob</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The dataminer_blob value at the specified location. Returns a blob with blob.data set to nullptr if the
value cannot be converted. The resulting "blob.data" must be freed with `dataminer_free.`

<br>

### dataminer_value_is_null
---
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">bool</span> <span class="k">dataminer_value_is_null</span>(<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">result</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

Returns true if the value at the specified index is NULL, and false otherwise.

<br>

### dataminer_malloc
---
Allocate `size` bytes of memory using the DataMiner internal malloc function. Any memory allocated in this manner
should be freed using `dataminer_free`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">dataminer_malloc</span>(<span class="k">
</span>  <span class="kt">size_t</span> <span class="k">size
</span>);
</code></pre></div></div>
#### Parameters
---
* `size`

The number of bytes to allocate.
* `returns`

A pointer to the allocated memory region.

<br>

### dataminer_free
---
Free a value returned from `dataminer_malloc`, `dataminer_value_varchar` or `dataminer_value_blob`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_free</span>(<span class="k">
</span>  <span class="kt">void</span> *<span class="k">ptr
</span>);
</code></pre></div></div>
#### Parameters
---
* `ptr`

The memory region to de-allocate.

<br>

### dataminer_vector_size
---
The internal vector size used by dataminer.
This is the amount of tuples that will fit into a data chunk created by `dataminer_create_data_chunk`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_vector_size</span>(<span class="k">
</span>  <span class="k">
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The vector size.

<br>

### dataminer_from_date
---
Decompose a `dataminer_date` object into year, month and date (stored as `dataminer_date_struct`).

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_date_struct</span> <span class="k">dataminer_from_date</span>(<span class="k">
</span>  <span class="kt">dataminer_date</span> <span class="k">date
</span>);
</code></pre></div></div>
#### Parameters
---
* `date`

The date object, as obtained from a `dataminer_TYPE_DATE` column.
* `returns`

The `dataminer_date_struct` with the decomposed elements.

<br>

### dataminer_to_date
---
Re-compose a `dataminer_date` from year, month and date (`dataminer_date_struct`).

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_date</span> <span class="k">dataminer_to_date</span>(<span class="k">
</span>  <span class="kt">dataminer_date_struct</span> <span class="k">date
</span>);
</code></pre></div></div>
#### Parameters
---
* `date`

The year, month and date stored in a `dataminer_date_struct`.
* `returns`

The `dataminer_date` element.

<br>

### dataminer_from_time
---
Decompose a `dataminer_time` object into hour, minute, second and microsecond (stored as `dataminer_time_struct`).

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_time_struct</span> <span class="k">dataminer_from_time</span>(<span class="k">
</span>  <span class="kt">dataminer_time</span> <span class="k">time
</span>);
</code></pre></div></div>
#### Parameters
---
* `time`

The time object, as obtained from a `dataminer_TYPE_TIME` column.
* `returns`

The `dataminer_time_struct` with the decomposed elements.

<br>

### dataminer_to_time
---
Re-compose a `dataminer_time` from hour, minute, second and microsecond (`dataminer_time_struct`).

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_time</span> <span class="k">dataminer_to_time</span>(<span class="k">
</span>  <span class="kt">dataminer_time_struct</span> <span class="k">time
</span>);
</code></pre></div></div>
#### Parameters
---
* `time`

The hour, minute, second and microsecond in a `dataminer_time_struct`.
* `returns`

The `dataminer_time` element.

<br>

### dataminer_from_timestamp
---
Decompose a `dataminer_timestamp` object into a `dataminer_timestamp_struct`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_timestamp_struct</span> <span class="k">dataminer_from_timestamp</span>(<span class="k">
</span>  <span class="kt">dataminer_timestamp</span> <span class="k">ts
</span>);
</code></pre></div></div>
#### Parameters
---
* `ts`

The ts object, as obtained from a `dataminer_TYPE_TIMESTAMP` column.
* `returns`

The `dataminer_timestamp_struct` with the decomposed elements.

<br>

### dataminer_to_timestamp
---
Re-compose a `dataminer_timestamp` from a dataminer_timestamp_struct.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_timestamp</span> <span class="k">dataminer_to_timestamp</span>(<span class="k">
</span>  <span class="kt">dataminer_timestamp_struct</span> <span class="k">ts
</span>);
</code></pre></div></div>
#### Parameters
---
* `ts`

The de-composed elements in a `dataminer_timestamp_struct`.
* `returns`

The `dataminer_timestamp` element.

<br>

### dataminer_hugeint_to_double
---
Converts a dataminer_hugeint object (as obtained from a `dataminer_TYPE_HUGEINT` column) into a double.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">double</span> <span class="k">dataminer_hugeint_to_double</span>(<span class="k">
</span>  <span class="kt">dataminer_hugeint</span> <span class="k">val
</span>);
</code></pre></div></div>
#### Parameters
---
* `val`

The hugeint value.
* `returns`

The converted `double` element.

<br>

### dataminer_double_to_hugeint
---
Converts a double value to a dataminer_hugeint object.

If the conversion fails because the double value is too big the result will be 0.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_hugeint</span> <span class="k">dataminer_double_to_hugeint</span>(<span class="k">
</span>  <span class="kt">double</span> <span class="k">val
</span>);
</code></pre></div></div>
#### Parameters
---
* `val`

The double value.
* `returns`

The converted `dataminer_hugeint` element.

<br>

### dataminer_double_to_decimal
---
Converts a double value to a dataminer_decimal object.

If the conversion fails because the double value is too big, or the width/scale are invalid the result will be 0.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">dataminer_decimal</span> <span class="k">dataminer_double_to_decimal</span>(<span class="k">
</span>  <span class="kt">double</span> <span class="k">val</span>,<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">width</span>,<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">scale
</span>);
</code></pre></div></div>
#### Parameters
---
* `val`

The double value.
* `returns`

The converted `dataminer_decimal` element.

<br>

### dataminer_decimal_to_double
---
Converts a dataminer_decimal object (as obtained from a `dataminer_TYPE_DECIMAL` column) into a double.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">double</span> <span class="k">dataminer_decimal_to_double</span>(<span class="k">
</span>  <span class="k">dataminer_decimal</span> <span class="k">val
</span>);
</code></pre></div></div>
#### Parameters
---
* `val`

The decimal value.
* `returns`

The converted `double` element.

<br>

### dataminer_prepare
---
Create a prepared statement object from a query.

Note that after calling `dataminer_prepare`, the prepared statement should always be destroyed using
`dataminer_destroy_prepare`, even if the prepare fails.

If the prepare fails, `dataminer_prepare_error` can be called to obtain the reason why the prepare failed.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_prepare</span>(<span class="k">
</span>  <span class="kt">dataminer_connection</span> <span class="k">connection</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">query</span>,<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> *<span class="k">out_prepared_statement
</span>);
</code></pre></div></div>
#### Parameters
---
* `connection`

The connection object
* `query`

The SQL query to prepare
* `out_prepared_statement`

The resulting prepared statement object
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_destroy_prepare
---
Closes the prepared statement and de-allocates all memory allocated for the statement.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_prepare</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> *<span class="k">prepared_statement
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to destroy.

<br>

### dataminer_prepare_error
---
Returns the error message associated with the given prepared statement.
If the prepared statement has no error message, this returns `nullptr` instead.

The error message should not be freed. It will be de-allocated when `dataminer_destroy_prepare` is called.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">dataminer_prepare_error</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to obtain the error from.
* `returns`

The error message, or `nullptr` if there is none.

<br>

### dataminer_nparams
---
Returns the number of parameters that can be provided to the given prepared statement.

Returns 0 if the query was not successfully prepared.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_nparams</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to obtain the number of parameters for.

<br>

### dataminer_param_type
---
Returns the parameter type for the parameter at the given index.

Returns `dataminer_TYPE_INVALID` if the parameter index is out of range or the statement was not successfully prepared.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">dataminer_type</span> <span class="k">dataminer_param_type</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement.
* `param_idx`

The parameter index.
* `returns`

The parameter type

<br>

### dataminer_clear_bindings
---
Clear the params bind to the prepared statement.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_clear_bindings</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_boolean
---
Binds a bool value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_boolean</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">bool</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_int8
---
Binds an int8_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_int8</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">int8_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_int16
---
Binds an int16_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_int16</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">int16_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_int32
---
Binds an int32_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_int32</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">int32_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_int64
---
Binds an int64_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_int64</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">int64_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_hugeint
---
Binds an dataminer_hugeint value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_hugeint</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">dataminer_hugeint</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_decimal
---
Binds a dataminer_decimal value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_decimal</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="k">dataminer_decimal</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_uint8
---
Binds an uint8_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_uint8</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_uint16
---
Binds an uint16_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_uint16</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">uint16_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_uint32
---
Binds an uint32_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_uint32</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">uint32_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_uint64
---
Binds an uint64_t value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_uint64</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">uint64_t</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_float
---
Binds an float value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_float</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">float</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_double
---
Binds an double value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_double</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">double</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_date
---
Binds a dataminer_date value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_date</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">dataminer_date</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_time
---
Binds a dataminer_time value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_time</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">dataminer_time</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_timestamp
---
Binds a dataminer_timestamp value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_timestamp</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">dataminer_timestamp</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_interval
---
Binds a dataminer_interval value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_interval</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">dataminer_interval</span> <span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_varchar
---
Binds a null-terminated varchar value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_varchar</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_varchar_length
---
Binds a varchar value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_varchar_length</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">length
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_blob
---
Binds a blob value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_blob</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">void</span> *<span class="k">data</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">length
</span>);
</code></pre></div></div>
<br>

### dataminer_bind_null
---
Binds a NULL value to the prepared statement at the specified index.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_bind_null</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">param_idx
</span>);
</code></pre></div></div>
<br>

### dataminer_execute_prepared
---
Executes the prepared statement with the given bound parameters, and returns a materialized query result.

This method can be called multiple times for each prepared statement, and the parameters can be modified
between calls to this function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_execute_prepared</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">out_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to execute.
* `out_result`

The query result.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_execute_prepared_arrow
---
Executes the prepared statement with the given bound parameters, and returns an arrow query result.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_execute_prepared_arrow</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="kt">dataminer_arrow</span> *<span class="k">out_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to execute.
* `out_result`

The query result.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_extract_statements
---
Extract all statements from a query.
Note that after calling `dataminer_extract_statements`, the extracted statements should always be destroyed using
`dataminer_destroy_extracted`, even if no statements were extracted.
If the extract fails, `dataminer_extract_statements_error` can be called to obtain the reason why the extract failed.
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_extract_statements</span>(<span class="k">
</span>  <span class="kt">dataminer_connection</span> <span class="k">connection</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">query</span>,<span class="k">
</span>  <span class="k">dataminer_extracted_statements</span> *<span class="k">out_extracted_statements
</span>);
</code></pre></div></div>
#### Parameters
---
* `connection`

The connection object
* `query`

The SQL query to extract
* `out_extracted_statements`

The resulting extracted statements object
* `returns`

The number of extracted statements or 0 on failure.

<br>

### dataminer_prepare_extracted_statement
---
Prepare an extracted statement.
Note that after calling `dataminer_prepare_extracted_statement`, the prepared statement should always be destroyed using
`dataminer_destroy_prepare`, even if the prepare fails.
If the prepare fails, `dataminer_prepare_error` can be called to obtain the reason why the prepare failed.
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_prepare_extracted_statement</span>(<span class="k">
</span>  <span class="kt">dataminer_connection</span> <span class="k">connection</span>,<span class="k">
</span>  <span class="k">dataminer_extracted_statements</span> <span class="k">extracted_statements</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index</span>,<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> *<span class="k">out_prepared_statement
</span>);
</code></pre></div></div>
#### Parameters
---
* `connection`

The connection object
* `extracted_statements`

The extracted statements object
* `index`

The index of the extracted statement to prepare
* `out_prepared_statement`

The resulting prepared statement object
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_extract_statements_error
---
Returns the error message contained within the extracted statements.
The result of this function must not be freed. It will be cleaned up when `dataminer_destroy_extracted` is called.
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">dataminer_extract_statements_error</span>(<span class="k">
</span>  <span class="k">dataminer_extracted_statements</span> <span class="k">extracted_statements
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The extracted statements to fetch the error from.
* `returns`

The error of the extracted statements.

<br>

### dataminer_destroy_extracted
---
De-allocates all memory allocated for the extracted statements.
#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_extracted</span>(<span class="k">
</span>  <span class="k">dataminer_extracted_statements</span> *<span class="k">extracted_statements
</span>);
</code></pre></div></div>
#### Parameters
---
* `extracted_statements`

The extracted statements to destroy.

<br>

### dataminer_pending_prepared
---
Executes the prepared statement with the given bound parameters, and returns a pending result.
The pending result represents an intermediate structure for a query that is not yet fully executed.
The pending result can be used to incrementally execute a query, returning control to the client between tasks.

Note that after calling `dataminer_pending_prepared`, the pending result should always be destroyed using
`dataminer_destroy_pending`, even if this function returns dataminerError.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_pending_prepared</span>(<span class="k">
</span>  <span class="kt">dataminer_prepared_statement</span> <span class="k">prepared_statement</span>,<span class="k">
</span>  <span class="k">dataminer_pending_result</span> *<span class="k">out_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `prepared_statement`

The prepared statement to execute.
* `out_result`

The pending query result.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_destroy_pending
---
Closes the pending result and de-allocates all memory allocated for the result.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_pending</span>(<span class="k">
</span>  <span class="k">dataminer_pending_result</span> *<span class="k">pending_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `pending_result`

The pending result to destroy.

<br>

### dataminer_pending_error
---
Returns the error message contained within the pending result.

The result of this function must not be freed. It will be cleaned up when `dataminer_destroy_pending` is called.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">dataminer_pending_error</span>(<span class="k">
</span>  <span class="k">dataminer_pending_result</span> <span class="k">pending_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The pending result to fetch the error from.
* `returns`

The error of the pending result.

<br>

### dataminer_pending_execute_task
---
Executes a single task within the query, returning whether or not the query is ready.

If this returns dataminer_PENDING_RESULT_READY, the dataminer_execute_pending function can be called to obtain the result.
If this returns dataminer_PENDING_RESULT_NOT_READY, the dataminer_pending_execute_task function should be called again.
If this returns dataminer_PENDING_ERROR, an error occurred during execution.

The error message can be obtained by calling dataminer_pending_error on the pending_result.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">dataminer_pending_state</span> <span class="k">dataminer_pending_execute_task</span>(<span class="k">
</span>  <span class="k">dataminer_pending_result</span> <span class="k">pending_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `pending_result`

The pending result to execute a task within..
* `returns`

The state of the pending result after the execution.

<br>

### dataminer_execute_pending
---
Fully execute a pending query result, returning the final query result.

If dataminer_pending_execute_task has been called until dataminer_PENDING_RESULT_READY was returned, this will return fast.
Otherwise, all remaining tasks must be executed first.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_execute_pending</span>(<span class="k">
</span>  <span class="k">dataminer_pending_result</span> <span class="k">pending_result</span>,<span class="k">
</span>  <span class="kt">dataminer_result</span> *<span class="k">out_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `pending_result`

The pending result to execute.
* `out_result`

The result object.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_destroy_value
---
Destroys the value and de-allocates all memory allocated for that type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_value</span>(<span class="k">
</span>  <span class="kt">dataminer_value</span> *<span class="k">value
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The value to destroy.

<br>

### dataminer_create_varchar
---
Creates a value from a null-terminated string

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_value</span> <span class="k">dataminer_create_varchar</span>(<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">text
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The null-terminated string
* `returns`

The value. This must be destroyed with `dataminer_destroy_value`.

<br>

### dataminer_create_varchar_length
---
Creates a value from a string

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_value</span> <span class="k">dataminer_create_varchar_length</span>(<span class="k">
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

The value. This must be destroyed with `dataminer_destroy_value`.

<br>

### dataminer_create_int64
---
Creates a value from an int64

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_value</span> <span class="k">dataminer_create_int64</span>(<span class="k">
</span>  <span class="kt">int64_t</span> <span class="k">val
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The bigint value
* `returns`

The value. This must be destroyed with `dataminer_destroy_value`.

<br>

### dataminer_get_varchar
---
Obtains a string representation of the given value.
The result must be destroyed with `dataminer_free`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">dataminer_get_varchar</span>(<span class="k">
</span>  <span class="kt">dataminer_value</span> <span class="k">value
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The value
* `returns`

The string value. This must be destroyed with `dataminer_free`.

<br>

### dataminer_get_int64
---
Obtains an int64 of the given value.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">int64_t</span> <span class="k">dataminer_get_int64</span>(<span class="k">
</span>  <span class="kt">dataminer_value</span> <span class="k">value
</span>);
</code></pre></div></div>
#### Parameters
---
* `value`

The value
* `returns`

The int64 value, or 0 if no conversion is possible

<br>

### dataminer_create_logical_type
---
Creates a `dataminer_logical_type` from a standard primitive type.
The resulting type should be destroyed with `dataminer_destroy_logical_type`.

This should not be used with `dataminer_TYPE_DECIMAL`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_create_logical_type</span>(<span class="k">
</span>  <span class="k">dataminer_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The primitive type to create.
* `returns`

The logical type.

<br>

### dataminer_create_list_type
---
Creates a list type from its child type.
The resulting type should be destroyed with `dataminer_destroy_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_create_list_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The child type of list type to create.
* `returns`

The logical type.

<br>

### dataminer_create_map_type
---
Creates a map type from its key type and value type.
The resulting type should be destroyed with `dataminer_destroy_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_create_map_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">key_type</span>,<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">value_type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The key type and value type of map type to create.
* `returns`

The logical type.

<br>

### dataminer_create_union_type
---
Creates a UNION type from the passed types array
The resulting type should be destroyed with `dataminer_destroy_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_create_union_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">member_types</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> **<span class="k">member_names</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">member_count
</span>);
</code></pre></div></div>
#### Parameters
---
* `types`

The array of types that the union should consist of.
* `type_amount`

The size of the types array.
* `returns`

The logical type.

<br>

### dataminer_create_decimal_type
---
Creates a `dataminer_logical_type` of type decimal with the specified width and scale
The resulting type should be destroyed with `dataminer_destroy_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_create_decimal_type</span>(<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">width</span>,<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">scale
</span>);
</code></pre></div></div>
#### Parameters
---
* `width`

The width of the decimal type
* `scale`

The scale of the decimal type
* `returns`

The logical type.

<br>

### dataminer_get_type_id
---
Retrieves the type class of a `dataminer_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">dataminer_type</span> <span class="k">dataminer_get_type_id</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The type id

<br>

### dataminer_decimal_width
---
Retrieves the width of a decimal type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint8_t</span> <span class="k">dataminer_decimal_width</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The width of the decimal type

<br>

### dataminer_decimal_scale
---
Retrieves the scale of a decimal type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint8_t</span> <span class="k">dataminer_decimal_scale</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The scale of the decimal type

<br>

### dataminer_decimal_internal_type
---
Retrieves the internal storage type of a decimal type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">dataminer_type</span> <span class="k">dataminer_decimal_internal_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The internal type of the decimal type

<br>

### dataminer_enum_internal_type
---
Retrieves the internal storage type of an enum type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">dataminer_type</span> <span class="k">dataminer_enum_internal_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The internal type of the enum type

<br>

### dataminer_enum_dictionary_size
---
Retrieves the dictionary size of the enum type

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint32_t</span> <span class="k">dataminer_enum_dictionary_size</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The dictionary size of the enum type

<br>

### dataminer_enum_dictionary_value
---
Retrieves the dictionary value at the specified position from the enum.

The result must be freed with `dataminer_free`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">dataminer_enum_dictionary_value</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `index`

The index in the dictionary
* `returns`

The string value of the enum type. Must be freed with `dataminer_free`.

<br>

### dataminer_list_type_child_type
---
Retrieves the child type of the given list type.

The result must be freed with `dataminer_destroy_logical_type`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_list_type_child_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The child type of the list type. Must be destroyed with `dataminer_destroy_logical_type`.

<br>

### dataminer_map_type_key_type
---
Retrieves the key type of the given map type.

The result must be freed with `dataminer_destroy_logical_type`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_map_type_key_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The key type of the map type. Must be destroyed with `dataminer_destroy_logical_type`.

<br>

### dataminer_map_type_value_type
---
Retrieves the value type of the given map type.

The result must be freed with `dataminer_destroy_logical_type`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_map_type_value_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The value type of the map type. Must be destroyed with `dataminer_destroy_logical_type`.

<br>

### dataminer_struct_type_child_count
---
Returns the number of children of a struct type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_struct_type_child_count</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `returns`

The number of children of a struct type.

<br>

### dataminer_struct_type_child_name
---
Retrieves the name of the struct child.

The result must be freed with `dataminer_free`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">dataminer_struct_type_child_name</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `index`

The child index
* `returns`

The name of the struct type. Must be freed with `dataminer_free`.

<br>

### dataminer_struct_type_child_type
---
Retrieves the child type of the given struct type at the specified index.

The result must be freed with `dataminer_destroy_logical_type`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_struct_type_child_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `index`

The child index
* `returns`

The child type of the struct type. Must be destroyed with `dataminer_destroy_logical_type`.

<br>

### dataminer_union_type_member_count
---
Returns the number of members that the union type has.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_union_type_member_count</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type (union) object
* `returns`

The number of members of a union type.

<br>

### dataminer_union_type_member_name
---
Retrieves the name of the union member.

The result must be freed with `dataminer_free`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">char</span> *<span class="k">dataminer_union_type_member_name</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `index`

The child index
* `returns`

The name of the union member. Must be freed with `dataminer_free`.

<br>

### dataminer_union_type_member_type
---
Retrieves the child type of the given union member at the specified index.

The result must be freed with `dataminer_destroy_logical_type`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_union_type_member_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type object
* `index`

The child index
* `returns`

The child type of the union member. Must be destroyed with `dataminer_destroy_logical_type`.

<br>

### dataminer_destroy_logical_type
---
Destroys the logical type and de-allocates all memory allocated for that type.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_logical_type</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> *<span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `type`

The logical type to destroy.

<br>

### dataminer_create_data_chunk
---
Creates an empty DataChunk with the specified set of types.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_data_chunk</span> <span class="k">dataminer_create_data_chunk</span>(<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> *<span class="k">types</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">column_count
</span>);
</code></pre></div></div>
#### Parameters
---
* `types`

An array of types of the data chunk.
* `column_count`

The number of columns.
* `returns`

The data chunk.

<br>

### dataminer_destroy_data_chunk
---
Destroys the data chunk and de-allocates all memory allocated for that chunk.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_data_chunk</span>(<span class="k">
</span>  <span class="kt">dataminer_data_chunk</span> *<span class="k">chunk
</span>);
</code></pre></div></div>
#### Parameters
---
* `chunk`

The data chunk to destroy.

<br>

### dataminer_data_chunk_reset
---
Resets a data chunk, clearing the validity masks and setting the cardinality of the data chunk to 0.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_data_chunk_reset</span>(<span class="k">
</span>  <span class="kt">dataminer_data_chunk</span> <span class="k">chunk
</span>);
</code></pre></div></div>
#### Parameters
---
* `chunk`

The data chunk to reset.

<br>

### dataminer_data_chunk_get_column_count
---
Retrieves the number of columns in a data chunk.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_data_chunk_get_column_count</span>(<span class="k">
</span>  <span class="kt">dataminer_data_chunk</span> <span class="k">chunk
</span>);
</code></pre></div></div>
#### Parameters
---
* `chunk`

The data chunk to get the data from
* `returns`

The number of columns in the data chunk

<br>

### dataminer_data_chunk_get_vector
---
Retrieves the vector at the specified column index in the data chunk.

The pointer to the vector is valid for as long as the chunk is alive.
It does NOT need to be destroyed.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_vector</span> <span class="k">dataminer_data_chunk_get_vector</span>(<span class="k">
</span>  <span class="kt">dataminer_data_chunk</span> <span class="k">chunk</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">col_idx
</span>);
</code></pre></div></div>
#### Parameters
---
* `chunk`

The data chunk to get the data from
* `returns`

The vector

<br>

### dataminer_data_chunk_get_size
---
Retrieves the current number of tuples in a data chunk.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_data_chunk_get_size</span>(<span class="k">
</span>  <span class="kt">dataminer_data_chunk</span> <span class="k">chunk
</span>);
</code></pre></div></div>
#### Parameters
---
* `chunk`

The data chunk to get the data from
* `returns`

The number of tuples in the data chunk

<br>

### dataminer_data_chunk_set_size
---
Sets the current number of tuples in a data chunk.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_data_chunk_set_size</span>(<span class="k">
</span>  <span class="kt">dataminer_data_chunk</span> <span class="k">chunk</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">size
</span>);
</code></pre></div></div>
#### Parameters
---
* `chunk`

The data chunk to set the size in
* `size`

The number of tuples in the data chunk

<br>

### dataminer_vector_get_column_type
---
Retrieves the column type of the specified vector.

The result must be destroyed with `dataminer_destroy_logical_type`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_logical_type</span> <span class="k">dataminer_vector_get_column_type</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The vector get the data from
* `returns`

The type of the vector

<br>

### dataminer_vector_get_data
---
Retrieves the data pointer of the vector.

The data pointer can be used to read or write values from the vector.
How to read or write values depends on the type of the vector.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">dataminer_vector_get_data</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The vector to get the data from
* `returns`

The data pointer

<br>

### dataminer_vector_get_validity
---
Retrieves the validity mask pointer of the specified vector.

If all values are valid, this function MIGHT return NULL!

The validity mask is a bitset that signifies null-ness within the data chunk.
It is a series of uint64_t values, where each uint64_t value contains validity for 64 tuples.
The bit is set to 1 if the value is valid (i.e. not NULL) or 0 if the value is invalid (i.e. NULL).

Validity of a specific value can be obtained like this:

idx_t entry_idx = row_idx / 64;
idx_t idx_in_entry = row_idx % 64;
bool is_valid = validity_mask[entry_idx] & (1 << idx_in_entry);

Alternatively, the (slower) dataminer_validity_row_is_valid function can be used.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">uint64_t</span> *<span class="k">dataminer_vector_get_validity</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The vector to get the data from
* `returns`

The pointer to the validity mask, or NULL if no validity mask is present

<br>

### dataminer_vector_ensure_validity_writable
---
Ensures the validity mask is writable by allocating it.

After this function is called, `dataminer_vector_get_validity` will ALWAYS return non-NULL.
This allows null values to be written to the vector, regardless of whether a validity mask was present before.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_vector_ensure_validity_writable</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The vector to alter

<br>

### dataminer_vector_assign_string_element
---
Assigns a string element in the vector at the specified location.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_vector_assign_string_element</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">str
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The vector to alter
* `index`

The row position in the vector to assign the string to
* `str`

The null-terminated string

<br>

### dataminer_vector_assign_string_element_len
---
Assigns a string element in the vector at the specified location.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_vector_assign_string_element_len</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">str</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">str_len
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The vector to alter
* `index`

The row position in the vector to assign the string to
* `str`

The string
* `str_len`

The length of the string (in bytes)

<br>

### dataminer_list_vector_get_child
---
Retrieves the child vector of a list vector.

The resulting vector is valid as long as the parent vector is valid.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_vector</span> <span class="k">dataminer_list_vector_get_child</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The vector
* `returns`

The child vector

<br>

### dataminer_list_vector_get_size
---
Returns the size of the child vector of the list

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_list_vector_get_size</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The vector
* `returns`

The size of the child list

<br>

### dataminer_list_vector_set_size
---
Sets the total size of the underlying child-vector of a list vector.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_list_vector_set_size</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">size
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The list vector.
* `size`

The size of the child list.
* `returns`

The DataMiner state. Returns dataminerError if the vector is nullptr.

<br>

### dataminer_list_vector_reserve
---
Sets the total capacity of the underlying child-vector of a list.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_list_vector_reserve</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">required_capacity
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The list vector.
* `required_capacity`

the total capacity to reserve.
* `return`

The DataMiner state. Returns dataminerError if the vector is nullptr.

<br>

### dataminer_struct_vector_get_child
---
Retrieves the child vector of a struct vector.

The resulting vector is valid as long as the parent vector is valid.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_vector</span> <span class="k">dataminer_struct_vector_get_child</span>(<span class="k">
</span>  <span class="kt">dataminer_vector</span> <span class="k">vector</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `vector`

The vector
* `index`

The child index
* `returns`

The child vector

<br>

### dataminer_validity_row_is_valid
---
Returns whether or not a row is valid (i.e. not NULL) in the given validity mask.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">bool</span> <span class="k">dataminer_validity_row_is_valid</span>(<span class="k">
</span>  <span class="kt">uint64_t</span> *<span class="k">validity</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `validity`

The validity mask, as obtained through `dataminer_data_chunk_get_validity`
* `row`

The row index
* `returns`

true if the row is valid, false otherwise

<br>

### dataminer_validity_set_row_validity
---
In a validity mask, sets a specific row to either valid or invalid.

Note that `dataminer_data_chunk_ensure_validity_writable` should be called before calling `dataminer_data_chunk_get_validity`,
to ensure that there is a validity mask to write to.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_validity_set_row_validity</span>(<span class="k">
</span>  <span class="kt">uint64_t</span> *<span class="k">validity</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row</span>,<span class="k">
</span>  <span class="kt">bool</span> <span class="k">valid
</span>);
</code></pre></div></div>
#### Parameters
---
* `validity`

The validity mask, as obtained through `dataminer_data_chunk_get_validity`.
* `row`

The row index
* `valid`

Whether or not to set the row to valid, or invalid

<br>

### dataminer_validity_set_row_invalid
---
In a validity mask, sets a specific row to invalid.

Equivalent to `dataminer_validity_set_row_validity` with valid set to false.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_validity_set_row_invalid</span>(<span class="k">
</span>  <span class="kt">uint64_t</span> *<span class="k">validity</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `validity`

The validity mask
* `row`

The row index

<br>

### dataminer_validity_set_row_valid
---
In a validity mask, sets a specific row to valid.

Equivalent to `dataminer_validity_set_row_validity` with valid set to true.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_validity_set_row_valid</span>(<span class="k">
</span>  <span class="kt">uint64_t</span> *<span class="k">validity</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">row
</span>);
</code></pre></div></div>
#### Parameters
---
* `validity`

The validity mask
* `row`

The row index

<br>

### dataminer_create_table_function
---
Creates a new empty table function.

The return value should be destroyed with `dataminer_destroy_table_function`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_table_function</span> <span class="k">dataminer_create_table_function</span>(<span class="k">
</span>  <span class="k">
</span>);
</code></pre></div></div>
#### Parameters
---
* `returns`

The table function object.

<br>

### dataminer_destroy_table_function
---
Destroys the given table function object.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_table_function</span>(<span class="k">
</span>  <span class="kt">dataminer_table_function</span> *<span class="k">table_function
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function to destroy

<br>

### dataminer_table_function_set_name
---
Sets the name of the given table function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_table_function_set_name</span>(<span class="k">
</span>  <span class="kt">dataminer_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `name`

The name of the table function

<br>

### dataminer_table_function_add_parameter
---
Adds a parameter to the table function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_table_function_add_parameter</span>(<span class="k">
</span>  <span class="kt">dataminer_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `type`

The type of the parameter to add.

<br>

### dataminer_table_function_set_extra_info
---
Assigns extra information to the table function that can be fetched during binding, etc.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_table_function_set_extra_info</span>(<span class="k">
</span>  <span class="kt">dataminer_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="kt">void</span> *<span class="k">extra_info</span>,<span class="k">
</span>  <span class="k">dataminer_delete_callback_t</span> <span class="k">destroy
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `extra_info`

The extra information
* `destroy`

The callback that will be called to destroy the bind data (if any)

<br>

### dataminer_table_function_set_bind
---
Sets the bind function of the table function

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_table_function_set_bind</span>(<span class="k">
</span>  <span class="kt">dataminer_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="k">dataminer_table_function_bind_t</span> <span class="k">bind
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `bind`

The bind function

<br>

### dataminer_table_function_set_init
---
Sets the init function of the table function

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_table_function_set_init</span>(<span class="k">
</span>  <span class="kt">dataminer_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="k">dataminer_table_function_init_t</span> <span class="k">init
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `init`

The init function

<br>

### dataminer_table_function_set_local_init
---
Sets the thread-local init function of the table function

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_table_function_set_local_init</span>(<span class="k">
</span>  <span class="kt">dataminer_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="k">dataminer_table_function_init_t</span> <span class="k">init
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `init`

The init function

<br>

### dataminer_table_function_set_function
---
Sets the main function of the table function

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_table_function_set_function</span>(<span class="k">
</span>  <span class="kt">dataminer_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="k">dataminer_table_function_t</span> <span class="k">function
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `function`

The function

<br>

### dataminer_table_function_supports_projection_pushdown
---
Sets whether or not the given table function supports projection pushdown.

If this is set to true, the system will provide a list of all required columns in the `init` stage through
the `dataminer_init_get_column_count` and `dataminer_init_get_column_index` functions.
If this is set to false (the default), the system will expect all columns to be projected.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_table_function_supports_projection_pushdown</span>(<span class="k">
</span>  <span class="kt">dataminer_table_function</span> <span class="k">table_function</span>,<span class="k">
</span>  <span class="kt">bool</span> <span class="k">pushdown
</span>);
</code></pre></div></div>
#### Parameters
---
* `table_function`

The table function
* `pushdown`

True if the table function supports projection pushdown, false otherwise.

<br>

### dataminer_register_table_function
---
Register the table function object within the given connection.

The function requires at least a name, a bind function, an init function and a main function.

If the function is incomplete or a function with this name already exists dataminerError is returned.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_register_table_function</span>(<span class="k">
</span>  <span class="kt">dataminer_connection</span> <span class="k">con</span>,<span class="k">
</span>  <span class="kt">dataminer_table_function</span> <span class="k">function
</span>);
</code></pre></div></div>
#### Parameters
---
* `con`

The connection to register it in.
* `function`

The function pointer
* `returns`

Whether or not the registration was successful.

<br>

### dataminer_bind_get_extra_info
---
Retrieves the extra info of the function as set in `dataminer_table_function_set_extra_info`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">dataminer_bind_get_extra_info</span>(<span class="k">
</span>  <span class="kt">dataminer_bind_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The extra info

<br>

### dataminer_bind_add_result_column
---
Adds a result column to the output of the table function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_bind_add_result_column</span>(<span class="k">
</span>  <span class="kt">dataminer_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">name</span>,<span class="k">
</span>  <span class="kt">dataminer_logical_type</span> <span class="k">type
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `name`

The name of the column
* `type`

The logical type of the column

<br>

### dataminer_bind_get_parameter_count
---
Retrieves the number of regular (non-named) parameters to the function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_bind_get_parameter_count</span>(<span class="k">
</span>  <span class="kt">dataminer_bind_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The number of parameters

<br>

### dataminer_bind_get_parameter
---
Retrieves the parameter at the given index.

The result must be destroyed with `dataminer_destroy_value`.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_value</span> <span class="k">dataminer_bind_get_parameter</span>(<span class="k">
</span>  <span class="kt">dataminer_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">index
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `index`

The index of the parameter to get
* `returns`

The value of the parameter. Must be destroyed with `dataminer_destroy_value`.

<br>

### dataminer_bind_set_bind_data
---
Sets the user-provided bind data in the bind object. This object can be retrieved again during execution.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_bind_set_bind_data</span>(<span class="k">
</span>  <span class="kt">dataminer_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">void</span> *<span class="k">bind_data</span>,<span class="k">
</span>  <span class="k">dataminer_delete_callback_t</span> <span class="k">destroy
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `extra_data`

The bind data object.
* `destroy`

The callback that will be called to destroy the bind data (if any)

<br>

### dataminer_bind_set_cardinality
---
Sets the cardinality estimate for the table function, used for optimization.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_bind_set_cardinality</span>(<span class="k">
</span>  <span class="kt">dataminer_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">cardinality</span>,<span class="k">
</span>  <span class="kt">bool</span> <span class="k">is_exact
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The bind data object.
* `is_exact`

Whether or not the cardinality estimate is exact, or an approximation

<br>

### dataminer_bind_set_error
---
Report that an error has occurred while calling bind.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_bind_set_error</span>(<span class="k">
</span>  <span class="kt">dataminer_bind_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `error`

The error message

<br>

### dataminer_init_get_extra_info
---
Retrieves the extra info of the function as set in `dataminer_table_function_set_extra_info`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">dataminer_init_get_extra_info</span>(<span class="k">
</span>  <span class="kt">dataminer_init_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The extra info

<br>

### dataminer_init_get_bind_data
---
Gets the bind data set by `dataminer_bind_set_bind_data` during the bind.

Note that the bind data should be considered as read-only.
For tracking state, use the init data instead.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">dataminer_init_get_bind_data</span>(<span class="k">
</span>  <span class="kt">dataminer_init_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The bind data object

<br>

### dataminer_init_set_init_data
---
Sets the user-provided init data in the init object. This object can be retrieved again during execution.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_init_set_init_data</span>(<span class="k">
</span>  <span class="kt">dataminer_init_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">void</span> *<span class="k">init_data</span>,<span class="k">
</span>  <span class="k">dataminer_delete_callback_t</span> <span class="k">destroy
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `extra_data`

The init data object.
* `destroy`

The callback that will be called to destroy the init data (if any)

<br>

### dataminer_init_get_column_count
---
Returns the number of projected columns.

This function must be used if projection pushdown is enabled to figure out which columns to emit.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_init_get_column_count</span>(<span class="k">
</span>  <span class="kt">dataminer_init_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The number of projected columns.

<br>

### dataminer_init_get_column_index
---
Returns the column index of the projected column at the specified position.

This function must be used if projection pushdown is enabled to figure out which columns to emit.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_init_get_column_index</span>(<span class="k">
</span>  <span class="kt">dataminer_init_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">column_index
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `column_index`

The index at which to get the projected column index, from 0..dataminer_init_get_column_count(info)
* `returns`

The column index of the projected column.

<br>

### dataminer_init_set_max_threads
---
Sets how many threads can process this table function in parallel (default: 1)

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_init_set_max_threads</span>(<span class="k">
</span>  <span class="kt">dataminer_init_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">max_threads
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `max_threads`

The maximum amount of threads that can process this table function

<br>

### dataminer_init_set_error
---
Report that an error has occurred while calling init.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_init_set_error</span>(<span class="k">
</span>  <span class="kt">dataminer_init_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `error`

The error message

<br>

### dataminer_function_get_extra_info
---
Retrieves the extra info of the function as set in `dataminer_table_function_set_extra_info`

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">dataminer_function_get_extra_info</span>(<span class="k">
</span>  <span class="kt">dataminer_function_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The extra info

<br>

### dataminer_function_get_bind_data
---
Gets the bind data set by `dataminer_bind_set_bind_data` during the bind.

Note that the bind data should be considered as read-only.
For tracking state, use the init data instead.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">dataminer_function_get_bind_data</span>(<span class="k">
</span>  <span class="kt">dataminer_function_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The bind data object

<br>

### dataminer_function_get_init_data
---
Gets the init data set by `dataminer_init_set_init_data` during the init.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">dataminer_function_get_init_data</span>(<span class="k">
</span>  <span class="kt">dataminer_function_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The init data object

<br>

### dataminer_function_get_local_init_data
---
Gets the thread-local init data set by `dataminer_init_set_init_data` during the local_init.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> *<span class="k">dataminer_function_get_local_init_data</span>(<span class="k">
</span>  <span class="kt">dataminer_function_info</span> <span class="k">info
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `returns`

The init data object

<br>

### dataminer_function_set_error
---
Report that an error has occurred while executing the function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_function_set_error</span>(<span class="k">
</span>  <span class="kt">dataminer_function_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `error`

The error message

<br>

### dataminer_add_replacement_scan
---
Add a replacement scan definition to the specified database

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_add_replacement_scan</span>(<span class="k">
</span>  <span class="kt">dataminer_database</span> <span class="k">db</span>,<span class="k">
</span>  <span class="k">dataminer_replacement_callback_t</span> <span class="k">replacement</span>,<span class="k">
</span>  <span class="kt">void</span> *<span class="k">extra_data</span>,<span class="k">
</span>  <span class="k">dataminer_delete_callback_t</span> <span class="k">delete_callback
</span>);
</code></pre></div></div>
#### Parameters
---
* `db`

The database object to add the replacement scan to
* `replacement`

The replacement scan callback
* `extra_data`

Extra data that is passed back into the specified callback
* `delete_callback`

The delete callback to call on the extra data, if any

<br>

### dataminer_replacement_scan_set_function_name
---
Sets the replacement function name to use. If this function is called in the replacement callback,
the replacement scan is performed. If it is not called, the replacement callback is not performed.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_replacement_scan_set_function_name</span>(<span class="k">
</span>  <span class="kt">dataminer_replacement_scan_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">function_name
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `function_name`

The function name to substitute.

<br>

### dataminer_replacement_scan_add_parameter
---
Adds a parameter to the replacement scan function.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_replacement_scan_add_parameter</span>(<span class="k">
</span>  <span class="kt">dataminer_replacement_scan_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">dataminer_value</span> <span class="k">parameter
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `parameter`

The parameter to add.

<br>

### dataminer_replacement_scan_set_error
---
Report that an error has occurred while executing the replacement scan.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_replacement_scan_set_error</span>(<span class="k">
</span>  <span class="kt">dataminer_replacement_scan_info</span> <span class="k">info</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">error
</span>);
</code></pre></div></div>
#### Parameters
---
* `info`

The info object
* `error`

The error message

<br>

### dataminer_appender_create
---
Creates an appender object.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_appender_create</span>(<span class="k">
</span>  <span class="kt">dataminer_connection</span> <span class="k">connection</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">schema</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">table</span>,<span class="k">
</span>  <span class="kt">dataminer_appender</span> *<span class="k">out_appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `connection`

The connection context to create the appender in.
* `schema`

The schema of the table to append to, or `nullptr` for the default schema.
* `table`

The table name to append to.
* `out_appender`

The resulting appender object.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_appender_error
---
Returns the error message associated with the given appender.
If the appender has no error message, this returns `nullptr` instead.

The error message should not be freed. It will be de-allocated when `dataminer_appender_destroy` is called.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">dataminer_appender_error</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender to get the error from.
* `returns`

The error message, or `nullptr` if there is none.

<br>

### dataminer_appender_flush
---
Flush the appender to the table, forcing the cache of the appender to be cleared and the data to be appended to the
base table.

This should generally not be used unless you know what you are doing. Instead, call `dataminer_appender_destroy` when you
are done with the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_appender_flush</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender to flush.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_appender_close
---
Close the appender, flushing all intermediate state in the appender to the table and closing it for further appends.

This is generally not necessary. Call `dataminer_appender_destroy` instead.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_appender_close</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender to flush and close.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_appender_destroy
---
Close the appender and destroy it. Flushing all intermediate state in the appender to the table, and de-allocating
all memory associated with the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_appender_destroy</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> *<span class="k">appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender to flush, close and destroy.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_appender_begin_row
---
A nop function, provided for backwards compatibility reasons. Does nothing. Only `dataminer_appender_end_row` is required.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_appender_begin_row</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
<br>

### dataminer_appender_end_row
---
Finish the current row of appends. After end_row is called, the next row can be appended.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_appender_end_row</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_append_bool
---
Append a bool value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_bool</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">bool</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_int8
---
Append an int8_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_int8</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">int8_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_int16
---
Append an int16_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_int16</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">int16_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_int32
---
Append an int32_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_int32</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">int32_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_int64
---
Append an int64_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_int64</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">int64_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_hugeint
---
Append a dataminer_hugeint value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_hugeint</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">dataminer_hugeint</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_uint8
---
Append a uint8_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_uint8</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">uint8_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_uint16
---
Append a uint16_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_uint16</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">uint16_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_uint32
---
Append a uint32_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_uint32</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">uint32_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_uint64
---
Append a uint64_t value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_uint64</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">uint64_t</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_float
---
Append a float value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_float</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">float</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_double
---
Append a double value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_double</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">double</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_date
---
Append a dataminer_date value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_date</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">dataminer_date</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_time
---
Append a dataminer_time value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_time</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">dataminer_time</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_timestamp
---
Append a dataminer_timestamp value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_timestamp</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">dataminer_timestamp</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_interval
---
Append a dataminer_interval value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_interval</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">dataminer_interval</span> <span class="k">value
</span>);
</code></pre></div></div>
<br>

### dataminer_append_varchar
---
Append a varchar value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_varchar</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val
</span>);
</code></pre></div></div>
<br>

### dataminer_append_varchar_length
---
Append a varchar value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_varchar_length</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">val</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">length
</span>);
</code></pre></div></div>
<br>

### dataminer_append_blob
---
Append a blob value to the appender.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_blob</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">void</span> *<span class="k">data</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">length
</span>);
</code></pre></div></div>
<br>

### dataminer_append_null
---
Append a NULL value to the appender (of any type).

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_null</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender
</span>);
</code></pre></div></div>
<br>

### dataminer_append_data_chunk
---
Appends a pre-filled data chunk to the specified appender.

The types of the data chunk must exactly match the types of the table, no casting is performed.
If the types do not match or the appender is in an invalid state, dataminerError is returned.
If the append is successful, dataminerSuccess is returned.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_append_data_chunk</span>(<span class="k">
</span>  <span class="kt">dataminer_appender</span> <span class="k">appender</span>,<span class="k">
</span>  <span class="kt">dataminer_data_chunk</span> <span class="k">chunk
</span>);
</code></pre></div></div>
#### Parameters
---
* `appender`

The appender to append to.
* `chunk`

The data chunk to append.
* `returns`

The return state.

<br>

### dataminer_query_arrow
---
Executes a SQL query within a connection and stores the full (materialized) result in an arrow structure.
If the query fails to execute, dataminerError is returned and the error message can be retrieved by calling
`dataminer_query_arrow_error`.

Note that after running `dataminer_query_arrow`, `dataminer_destroy_arrow` must be called on the result object even if the
query fails, otherwise the error stored within the result will not be freed correctly.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_query_arrow</span>(<span class="k">
</span>  <span class="kt">dataminer_connection</span> <span class="k">connection</span>,<span class="k">
</span>  <span class="kt">const</span> <span class="kt">char</span> *<span class="k">query</span>,<span class="k">
</span>  <span class="kt">dataminer_arrow</span> *<span class="k">out_result
</span>);
</code></pre></div></div>
#### Parameters
---
* `connection`

The connection to perform the query in.
* `query`

The SQL query to run.
* `out_result`

The query result.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_query_arrow_schema
---
Fetch the internal arrow schema from the arrow result.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_query_arrow_schema</span>(<span class="k">
</span>  <span class="kt">dataminer_arrow</span> <span class="k">result</span>,<span class="k">
</span>  <span class="kt">dataminer_arrow_schema</span> *<span class="k">out_schema
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result to fetch the schema from.
* `out_schema`

The output schema.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_query_arrow_array
---
Fetch an internal arrow array from the arrow result.

This function can be called multiple time to get next chunks, which will free the previous out_array.
So consume the out_array before calling this function again.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">dataminer_state</span> <span class="k">dataminer_query_arrow_array</span>(<span class="k">
</span>  <span class="kt">dataminer_arrow</span> <span class="k">result</span>,<span class="k">
</span>  <span class="kt">dataminer_arrow_array</span> *<span class="k">out_array
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result to fetch the array from.
* `out_array`

The output array.
* `returns`

`dataminerSuccess` on success or `dataminerError` on failure.

<br>

### dataminer_arrow_column_count
---
Returns the number of columns present in a the arrow result object.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_arrow_column_count</span>(<span class="k">
</span>  <span class="kt">dataminer_arrow</span> <span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object.
* `returns`

The number of columns present in the result object.

<br>

### dataminer_arrow_row_count
---
Returns the number of rows present in a the arrow result object.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_arrow_row_count</span>(<span class="k">
</span>  <span class="kt">dataminer_arrow</span> <span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object.
* `returns`

The number of rows present in the result object.

<br>

### dataminer_arrow_rows_changed
---
Returns the number of rows changed by the query stored in the arrow result. This is relevant only for
INSERT/UPDATE/DELETE queries. For other queries the rows_changed will be 0.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_arrow_rows_changed</span>(<span class="k">
</span>  <span class="kt">dataminer_arrow</span> <span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object.
* `returns`

The number of rows changed.

<br>

### dataminer_query_arrow_error
---
Returns the error message contained within the result. The error is only set if `dataminer_query_arrow` returns
`dataminerError`.

The error message should not be freed. It will be de-allocated when `dataminer_destroy_arrow` is called.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">const</span> <span class="kt">char</span> *<span class="k">dataminer_query_arrow_error</span>(<span class="k">
</span>  <span class="kt">dataminer_arrow</span> <span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result object to fetch the nullmask from.
* `returns`

The error of the result.

<br>

### dataminer_destroy_arrow
---
Closes the result and de-allocates all memory allocated for the arrow result.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_arrow</span>(<span class="k">
</span>  <span class="kt">dataminer_arrow</span> *<span class="k">result
</span>);
</code></pre></div></div>
#### Parameters
---
* `result`

The result to destroy.

<br>

### dataminer_execute_tasks
---
Execute DataMiner tasks on this thread.

Will return after `max_tasks` have been executed, or if there are no more tasks present.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_execute_tasks</span>(<span class="k">
</span>  <span class="kt">dataminer_database</span> <span class="k">database</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">max_tasks
</span>);
</code></pre></div></div>
#### Parameters
---
* `database`

The database object to execute tasks for
* `max_tasks`

The maximum amount of tasks to execute

<br>

### dataminer_create_task_state
---
Creates a task state that can be used with dataminer_execute_tasks_state to execute tasks until
dataminer_finish_execution is called on the state.

dataminer_destroy_state should be called on the result in order to free memory.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">dataminer_task_state</span> <span class="k">dataminer_create_task_state</span>(<span class="k">
</span>  <span class="kt">dataminer_database</span> <span class="k">database
</span>);
</code></pre></div></div>
#### Parameters
---
* `database`

The database object to create the task state for
* `returns`

The task state that can be used with dataminer_execute_tasks_state.

<br>

### dataminer_execute_tasks_state
---
Execute DataMiner tasks on this thread.

The thread will keep on executing tasks forever, until dataminer_finish_execution is called on the state.
Multiple threads can share the same dataminer_task_state.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_execute_tasks_state</span>(<span class="k">
</span>  <span class="k">dataminer_task_state</span> <span class="k">state
</span>);
</code></pre></div></div>
#### Parameters
---
* `state`

The task state of the executor

<br>

### dataminer_execute_n_tasks_state
---
Execute DataMiner tasks on this thread.

The thread will keep on executing tasks until either dataminer_finish_execution is called on the state,
max_tasks tasks have been executed or there are no more tasks to be executed.

Multiple threads can share the same dataminer_task_state.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">idx_t</span> <span class="k">dataminer_execute_n_tasks_state</span>(<span class="k">
</span>  <span class="k">dataminer_task_state</span> <span class="k">state</span>,<span class="k">
</span>  <span class="kt">idx_t</span> <span class="k">max_tasks
</span>);
</code></pre></div></div>
#### Parameters
---
* `state`

The task state of the executor
* `max_tasks`

The maximum amount of tasks to execute
* `returns`

The amount of tasks that have actually been executed

<br>

### dataminer_finish_execution
---
Finish execution on a specific task.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_finish_execution</span>(<span class="k">
</span>  <span class="k">dataminer_task_state</span> <span class="k">state
</span>);
</code></pre></div></div>
#### Parameters
---
* `state`

The task state to finish execution

<br>

### dataminer_task_state_is_finished
---
Check if the provided dataminer_task_state has finished execution

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">bool</span> <span class="k">dataminer_task_state_is_finished</span>(<span class="k">
</span>  <span class="k">dataminer_task_state</span> <span class="k">state
</span>);
</code></pre></div></div>
#### Parameters
---
* `state`

The task state to inspect
* `returns`

Whether or not dataminer_finish_execution has been called on the task state

<br>

### dataminer_destroy_task_state
---
Destroys the task state returned from dataminer_create_task_state.

Note that this should not be called while there is an active dataminer_execute_tasks_state running
on the task state.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">void</span> <span class="k">dataminer_destroy_task_state</span>(<span class="k">
</span>  <span class="k">dataminer_task_state</span> <span class="k">state
</span>);
</code></pre></div></div>
#### Parameters
---
* `state`

The task state to clean up

<br>

### dataminer_execution_is_finished
---
Returns true if execution of the current query is finished.

#### Syntax
---
<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kt">bool</span> <span class="k">dataminer_execution_is_finished</span>(<span class="k">
</span>  <span class="kt">dataminer_connection</span> <span class="k">con
</span>);
</code></pre></div></div>
#### Parameters
---
* `con`

The connection on which to check

<br>