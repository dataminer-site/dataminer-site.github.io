---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/python/reference/index
selected: Documentation/Python/Client API
title: Python Client API
---

<div class="documentwrapper">
<div class="bodywrapper">
<div class="body" role="main">

<span class="target" id="module-DataMiner"></span><p>DataMiner is an embeddable SQL OLAP Database Management System</p>
<dl class="py data">
<dt class="sig sig-object py" id="DataMiner.threadsafety">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">threadsafety</span></span><em class="property"><span class="w"> </span><span class="pre">bool</span></em><a class="headerlink" href="#DataMiner.threadsafety" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Indicates that this package is threadsafe</p>
</dd>
</dl>

<dl class="py data">
<dt class="sig sig-object py" id="DataMiner.apilevel">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">apilevel</span></span><em class="property"><span class="w"> </span><span class="pre">int</span></em><a class="headerlink" href="#DataMiner.apilevel" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Indicates which Python DBAPI version this package implements</p>
</dd>
</dl>

<dl class="py data">
<dt class="sig sig-object py" id="DataMiner.paramstyle">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">paramstyle</span></span><em class="property"><span class="w"> </span><span class="pre">str</span></em><a class="headerlink" href="#DataMiner.paramstyle" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Indicates which parameter style DataMiner supports</p>
</dd>
</dl>

<dl class="py data">
<dt class="sig sig-object py" id="DataMiner.default_connection">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">default_connection</span></span><em class="property"><span class="w"> </span><span class="pre">DataMiner.DataMinerPyConnection</span></em><a class="headerlink" href="#DataMiner.default_connection" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>The connection that is used by default if you don&#8217;t explicitly pass one to the root methods in this module</p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.BinderException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">BinderException</span></span><a class="headerlink" href="#DataMiner.BinderException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.ProgrammingError" title="DataMiner.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.CastException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">CastException</span></span><a class="headerlink" href="#DataMiner.CastException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.DataError" title="DataMiner.DataError"><code class="xref py py-class docutils literal notranslate"><span class="pre">DataError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.CatalogException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">CatalogException</span></span><a class="headerlink" href="#DataMiner.CatalogException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.ProgrammingError" title="DataMiner.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.ConnectionException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ConnectionException</span></span><a class="headerlink" href="#DataMiner.ConnectionException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.OperationalError" title="DataMiner.OperationalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">OperationalError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.ConstraintException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ConstraintException</span></span><a class="headerlink" href="#DataMiner.ConstraintException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.IntegrityError" title="DataMiner.IntegrityError"><code class="xref py py-class docutils literal notranslate"><span class="pre">IntegrityError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.ConversionException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ConversionException</span></span><a class="headerlink" href="#DataMiner.ConversionException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.DataError" title="DataMiner.DataError"><code class="xref py py-class docutils literal notranslate"><span class="pre">DataError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.DataError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">DataError</span></span><a class="headerlink" href="#DataMiner.DataError" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Error" title="DataMiner.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">DataMinerPyConnection</span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">pybind11_object</span></code></p>
<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.append">
<span class="sig-name descname"><span class="pre">append</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">by_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.append" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Append the passed DataFrame to the named table</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.array_type">
<span class="sig-name descname"><span class="pre">array_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.array_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create an array type object of &#8216;type&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.arrow">
<span class="sig-name descname"><span class="pre">arrow</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.arrow" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as Arrow table following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.begin">
<span class="sig-name descname"><span class="pre">begin</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.begin" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Start a new transaction</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.close">
<span class="sig-name descname"><span class="pre">close</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.close" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Close the connection</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.commit">
<span class="sig-name descname"><span class="pre">commit</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.commit" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Commit changes performed within a transaction</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.create_function">
<span class="sig-name descname"><span class="pre">create_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self:</span> <span class="pre">DataMiner.DataMinerPyConnection</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">name:</span> <span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">function:</span> <span class="pre">function</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">return_type:</span> <span class="pre">object</span> <span class="pre">=</span> <span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters:</span> <span class="pre">DataMiner.typing.DataMinerPyType</span> <span class="pre">=</span> <span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">type:</span> <span class="pre">DataMiner.functional.PythonUDFType</span> <span class="pre">=</span> <span class="pre">&lt;PythonUDFType.NATIVE:</span> <span class="pre">0&gt;</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">null_handling:</span> <span class="pre">DataMiner.functional.FunctionNullHandling</span> <span class="pre">=</span> <span class="pre">0</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">exception_handling:</span> <span class="pre">DataMiner.PythonExceptionHandling</span> <span class="pre">=</span> <span class="pre">0</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">side_effects:</span> <span class="pre">bool</span> <span class="pre">=</span> <span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.create_function" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a DataMiner function out of the passing in python function so it can be used in queries</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.cursor">
<span class="sig-name descname"><span class="pre">cursor</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.cursor" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a duplicate of the current connection</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.decimal_type">
<span class="sig-name descname"><span class="pre">decimal_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">width</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">scale</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.decimal_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a decimal type with &#8216;width&#8217; and &#8216;scale&#8217;</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.description">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">description</span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.description" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Get result set attributes, mainly column names</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.df">
<span class="sig-name descname"><span class="pre">df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.df" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as DataFrame following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.dtype">
<span class="sig-name descname"><span class="pre">dtype</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type_str</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.dtype" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a type object by parsing the &#8216;type_str&#8217; string</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.duplicate">
<span class="sig-name descname"><span class="pre">duplicate</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.duplicate" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a duplicate of the current connection</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.enum_type">
<span class="sig-name descname"><span class="pre">enum_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">list</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.enum_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create an enum type of underlying &#8216;type&#8217;, consisting of the list of &#8216;values&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.execute">
<span class="sig-name descname"><span class="pre">execute</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">multiple_parameter_sets</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.execute" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute the given SQL query, optionally using prepared statements with parameters set</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.executemany">
<span class="sig-name descname"><span class="pre">executemany</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.executemany" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute the given prepared statement multiple times using the list of parameter sets in parameters</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetch_arrow_table">
<span class="sig-name descname"><span class="pre">fetch_arrow_table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetch_arrow_table" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as Arrow table following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetch_df">
<span class="sig-name descname"><span class="pre">fetch_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetch_df" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as DataFrame following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetch_df_chunk">
<span class="sig-name descname"><span class="pre">fetch_df_chunk</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">vectors_per_chunk</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetch_df_chunk" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a chunk of the result as Data.Frame following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetch_record_batch">
<span class="sig-name descname"><span class="pre">fetch_record_batch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.RecordBatchReader.html#pyarrow.RecordBatchReader" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.RecordBatchReader</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetch_record_batch" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch an Arrow RecordBatchReader following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetchall">
<span class="sig-name descname"><span class="pre">fetchall</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetchall" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch all rows from a result following execute</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetchdf">
<span class="sig-name descname"><span class="pre">fetchdf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetchdf" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as DataFrame following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetchmany">
<span class="sig-name descname"><span class="pre">fetchmany</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetchmany" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch the next set of rows from a result following execute</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetchnumpy">
<span class="sig-name descname"><span class="pre">fetchnumpy</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetchnumpy" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as list of NumPy arrays following execute</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetchone">
<span class="sig-name descname"><span class="pre">fetchone</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">tuple</span><span class="p"><span class="pre">]</span></span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetchone" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a single row from a result following execute</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.filesystem_is_registered">
<span class="sig-name descname"><span class="pre">filesystem_is_registered</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">bool</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.filesystem_is_registered" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Check if a filesystem with the provided name is currently registered</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_arrow">
<span class="sig-name descname"><span class="pre">from_arrow</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">arrow_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_arrow" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from an Arrow object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_csv_auto">
<span class="sig-name descname"><span class="pre">from_csv_auto</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">header</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">delimiter</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">dtype</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">na_values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">skiprows</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quotechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">escapechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">encoding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parallel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">timestamp_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sample_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">all_varchar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">normalize_names</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">filename</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">null_padding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_csv_auto" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the CSV file in &#8216;name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_df">
<span class="sig-name descname"><span class="pre">from_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_df" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the Data.Frame in df</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_parquet">
<span class="sig-name descname"><span class="pre">from_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_parquet" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>from_parquet(self: DataMiner.DataMinerPyConnection, file_glob: str, binary_as_string: bool = False, <a href="#id1"><span class="problematic" id="id2">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None) -&gt; DataMiner.DataMinerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_glob</p>
<ol class="arabic simple" start="2">
<li><p>from_parquet(self: DataMiner.DataMinerPyConnection, file_globs: List[str], binary_as_string: bool = False, <a href="#id3"><span class="problematic" id="id4">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None) -&gt; DataMiner.DataMinerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_globs</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_query">
<span class="sig-name descname"><span class="pre">from_query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">'query_relation'</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_query" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Run a SQL query. If it is a SELECT statement, create a relation object from the given SQL query, otherwise run the query as-is.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_substrait">
<span class="sig-name descname"><span class="pre">from_substrait</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">proto</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bytes</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_substrait" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a query object from protobuf plan</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_substrait_json">
<span class="sig-name descname"><span class="pre">from_substrait_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">json</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_substrait_json" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a query object from a JSON protobuf plan</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.get_substrait">
<span class="sig-name descname"><span class="pre">get_substrait</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">enable_optimizer</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">True</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.get_substrait" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Serialize a query to protobuf</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.get_substrait_json">
<span class="sig-name descname"><span class="pre">get_substrait_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">enable_optimizer</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">True</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.get_substrait_json" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Serialize a query to protobuf on the JSON format</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.get_table_names">
<span class="sig-name descname"><span class="pre">get_table_names</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">Set</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.get_table_names" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Extract the required table names from a query</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.install_extension">
<span class="sig-name descname"><span class="pre">install_extension</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">extension</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">force_install</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.install_extension" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Install an extension by name</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.list_filesystems">
<span class="sig-name descname"><span class="pre">list_filesystems</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.list_filesystems" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>List registered filesystems, including builtin ones</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.list_type">
<span class="sig-name descname"><span class="pre">list_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.list_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create an array type object of &#8216;type&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.load_extension">
<span class="sig-name descname"><span class="pre">load_extension</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">extension</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.load_extension" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Load an installed extension</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.map_type">
<span class="sig-name descname"><span class="pre">map_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">key</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">value</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.map_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a map type object from &#8216;key_type&#8217; and &#8216;value_type&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.pl">
<span class="sig-name descname"><span class="pre">pl</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner::PolarsDataFrame</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.pl" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as Polars DataFrame following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.query">
<span class="sig-name descname"><span class="pre">query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">'query_relation'</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.query" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Run a SQL query. If it is a SELECT statement, create a relation object from the given SQL query, otherwise run the query as-is.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.read_csv">
<span class="sig-name descname"><span class="pre">read_csv</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">header</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">delimiter</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">dtype</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">na_values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">skiprows</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quotechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">escapechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">encoding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parallel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">timestamp_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sample_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">all_varchar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">normalize_names</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">filename</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">null_padding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.read_csv" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the CSV file in &#8216;name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.read_json">
<span class="sig-name descname"><span class="pre">read_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sample_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">maximum_depth</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">records</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.read_json" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the JSON file in &#8216;name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.read_parquet">
<span class="sig-name descname"><span class="pre">read_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.dataminerPyConnection.read_parquet" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>read_parquet(self: dataminer.dataminerPyConnection, file_glob: str, binary_as_string: bool = False, <a href="#id5"><span class="problematic" id="id6">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_glob</p>
<ol class="arabic simple" start="2">
<li><p>read_parquet(self: dataminer.dataminerPyConnection, file_globs: List[str], binary_as_string: bool = False, <a href="#id7"><span class="problematic" id="id8">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_globs</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.register">
<span class="sig-name descname"><span class="pre">register</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">python_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.register" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Register the passed Python Object value for querying with a view</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.register_filesystem">
<span class="sig-name descname"><span class="pre">register_filesystem</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">filesystem</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">fsspec.AbstractFileSystem</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.register_filesystem" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Register a fsspec compliant filesystem</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.remove_function">
<span class="sig-name descname"><span class="pre">remove_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.remove_function" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Remove a previously created function</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.rollback">
<span class="sig-name descname"><span class="pre">rollback</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.rollback" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Roll back changes performed within a transaction</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.row_type">
<span class="sig-name descname"><span class="pre">row_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">fields</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.row_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a struct type object from &#8216;fields&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.sql">
<span class="sig-name descname"><span class="pre">sql</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">'query_relation'</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.sql" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Run a SQL query. If it is a SELECT statement, create a relation object from the given SQL query, otherwise run the query as-is.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.sqltype">
<span class="sig-name descname"><span class="pre">sqltype</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type_str</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.sqltype" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a type object by parsing the &#8216;type_str&#8217; string</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.string_type">
<span class="sig-name descname"><span class="pre">string_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">collation</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.string_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a string type with an optional collation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.struct_type">
<span class="sig-name descname"><span class="pre">struct_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">fields</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.struct_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a struct type object from &#8216;fields&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.table">
<span class="sig-name descname"><span class="pre">table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.table" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object for the name&#8217;d table</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.table_function">
<span class="sig-name descname"><span class="pre">table_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.table_function" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the name&#8217;d table function with given parameters</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.tf">
<span class="sig-name descname"><span class="pre">tf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.tf" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as dict of TensorFlow Tensors following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.torch">
<span class="sig-name descname"><span class="pre">torch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.torch" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as dict of PyTorch Tensors following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.type">
<span class="sig-name descname"><span class="pre">type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type_str</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a type object by parsing the &#8216;type_str&#8217; string</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.union_type">
<span class="sig-name descname"><span class="pre">union_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">members</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.union_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a union type object from &#8216;members&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.unregister">
<span class="sig-name descname"><span class="pre">unregister</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.unregister" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Unregister the view name</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.unregister_filesystem">
<span class="sig-name descname"><span class="pre">unregister_filesystem</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.unregister_filesystem" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Unregister a filesystem</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.values">
<span class="sig-name descname"><span class="pre">values</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.values" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the passed values</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyConnection.view">
<span class="sig-name descname"><span class="pre">view</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyConnection.view" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object for the name&#8217;d view</p>
</dd>
</dl>

</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">dataminerPyRelation</span></span><a class="headerlink" href="#dataminer.dataminerPyRelation" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">pybind11_object</span></code></p>
<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.abs">
<span class="sig-name descname"><span class="pre">abs</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.abs" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the absolute value for the specified columns.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.aggregate">
<span class="sig-name descname"><span class="pre">aggregate</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggr_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.aggregate" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the aggregate aggr_expr by the optional groups group_expr on the relation</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.alias">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">alias</span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.alias" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Get the name of the current alias</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.apply">
<span class="sig-name descname"><span class="pre">apply</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">function_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">function_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">function_parameter</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.apply" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the function of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.arrow">
<span class="sig-name descname"><span class="pre">arrow</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.arrow" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as an Arrow Table</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.close">
<span class="sig-name descname"><span class="pre">close</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.close" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Closes the result</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.columns">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">columns</span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.columns" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Return a list containing the names of the columns of the relation.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.count">
<span class="sig-name descname"><span class="pre">count</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">count_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.count" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the aggregate count of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.create">
<span class="sig-name descname"><span class="pre">create</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.create" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Creates a new table named table_name with the contents of the relation object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.create_view">
<span class="sig-name descname"><span class="pre">create_view</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">replace</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">True</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.create_view" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Creates a view named view_name that refers to the relation object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.cummax">
<span class="sig-name descname"><span class="pre">cummax</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.cummax" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the cumulative maximum of the aggregate column.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.cummin">
<span class="sig-name descname"><span class="pre">cummin</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.cummin" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the cumulative minimum of the aggregate column.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.cumprod">
<span class="sig-name descname"><span class="pre">cumprod</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.cumprod" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the cumulative product of the aggregate column.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.cumsum">
<span class="sig-name descname"><span class="pre">cumsum</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.cumsum" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the cumulative sum of the aggregate column.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.describe">
<span class="sig-name descname"><span class="pre">describe</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.describe" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Gives basic statistics (e.g., min,max) and if null exists for each column of the relation.</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.description">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">description</span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.description" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Return the description of the result</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.df">
<span class="sig-name descname"><span class="pre">df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.df" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a pandas DataFrame</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.distinct">
<span class="sig-name descname"><span class="pre">distinct</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.distinct" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Retrieve distinct rows from this relation object</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.dtypes">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">dtypes</span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.dtypes" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Return a list containing the types of the columns of the relation.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.except_">
<span class="sig-name descname"><span class="pre">except_</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">other_rel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.except_" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create the set except of this relation object with another relation object in other_rel</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.execute">
<span class="sig-name descname"><span class="pre">execute</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.execute" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Transform the relation into a result set</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.explain">
<span class="sig-name descname"><span class="pre">explain</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.ExplainType" title="dataminer.ExplainType"><span class="pre">dataminer.ExplainType</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">'standard'</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">str</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.explain" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.fetch_arrow_reader">
<span class="sig-name descname"><span class="pre">fetch_arrow_reader</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.RecordBatchReader.html#pyarrow.RecordBatchReader" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.RecordBatchReader</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.fetch_arrow_reader" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and return an Arrow Record Batch Reader that yields all rows</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.fetch_arrow_table">
<span class="sig-name descname"><span class="pre">fetch_arrow_table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.fetch_arrow_table" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as an Arrow Table</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.fetchall">
<span class="sig-name descname"><span class="pre">fetchall</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.fetchall" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a list of tuples</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.fetchdf">
<span class="sig-name descname"><span class="pre">fetchdf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.fetchdf" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a pandas DataFrame</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.fetchmany">
<span class="sig-name descname"><span class="pre">fetchmany</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.fetchmany" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch the next set of rows as a list of tuples</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.fetchnumpy">
<span class="sig-name descname"><span class="pre">fetchnumpy</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.fetchnumpy" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a Python dict mapping each column to one numpy arrays</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.fetchone">
<span class="sig-name descname"><span class="pre">fetchone</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">tuple</span><span class="p"><span class="pre">]</span></span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.fetchone" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch a single row as a tuple</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.filter">
<span class="sig-name descname"><span class="pre">filter</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">filter_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.filter" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Filter the relation object by the filter in filter_expr</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.insert">
<span class="sig-name descname"><span class="pre">insert</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.insert" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Inserts the given values into the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.insert_into">
<span class="sig-name descname"><span class="pre">insert_into</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.insert_into" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Inserts the relation object into an existing table named table_name</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.intersect">
<span class="sig-name descname"><span class="pre">intersect</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">other_rel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.intersect" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create the set intersection of this relation object with another relation object in other_rel</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.join">
<span class="sig-name descname"><span class="pre">join</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">other_rel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">condition</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">how</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">'inner'</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.join" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Join the relation object with another relation object in other_rel using the join condition expression in join_condition. Types supported are &#8216;inner&#8217; and &#8216;left&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.kurt">
<span class="sig-name descname"><span class="pre">kurt</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.kurt" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the excess kurtosis of the aggregate column.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.limit">
<span class="sig-name descname"><span class="pre">limit</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">n</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">offset</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">0</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.limit" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Only retrieve the first n rows from this relation object, starting at offset</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.mad">
<span class="sig-name descname"><span class="pre">mad</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.mad" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the median absolute deviation for the aggregate columns. NULL values are ignored. Temporal types return a positive INTERVAL.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.map">
<span class="sig-name descname"><span class="pre">map</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">map_function</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">function</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">schema</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.map" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Calls the passed function on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.max">
<span class="sig-name descname"><span class="pre">max</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">max_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.max" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the aggregate max of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.mean">
<span class="sig-name descname"><span class="pre">mean</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">mean_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.mean" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the aggregate mean of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.median">
<span class="sig-name descname"><span class="pre">median</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">median_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.median" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the aggregate median of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.min">
<span class="sig-name descname"><span class="pre">min</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">min_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.min" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the aggregate min of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.mode">
<span class="sig-name descname"><span class="pre">mode</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.mode" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the most frequent value for the aggregate columns. NULL values are ignored.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.order">
<span class="sig-name descname"><span class="pre">order</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">order_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.order" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Reorder the relation object by order_expr</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.pl">
<span class="sig-name descname"><span class="pre">pl</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer::PolarsDataFrame</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.pl" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a Polars DataFrame</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.prod">
<span class="sig-name descname"><span class="pre">prod</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.prod" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Calculates the product of the aggregate column.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.project">
<span class="sig-name descname"><span class="pre">project</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">project_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.project" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Project the relation object by the projection in project_expr</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.quantile">
<span class="sig-name descname"><span class="pre">quantile</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">q</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quantile_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.quantile" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the quantile of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.query">
<span class="sig-name descname"><span class="pre">query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">virtual_table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sql_query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.query" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Run the given SQL query in sql_query on the view named virtual_table_name that refers to the relation object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.record_batch">
<span class="sig-name descname"><span class="pre">record_batch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.RecordBatchReader.html#pyarrow.RecordBatchReader" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.RecordBatchReader</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.record_batch" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and return an Arrow Record Batch Reader that yields all rows</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.select_dtypes">
<span class="sig-name descname"><span class="pre">select_dtypes</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">types</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.select_dtypes" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Select columns from the relation, by filtering based on type(s)</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.select_types">
<span class="sig-name descname"><span class="pre">select_types</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">types</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.select_types" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Select columns from the relation, by filtering based on type(s)</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.sem">
<span class="sig-name descname"><span class="pre">sem</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.sem" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the standard error of the mean of the aggregate column.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.set_alias">
<span class="sig-name descname"><span class="pre">set_alias</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.set_alias" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Rename the relation object to new alias</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.shape">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">shape</span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.shape" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Tuple of # of rows, # of columns in relation.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.show">
<span class="sig-name descname"><span class="pre">show</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.show" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Display a summary of the data</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.skew">
<span class="sig-name descname"><span class="pre">skew</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggregation_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.skew" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the skewness of the aggregate column.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.sql_query">
<span class="sig-name descname"><span class="pre">sql_query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">str</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.sql_query" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Get the SQL query that is equivalent to the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.std">
<span class="sig-name descname"><span class="pre">std</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">std_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.std" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the standard deviation of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.sum">
<span class="sig-name descname"><span class="pre">sum</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">sum_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.sum" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the aggregate sum of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.tf">
<span class="sig-name descname"><span class="pre">tf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.tf" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as dict of TensorFlow Tensors</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.to_arrow_table">
<span class="sig-name descname"><span class="pre">to_arrow_table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.to_arrow_table" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as an Arrow Table</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.to_csv">
<span class="sig-name descname"><span class="pre">to_csv</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">file_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">na_rep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">header</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quotechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">escapechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">timestamp_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quoting</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">encoding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.to_csv" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Write the relation object to a CSV file in &#8216;file_name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.to_df">
<span class="sig-name descname"><span class="pre">to_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.to_df" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a pandas DataFrame</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.to_parquet">
<span class="sig-name descname"><span class="pre">to_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">file_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.to_parquet" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Write the relation object to a Parquet file in &#8216;file_name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.to_table">
<span class="sig-name descname"><span class="pre">to_table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.to_table" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Creates a new table named table_name with the contents of the relation object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.to_view">
<span class="sig-name descname"><span class="pre">to_view</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">replace</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">True</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.to_view" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Creates a view named view_name that refers to the relation object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.torch">
<span class="sig-name descname"><span class="pre">torch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.torch" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as dict of PyTorch Tensors</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.type">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">type</span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Get the type of the relation.</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.types">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">types</span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.types" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Return a list containing the types of the columns of the relation.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.union">
<span class="sig-name descname"><span class="pre">union</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">union_rel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.union" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create the set union of this relation object with another relation object in other_rel</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.unique">
<span class="sig-name descname"><span class="pre">unique</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">unique_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.unique" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Number of distinct values in a column.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.value_counts">
<span class="sig-name descname"><span class="pre">value_counts</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">value_counts_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.value_counts" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Count number of rows with each unique value of variable</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.var">
<span class="sig-name descname"><span class="pre">var</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">var_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.var" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the variance of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.write_csv">
<span class="sig-name descname"><span class="pre">write_csv</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">file_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">na_rep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">header</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quotechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">escapechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">timestamp_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quoting</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">encoding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.write_csv" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Write the relation object to a CSV file in &#8216;file_name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="dataminer.dataminerPyRelation.write_parquet">
<span class="sig-name descname"><span class="pre">write_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">file_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.dataminerPyRelation.write_parquet" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Write the relation object to a Parquet file in &#8216;file_name&#8217;</p>
</dd>
</dl>

</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.Error">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">Error</span></span><a class="headerlink" href="#dataminer.Error" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">Exception</span></code></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="dataminer.ExplainType">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">ExplainType</span></span><a class="headerlink" href="#dataminer.ExplainType" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">pybind11_object</span></code></p>
<p>Members:</p>
<p>STANDARD</p>
<p>ANALYZE</p>
<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.ExplainType.ANALYZE">
<span class="sig-name descname"><span class="pre">ANALYZE</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;ExplainType.ANALYZE:</span> <span class="pre">1&gt;</span></em><a class="headerlink" href="#dataminer.ExplainType.ANALYZE" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.ExplainType.STANDARD">
<span class="sig-name descname"><span class="pre">STANDARD</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;ExplainType.STANDARD:</span> <span class="pre">0&gt;</span></em><a class="headerlink" href="#dataminer.ExplainType.STANDARD" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.ExplainType.name">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">name</span></span><a class="headerlink" href="#dataminer.ExplainType.name" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.ExplainType.value">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">value</span></span><a class="headerlink" href="#dataminer.ExplainType.value" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.FatalException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">FatalException</span></span><a class="headerlink" href="#dataminer.FatalException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.Error" title="dataminer.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.HTTPException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">HTTPException</span></span><a class="headerlink" href="#dataminer.HTTPException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.IOException" title="dataminer.IOException"><code class="xref py py-class docutils literal notranslate"><span class="pre">IOException</span></code></a></p>
<p>Thrown when an error occurs in the httpfs extension, or whilst downloading an extension.</p>
<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.HTTPException.body">
<span class="sig-name descname"><span class="pre">body</span></span><em class="property"><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="pre">str</span></em><a class="headerlink" href="#dataminer.HTTPException.body" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.HTTPException.headers">
<span class="sig-name descname"><span class="pre">headers</span></span><em class="property"><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="pre">Dict</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">,</span></span><span class="w"> </span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></em><a class="headerlink" href="#dataminer.HTTPException.headers" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.HTTPException.reason">
<span class="sig-name descname"><span class="pre">reason</span></span><em class="property"><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="pre">str</span></em><a class="headerlink" href="#dataminer.HTTPException.reason" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.HTTPException.status_code">
<span class="sig-name descname"><span class="pre">status_code</span></span><em class="property"><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="pre">int</span></em><a class="headerlink" href="#dataminer.HTTPException.status_code" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.IOException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">IOException</span></span><a class="headerlink" href="#dataminer.IOException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.OperationalError" title="dataminer.OperationalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">OperationalError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.IntegrityError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">IntegrityError</span></span><a class="headerlink" href="#dataminer.IntegrityError" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.Error" title="dataminer.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.InternalError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">InternalError</span></span><a class="headerlink" href="#dataminer.InternalError" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.Error" title="dataminer.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.InternalException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">InternalException</span></span><a class="headerlink" href="#dataminer.InternalException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.InternalError" title="dataminer.InternalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">InternalError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.InterruptException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">InterruptException</span></span><a class="headerlink" href="#dataminer.InterruptException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.Error" title="dataminer.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.InvalidInputException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">InvalidInputException</span></span><a class="headerlink" href="#dataminer.InvalidInputException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.ProgrammingError" title="dataminer.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.InvalidTypeException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">InvalidTypeException</span></span><a class="headerlink" href="#dataminer.InvalidTypeException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.ProgrammingError" title="dataminer.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.NotImplementedException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">NotImplementedException</span></span><a class="headerlink" href="#dataminer.NotImplementedException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.NotSupportedError" title="dataminer.NotSupportedError"><code class="xref py py-class docutils literal notranslate"><span class="pre">NotSupportedError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.NotSupportedError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">NotSupportedError</span></span><a class="headerlink" href="#dataminer.NotSupportedError" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.Error" title="dataminer.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.OperationalError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">OperationalError</span></span><a class="headerlink" href="#dataminer.OperationalError" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.Error" title="dataminer.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.OutOfMemoryException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">OutOfMemoryException</span></span><a class="headerlink" href="#dataminer.OutOfMemoryException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.OperationalError" title="dataminer.OperationalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">OperationalError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.OutOfRangeException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">OutOfRangeException</span></span><a class="headerlink" href="#dataminer.OutOfRangeException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.DataError" title="dataminer.DataError"><code class="xref py py-class docutils literal notranslate"><span class="pre">DataError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.ParserException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">ParserException</span></span><a class="headerlink" href="#dataminer.ParserException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.ProgrammingError" title="dataminer.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.PermissionException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">PermissionException</span></span><a class="headerlink" href="#dataminer.PermissionException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.Error" title="dataminer.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.ProgrammingError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">ProgrammingError</span></span><a class="headerlink" href="#dataminer.ProgrammingError" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.Error" title="dataminer.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="dataminer.PythonExceptionHandling">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">PythonExceptionHandling</span></span><a class="headerlink" href="#dataminer.PythonExceptionHandling" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">pybind11_object</span></code></p>
<p>Members:</p>
<p>DEFAULT</p>
<p>RETURN_NULL</p>
<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.PythonExceptionHandling.DEFAULT">
<span class="sig-name descname"><span class="pre">DEFAULT</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;PythonExceptionHandling.DEFAULT:</span> <span class="pre">0&gt;</span></em><a class="headerlink" href="#dataminer.PythonExceptionHandling.DEFAULT" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.PythonExceptionHandling.RETURN_NULL">
<span class="sig-name descname"><span class="pre">RETURN_NULL</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;PythonExceptionHandling.RETURN_NULL:</span> <span class="pre">1&gt;</span></em><a class="headerlink" href="#dataminer.PythonExceptionHandling.RETURN_NULL" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.PythonExceptionHandling.name">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">name</span></span><a class="headerlink" href="#dataminer.PythonExceptionHandling.name" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.PythonExceptionHandling.value">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">value</span></span><a class="headerlink" href="#dataminer.PythonExceptionHandling.value" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.SequenceException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">SequenceException</span></span><a class="headerlink" href="#dataminer.SequenceException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.Error" title="dataminer.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.SerializationException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">SerializationException</span></span><a class="headerlink" href="#dataminer.SerializationException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.OperationalError" title="dataminer.OperationalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">OperationalError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.StandardException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">StandardException</span></span><a class="headerlink" href="#dataminer.StandardException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.Error" title="dataminer.Error"><code class="xref py py-class docutils literal notranslate"><span class="pre">Error</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.SyntaxException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">SyntaxException</span></span><a class="headerlink" href="#dataminer.SyntaxException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.ProgrammingError" title="dataminer.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.TransactionException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">TransactionException</span></span><a class="headerlink" href="#dataminer.TransactionException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.OperationalError" title="dataminer.OperationalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">OperationalError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.TypeMismatchException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">TypeMismatchException</span></span><a class="headerlink" href="#dataminer.TypeMismatchException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.DataError" title="dataminer.DataError"><code class="xref py py-class docutils literal notranslate"><span class="pre">DataError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.ValueOutOfRangeException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">ValueOutOfRangeException</span></span><a class="headerlink" href="#dataminer.ValueOutOfRangeException" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#dataminer.DataError" title="dataminer.DataError"><code class="xref py py-class docutils literal notranslate"><span class="pre">DataError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="dataminer.Warning">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">Warning</span></span><a class="headerlink" href="#dataminer.Warning" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">Exception</span></code></p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.aggregate">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">aggregate</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggr_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.aggregate" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the aggregate aggr_expr by the optional groups group_expr on DataFrame df</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.alias">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">alias</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.alias" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation from DataFrame df with the passed alias</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.append">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">append</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">by_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.append" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Append the passed DataFrame to the named table</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.array_type">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">array_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">dataminer.typing.dataminerPyType</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.array_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create an array type object of &#8216;type&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.arrow">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">arrow</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.arrow" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>arrow(rows_per_batch: int = 1000000, connection: dataminer.dataminerPyConnection = None) -&gt; pyarrow.lib.Table</p></li>
</ol>
<p>Fetch a result as Arrow table following execute()</p>
<ol class="arabic simple" start="2">
<li><p>arrow(arrow_object: object, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from an Arrow object</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.begin">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">begin</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.begin" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Start a new transaction</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.close">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">close</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.close" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Close the connection</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.commit">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">commit</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.commit" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Commit changes performed within a transaction</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.connect">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">connect</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">database</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">':memory:'</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">read_only</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">config</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">dict</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.connect" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a DataMiner database instance. Can take a database file name to read/write persistent data and a read_only flag if no changes are desired</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.create_function">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">create_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name:</span> <span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">function:</span> <span class="pre">function</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">return_type:</span> <span class="pre">object</span> <span class="pre">=</span> <span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters:</span> <span class="pre">dataminer.typing.dataminerPyType</span> <span class="pre">=</span> <span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">type:</span> <span class="pre">dataminer.functional.PythonUDFType</span> <span class="pre">=</span> <span class="pre">&lt;PythonUDFType.NATIVE:</span> <span class="pre">0&gt;</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">null_handling:</span> <span class="pre">dataminer.functional.FunctionNullHandling</span> <span class="pre">=</span> <span class="pre">0</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">exception_handling:</span> <span class="pre">dataminer.PythonExceptionHandling</span> <span class="pre">=</span> <span class="pre">0</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">side_effects:</span> <span class="pre">bool</span> <span class="pre">=</span> <span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection:</span> <span class="pre">dataminer.dataminerPyConnection</span> <span class="pre">=</span> <span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.create_function" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a DataMiner function out of the passing in python function so it can be used in queries</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.cursor">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">cursor</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.cursor" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a duplicate of the current connection</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.decimal_type">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">decimal_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">width</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">scale</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.decimal_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a decimal type with &#8216;width&#8217; and &#8216;scale&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.description">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">description</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">list</span><span class="p"><span class="pre">]</span></span></span></span><a class="headerlink" href="#dataminer.description" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Get result set attributes, mainly column names</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.df">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.df" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>df(<a href="#id9"><span class="problematic" id="id10">*</span></a>, date_as_object: bool = False, connection: dataminer.dataminerPyConnection = None) -&gt; pandas.DataFrame</p></li>
</ol>
<p>Fetch a result as DataFrame following execute()</p>
<ol class="arabic simple" start="2">
<li><p>df(df: pandas.DataFrame, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the DataFrame df</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.distinct">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">distinct</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.distinct" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the distinct rows from DataFrame df</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.dtype">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">dtype</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">type_str</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.dtype" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a type object from &#8216;type_str&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.duplicate">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">duplicate</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.duplicate" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a duplicate of the current connection</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.enum_type">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">enum_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">dataminer.typing.dataminerPyType</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">list</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.enum_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create an enum type of underlying &#8216;type&#8217;, consisting of the list of &#8216;values&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.execute">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">execute</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">multiple_parameter_sets</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.execute" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute the given SQL query, optionally using prepared statements with parameters set</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.executemany">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">executemany</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.executemany" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Execute the given prepared statement multiple times using the list of parameter sets in parameters</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.fetch_arrow_table">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">fetch_arrow_table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#dataminer.fetch_arrow_table" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as Arrow table following execute()</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.fetch_df">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">fetch_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#dataminer.fetch_df" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as DataFrame following execute()</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.fetch_df_chunk">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">fetch_df_chunk</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">vectors_per_chunk</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#dataminer.fetch_df_chunk" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a chunk of the result as DataFrame following execute()</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.fetch_record_batch">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">fetch_record_batch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.RecordBatchReader.html#pyarrow.RecordBatchReader" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.RecordBatchReader</span></a></span></span><a class="headerlink" href="#dataminer.fetch_record_batch" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch an Arrow RecordBatchReader following execute()</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.fetchall">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">fetchall</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#dataminer.fetchall" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch all rows from a result following execute</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.fetchdf">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">fetchdf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#dataminer.fetchdf" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as DataFrame following execute()</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.fetchmany">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">fetchmany</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#dataminer.fetchmany" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch the next set of rows from a result following execute</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.fetchnumpy">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">fetchnumpy</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#dataminer.fetchnumpy" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as list of NumPy arrays following execute</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.fetchone">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">fetchone</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">tuple</span><span class="p"><span class="pre">]</span></span></span></span><a class="headerlink" href="#dataminer.fetchone" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a single row from a result following execute</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.filesystem_is_registered">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">filesystem_is_registered</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">bool</span></span></span><a class="headerlink" href="#dataminer.filesystem_is_registered" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Check if a filesystem with the provided name is currently registered</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.filter">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">filter</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">filter_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.filter" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Filter the DataFrame df by the filter in filter_expr</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.from_arrow">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">from_arrow</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">arrow_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.from_arrow" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from an Arrow object</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.from_csv_auto">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">from_csv_auto</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">header</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">delimiter</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">dtype</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">na_values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">skiprows</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quotechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">escapechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">encoding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parallel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">timestamp_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sample_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">all_varchar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">normalize_names</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">filename</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">null_padding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.from_csv_auto" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the CSV file in &#8216;name&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.from_df">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">from_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.from_df" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the DataFrame df</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.from_parquet">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">from_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.from_parquet" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>from_parquet(file_glob: str, binary_as_string: bool = False, <a href="#id11"><span class="problematic" id="id12">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_glob</p>
<ol class="arabic simple" start="2">
<li><p>from_parquet(file_globs: List[str], binary_as_string: bool = False, <a href="#id13"><span class="problematic" id="id14">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_globs</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.from_query">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">from_query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.from_query" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>from_query(query: str, alias: str = &#8216;query_relation&#8217;, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the given SQL query</p>
<ol class="arabic simple" start="2">
<li><p>from_query(query: str, alias: str = &#8216;query_relation&#8217;, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the given SQL query</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.from_substrait">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">from_substrait</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.from_substrait" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>from_substrait(proto: bytes, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Creates a query object from the substrait plan</p>
<ol class="arabic simple" start="2">
<li><p>from_substrait(proto: bytes, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a query object from protobuf plan</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.from_substrait_json">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">from_substrait_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">json</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.from_substrait_json" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Serialize a query object to protobuf</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.get_substrait">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">get_substrait</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.get_substrait" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>get_substrait(query: str, connection: dataminer.dataminerPyConnection = None, <a href="#id15"><span class="problematic" id="id16">*</span></a>, enable_optimizer: bool = True) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Serialize a query object to protobuf</p>
<ol class="arabic simple" start="2">
<li><p>get_substrait(query: str, connection: dataminer.dataminerPyConnection = None, <a href="#id17"><span class="problematic" id="id18">*</span></a>, enable_optimizer: bool = True) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Serialize a query to protobuf</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.get_substrait_json">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">get_substrait_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.get_substrait_json" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>get_substrait_json(query: str, connection: dataminer.dataminerPyConnection = None, <a href="#id19"><span class="problematic" id="id20">*</span></a>, enable_optimizer: bool = True) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Serialize a query object to protobuf</p>
<ol class="arabic simple" start="2">
<li><p>get_substrait_json(query: str, connection: dataminer.dataminerPyConnection = None, <a href="#id21"><span class="problematic" id="id22">*</span></a>, enable_optimizer: bool = True) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Serialize a query to protobuf on the JSON format</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.get_table_names">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">get_table_names</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">Set</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></span></span><a class="headerlink" href="#dataminer.get_table_names" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Extract the required table names from a query</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.install_extension">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">install_extension</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">extension</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">force_install</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.install_extension" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Install an extension by name</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.limit">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">limit</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">n</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.limit" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Retrieve the first n rows from the DataFrame df</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.list_filesystems">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">list_filesystems</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#dataminer.list_filesystems" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>List registered filesystems, including builtin ones</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.list_type">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">list_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">dataminer.typing.dataminerPyType</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.list_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create an array type object of &#8216;type&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.load_extension">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">load_extension</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">extension</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.load_extension" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Load an installed extension</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.map_type">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">map_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">key</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">dataminer.typing.dataminerPyType</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">value</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">dataminer.typing.dataminerPyType</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.map_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a map type object from &#8216;key_type&#8217; and &#8216;value_type&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.order">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">order</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">order_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.order" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Reorder the DataFrame df by order_expr</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.pl">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">pl</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer::PolarsDataFrame</span></span></span><a class="headerlink" href="#dataminer.pl" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as Polars DataFrame following execute()</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.project">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">project</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">project_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.project" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Project the DataFrame df by the projection in project_expr</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.query">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.query" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>query(query: str, alias: str = &#8216;query_relation&#8217;, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Run a SQL query. If it is a SELECT statement, create a relation object from the given SQL query, otherwise run the query as-is.</p>
<ol class="arabic simple" start="2">
<li><p>query(query: str, alias: str = &#8216;query_relation&#8217;, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Run a SQL query. If it is a SELECT statement, create a relation object from the given SQL query, otherwise run the query as-is.</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.query_df">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">query_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">virtual_table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sql_query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.query_df" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Run the given SQL query in sql_query on the view named virtual_table_name that contains the content of DataFrame df</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.read_csv">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">read_csv</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">header</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">delimiter</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">dtype</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">na_values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">skiprows</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quotechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">escapechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">encoding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parallel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">timestamp_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sample_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">all_varchar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">normalize_names</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">filename</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">null_padding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.read_csv" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the CSV file in &#8216;name&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.read_json">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">read_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sample_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">maximum_depth</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">records</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.read_json" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the JSON file in &#8216;name&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.read_parquet">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">read_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.read_parquet" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>read_parquet(file_glob: str, binary_as_string: bool = False, <a href="#id23"><span class="problematic" id="id24">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_glob</p>
<ol class="arabic simple" start="2">
<li><p>read_parquet(file_globs: List[str], binary_as_string: bool = False, <a href="#id25"><span class="problematic" id="id26">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_globs</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.register">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">register</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">python_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.register" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Register the passed Python Object value for querying with a view</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.register_filesystem">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">register_filesystem</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">filesystem</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">fsspec.AbstractFileSystem</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.register_filesystem" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Register a fsspec compliant filesystem</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.remove_function">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">remove_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.remove_function" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Remove a previously created function</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.rollback">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">rollback</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.rollback" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Roll back changes performed within a transaction</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.row_type">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">row_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">fields</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.row_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a struct type object from &#8216;fields&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.sql">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">sql</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">'query_relation'</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.sql" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Run a SQL query. If it is a SELECT statement, create a relation object from the given SQL query, otherwise run the query as-is.</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.sqltype">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">sqltype</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">type_str</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.sqltype" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a type object from &#8216;type_str&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.string_type">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">string_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">collation</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.string_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a string type with an optional collation</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.struct_type">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">struct_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">fields</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.struct_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a struct type object from &#8216;fields&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.table">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.table" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object for the name&#8217;d table</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.table_function">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">table_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.table_function" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the name&#8217;d table function with given parameters</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.tf">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">tf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#dataminer.tf" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as dict of TensorFlow Tensors following execute()</p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="dataminer.token_type">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">token_type</span></span><a class="headerlink" href="#dataminer.token_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">pybind11_object</span></code></p>
<p>Members:</p>
<p>identifier</p>
<p>numeric_const</p>
<p>string_const</p>
<p>operator</p>
<p>keyword</p>
<p>comment</p>
<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.token_type.comment">
<span class="sig-name descname"><span class="pre">comment</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.comment:</span> <span class="pre">5&gt;</span></em><a class="headerlink" href="#dataminer.token_type.comment" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.token_type.identifier">
<span class="sig-name descname"><span class="pre">identifier</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.identifier:</span> <span class="pre">0&gt;</span></em><a class="headerlink" href="#dataminer.token_type.identifier" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.token_type.keyword">
<span class="sig-name descname"><span class="pre">keyword</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.keyword:</span> <span class="pre">4&gt;</span></em><a class="headerlink" href="#dataminer.token_type.keyword" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.token_type.name">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">name</span></span><a class="headerlink" href="#dataminer.token_type.name" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.token_type.numeric_const">
<span class="sig-name descname"><span class="pre">numeric_const</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.numeric_const:</span> <span class="pre">1&gt;</span></em><a class="headerlink" href="#dataminer.token_type.numeric_const" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.token_type.operator">
<span class="sig-name descname"><span class="pre">operator</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.operator:</span> <span class="pre">3&gt;</span></em><a class="headerlink" href="#dataminer.token_type.operator" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="dataminer.token_type.string_const">
<span class="sig-name descname"><span class="pre">string_const</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.string_const:</span> <span class="pre">2&gt;</span></em><a class="headerlink" href="#dataminer.token_type.string_const" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="dataminer.token_type.value">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">value</span></span><a class="headerlink" href="#dataminer.token_type.value" title="Permalink to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.tokenize">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">tokenize</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#dataminer.tokenize" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Tokenizes a SQL string, returning a list of (position, type) tuples that can be used for e.g. syntax highlighting</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.torch">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">torch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#dataminer.torch" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as dict of PyTorch Tensors following execute()</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.type">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">type_str</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a type object from &#8216;type_str&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.union_type">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">union_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">members</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dataminer.typing.dataminerPyType</span></span></span><a class="headerlink" href="#dataminer.union_type" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a union type object from &#8216;members&#8217;</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.unregister">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">unregister</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span></span><a class="headerlink" href="#dataminer.unregister" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Unregister the view name</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.unregister_filesystem">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">unregister_filesystem</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.unregister_filesystem" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Unregister a filesystem</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.values">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">values</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#dataminer.values" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>values(values: object, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the passed values</p>
<ol class="arabic simple" start="2">
<li><p>values(values: object, connection: dataminer.dataminerPyConnection = None) -&gt; dataminer.dataminerPyRelation</p></li>
</ol>
<p>Create a relation object from the passed values</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.view">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">view</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#dataminer.dataminerPyRelation" title="dataminer.dataminerPyRelation"><span class="pre">dataminer.dataminerPyRelation</span></a></span></span><a class="headerlink" href="#dataminer.view" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object for the name&#8217;d view</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="dataminer.write_csv">
<span class="sig-prename descclassname"><span class="pre">dataminer.</span></span><span class="sig-name descname"><span class="pre">write_csv</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">file_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">connection</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#dataminer.dataminerPyConnection" title="dataminer.dataminerPyConnection"><span class="pre">dataminer.dataminerPyConnection</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#dataminer.write_csv" title="Permalink to this definition">&#182;</a>
</dt>
<dd>
<p>Write the DataFrame df to a CSV file in file_name</p>
</dd>
</dl>



<div class="clearer"></div>
</div>
</div>
</div>