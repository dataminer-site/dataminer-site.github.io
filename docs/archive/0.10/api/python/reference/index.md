---
layout: docu
title: Python Client API
---

<div class="documentwrapper">
<div class="bodywrapper">
<div class="body" role="main">

<dl class="py data" id="module-DataMiner">
<dt class="sig sig-object py" id="DataMiner.threadsafety">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">threadsafety</span></span><em class="property"><span class="w"> </span><span class="pre">bool</span></em><a class="headerlink" href="#DataMiner.threadsafety" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Indicates that this package is threadsafe</p>
</dd>
</dl>

<dl class="py data">
<dt class="sig sig-object py" id="DataMiner.apilevel">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">apilevel</span></span><em class="property"><span class="w"> </span><span class="pre">int</span></em><a class="headerlink" href="#DataMiner.apilevel" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Indicates which Python DBAPI version this package implements</p>
</dd>
</dl>

<dl class="py data">
<dt class="sig sig-object py" id="DataMiner.paramstyle">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">paramstyle</span></span><em class="property"><span class="w"> </span><span class="pre">str</span></em><a class="headerlink" href="#DataMiner.paramstyle" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Indicates which parameter style DataMiner supports</p>
</dd>
</dl>

<dl class="py data">
<dt class="sig sig-object py" id="DataMiner.default_connection">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">default_connection</span></span><em class="property"><span class="w"> </span><span class="pre">DataMiner.DataMinerPyConnection</span></em><a class="headerlink" href="#DataMiner.default_connection" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>The connection that is used by default if you don&#8217;t explicitly pass one to the root methods in this module</p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.BinaryValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">BinaryValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.BinaryValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.BinderException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">BinderException</span></span><a class="headerlink" href="#DataMiner.BinderException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.ProgrammingError" title="DataMiner.DataMiner.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.BitValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">BitValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.BitValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.BlobValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">BlobValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.BlobValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.BooleanValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">BooleanValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.BooleanValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.CaseExpression">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">CaseExpression</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">condition</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">value</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.CaseExpression" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.CatalogException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">CatalogException</span></span><a class="headerlink" href="#DataMiner.CatalogException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.ProgrammingError" title="DataMiner.DataMiner.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.CoalesceOperator">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">CoalesceOperator</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.CoalesceOperator" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.ColumnExpression">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ColumnExpression</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.ColumnExpression" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a column reference from the provided column name</p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.ConnectionException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ConnectionException</span></span><a class="headerlink" href="#DataMiner.ConnectionException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.OperationalError" title="DataMiner.DataMiner.OperationalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">OperationalError</span></code></a></p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.ConstantExpression">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ConstantExpression</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">value</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.ConstantExpression" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a constant expression from the provided value</p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.ConstraintException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ConstraintException</span></span><a class="headerlink" href="#DataMiner.ConstraintException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.IntegrityError" title="DataMiner.DataMiner.IntegrityError"><code class="xref py py-class docutils literal notranslate"><span class="pre">IntegrityError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.ConversionException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ConversionException</span></span><a class="headerlink" href="#DataMiner.ConversionException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.DataError" title="DataMiner.DataMiner.DataError"><code class="xref py py-class docutils literal notranslate"><span class="pre">DataError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.DataError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">DataError</span></span><a class="headerlink" href="#DataMiner.DataError" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">DatabaseError</span></code></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.DateValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">DateValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.DateValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.DecimalValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">DecimalValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">width</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">scale</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.DecimalValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.DoubleValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">DoubleValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.DoubleValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">DataMinerPyConnection</span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">pybind11_object</span></code></p>
<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.append">
<span class="sig-name descname"><span class="pre">append</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">by_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.append" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Append the passed DataFrame to the named table</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.array_type">
<span class="sig-name descname"><span class="pre">array_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.array_type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create an array type object of &#8216;type&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.arrow">
<span class="sig-name descname"><span class="pre">arrow</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.arrow" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as Arrow table following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.begin">
<span class="sig-name descname"><span class="pre">begin</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.begin" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Start a new transaction</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.checkpoint">
<span class="sig-name descname"><span class="pre">checkpoint</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.checkpoint" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Synchronizes data in the write-ahead log (WAL) to the database data file (no-op for in-memory connections)</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.close">
<span class="sig-name descname"><span class="pre">close</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.close" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Close the connection</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.commit">
<span class="sig-name descname"><span class="pre">commit</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.commit" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Commit changes performed within a transaction</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.create_function">
<span class="sig-name descname"><span class="pre">create_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self:</span> <span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">name:</span> <span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">function:</span> <span class="pre">Callable</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters:</span> <span class="pre">object</span> <span class="pre">=</span> <span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">return_type:</span> <span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span> <span class="pre">=</span> <span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">type:</span> <span class="pre">DataMiner.DataMiner.functional.PythonUDFType</span> <span class="pre">=</span> <span class="pre">&lt;PythonUDFType.NATIVE:</span> <span class="pre">0&gt;</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">null_handling:</span> <span class="pre">DataMiner.DataMiner.functional.FunctionNullHandling</span> <span class="pre">=</span> <span class="pre">&lt;FunctionNullHandling.DEFAULT:</span> <span class="pre">0&gt;</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">exception_handling:</span> <span class="pre">DataMiner.DataMiner.PythonExceptionHandling</span> <span class="pre">=</span> <span class="pre">&lt;PythonExceptionHandling.DEFAULT:</span> <span class="pre">0&gt;</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">side_effects:</span> <span class="pre">bool</span> <span class="pre">=</span> <span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.create_function" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a DataMiner function out of the passing in Python function so it can be used in queries</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.cursor">
<span class="sig-name descname"><span class="pre">cursor</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.cursor" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a duplicate of the current connection</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.decimal_type">
<span class="sig-name descname"><span class="pre">decimal_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">width</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">scale</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.decimal_type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a decimal type with &#8216;width&#8217; and &#8216;scale&#8217;</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.description">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">description</span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.description" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Get result set attributes, mainly column names</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.df">
<span class="sig-name descname"><span class="pre">df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.df" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as DataFrame following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.dtype">
<span class="sig-name descname"><span class="pre">dtype</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type_str</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.dtype" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a type object by parsing the &#8216;type_str&#8217; string</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.duplicate">
<span class="sig-name descname"><span class="pre">duplicate</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.duplicate" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a duplicate of the current connection</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.enum_type">
<span class="sig-name descname"><span class="pre">enum_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">list</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.enum_type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create an enum type of underlying &#8216;type&#8217;, consisting of the list of &#8216;values&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.execute">
<span class="sig-name descname"><span class="pre">execute</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">multiple_parameter_sets</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.execute" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute the given SQL query, optionally using prepared statements with parameters set</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.executemany">
<span class="sig-name descname"><span class="pre">executemany</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.executemany" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute the given prepared statement multiple times using the list of parameter sets in parameters</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.extract_statements">
<span class="sig-name descname"><span class="pre">extract_statements</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.extract_statements" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Parse the query string and extract the Statement object(s) produced</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetch_arrow_table">
<span class="sig-name descname"><span class="pre">fetch_arrow_table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetch_arrow_table" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as Arrow table following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetch_df">
<span class="sig-name descname"><span class="pre">fetch_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetch_df" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as DataFrame following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetch_df_chunk">
<span class="sig-name descname"><span class="pre">fetch_df_chunk</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">vectors_per_chunk</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetch_df_chunk" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a chunk of the result as DataFrame following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetch_record_batch">
<span class="sig-name descname"><span class="pre">fetch_record_batch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.RecordBatchReader.html#pyarrow.RecordBatchReader" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.RecordBatchReader</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetch_record_batch" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch an Arrow RecordBatchReader following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetchall">
<span class="sig-name descname"><span class="pre">fetchall</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetchall" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch all rows from a result following execute</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetchdf">
<span class="sig-name descname"><span class="pre">fetchdf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetchdf" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as DataFrame following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetchmany">
<span class="sig-name descname"><span class="pre">fetchmany</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetchmany" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch the next set of rows from a result following execute</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetchnumpy">
<span class="sig-name descname"><span class="pre">fetchnumpy</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetchnumpy" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as list of NumPy arrays following execute</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.fetchone">
<span class="sig-name descname"><span class="pre">fetchone</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">tuple</span><span class="p"><span class="pre">]</span></span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.fetchone" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a single row from a result following execute</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.filesystem_is_registered">
<span class="sig-name descname"><span class="pre">filesystem_is_registered</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">bool</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.filesystem_is_registered" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Check if a filesystem with the provided name is currently registered</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_arrow">
<span class="sig-name descname"><span class="pre">from_arrow</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">arrow_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_arrow" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from an Arrow object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_csv_auto">
<span class="sig-name descname"><span class="pre">from_csv_auto</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">path_or_buffer</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">header</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">delimiter</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">dtype</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">na_values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">skiprows</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quotechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">escapechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">encoding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parallel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">timestamp_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sample_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">all_varchar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">normalize_names</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">filename</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">null_padding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">names</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_csv_auto" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the CSV file in &#8216;name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_df">
<span class="sig-name descname"><span class="pre">from_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">df</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_df" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the DataFrame in df</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_parquet">
<span class="sig-name descname"><span class="pre">from_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_parquet" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>from_parquet(self: DataMiner.DataMiner.DataMinerPyConnection, file_glob: str, binary_as_string: bool = False, <a href="#id1"><span class="problematic" id="id2">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None) -&gt; DataMiner.DataMiner.DataMinerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_glob</p>
<ol class="arabic simple" start="2">
<li><p>from_parquet(self: DataMiner.DataMiner.DataMinerPyConnection, file_globs: list[str], binary_as_string: bool = False, <a href="#id3"><span class="problematic" id="id4">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None) -&gt; DataMiner.DataMiner.DataMinerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_globs</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_query">
<span class="sig-name descname"><span class="pre">from_query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">params</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_query" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Run a SQL query. If it is a SELECT statement, create a relation object from the given SQL query, otherwise run the query as-is.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_substrait">
<span class="sig-name descname"><span class="pre">from_substrait</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">proto</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bytes</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_substrait" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a query object from protobuf plan</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.from_substrait_json">
<span class="sig-name descname"><span class="pre">from_substrait_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">json</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.from_substrait_json" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a query object from a JSON protobuf plan</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.get_substrait">
<span class="sig-name descname"><span class="pre">get_substrait</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">enable_optimizer</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">True</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.get_substrait" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Serialize a query to protobuf</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.get_substrait_json">
<span class="sig-name descname"><span class="pre">get_substrait_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">enable_optimizer</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">True</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.get_substrait_json" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Serialize a query to protobuf on the JSON format</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.get_table_names">
<span class="sig-name descname"><span class="pre">get_table_names</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">set</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.get_table_names" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Extract the required table names from a query</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.install_extension">
<span class="sig-name descname"><span class="pre">install_extension</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">extension</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">force_install</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.install_extension" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Install an extension by name</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.interrupt">
<span class="sig-name descname"><span class="pre">interrupt</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.interrupt" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Interrupt pending operations</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.list_filesystems">
<span class="sig-name descname"><span class="pre">list_filesystems</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.list_filesystems" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>List registered filesystems, including builtin ones</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.list_type">
<span class="sig-name descname"><span class="pre">list_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.list_type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a list type object of &#8216;type&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.load_extension">
<span class="sig-name descname"><span class="pre">load_extension</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">extension</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.load_extension" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Load an installed extension</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.map_type">
<span class="sig-name descname"><span class="pre">map_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">key</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">value</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.map_type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a map type object from &#8216;key_type&#8217; and &#8216;value_type&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.pl">
<span class="sig-name descname"><span class="pre">pl</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner::PolarsDataFrame</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.pl" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as Polars DataFrame following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.query">
<span class="sig-name descname"><span class="pre">query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">params</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.query" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Run a SQL query. If it is a SELECT statement, create a relation object from the given SQL query, otherwise run the query as-is.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.read_csv">
<span class="sig-name descname"><span class="pre">read_csv</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">path_or_buffer</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">header</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">delimiter</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">dtype</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">na_values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">skiprows</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quotechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">escapechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">encoding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parallel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">timestamp_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sample_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">all_varchar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">normalize_names</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">filename</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">null_padding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">names</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.read_csv" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the CSV file in &#8216;name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.read_json">
<span class="sig-name descname"><span class="pre">read_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sample_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">maximum_depth</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">records</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.read_json" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the JSON file in &#8216;name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.read_parquet">
<span class="sig-name descname"><span class="pre">read_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.read_parquet" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>read_parquet(self: DataMiner.DataMiner.DataMinerPyConnection, file_glob: str, binary_as_string: bool = False, <a href="#id5"><span class="problematic" id="id6">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None) -&gt; DataMiner.DataMiner.DataMinerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_glob</p>
<ol class="arabic simple" start="2">
<li><p>read_parquet(self: DataMiner.DataMiner.DataMinerPyConnection, file_globs: list[str], binary_as_string: bool = False, <a href="#id7"><span class="problematic" id="id8">*</span></a>, file_row_number: bool = False, filename: bool = False, hive_partitioning: bool = False, union_by_name: bool = False, compression: object = None) -&gt; DataMiner.DataMiner.DataMinerPyRelation</p></li>
</ol>
<p>Create a relation object from the Parquet files in file_globs</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.register">
<span class="sig-name descname"><span class="pre">register</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">python_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.register" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Register the passed Python Object value for querying with a view</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.register_filesystem">
<span class="sig-name descname"><span class="pre">register_filesystem</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">filesystem</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">fsspec.AbstractFileSystem</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.register_filesystem" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Register a fsspec compliant filesystem</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.remove_function">
<span class="sig-name descname"><span class="pre">remove_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.remove_function" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Remove a previously created function</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.rollback">
<span class="sig-name descname"><span class="pre">rollback</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.rollback" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Roll back changes performed within a transaction</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.row_type">
<span class="sig-name descname"><span class="pre">row_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">fields</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.row_type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a struct type object from &#8216;fields&#8217;</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.rowcount">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">rowcount</span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.rowcount" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Get result set row count</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.sql">
<span class="sig-name descname"><span class="pre">sql</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">params</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.sql" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Run a SQL query. If it is a SELECT statement, create a relation object from the given SQL query, otherwise run the query as-is.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.sqltype">
<span class="sig-name descname"><span class="pre">sqltype</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type_str</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.sqltype" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a type object by parsing the &#8216;type_str&#8217; string</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.string_type">
<span class="sig-name descname"><span class="pre">string_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">collation</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.string_type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a string type with an optional collation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.struct_type">
<span class="sig-name descname"><span class="pre">struct_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">fields</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.struct_type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a struct type object from &#8216;fields&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.table">
<span class="sig-name descname"><span class="pre">table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.table" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object for the named table</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.table_function">
<span class="sig-name descname"><span class="pre">table_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.table_function" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the named table function with given parameters</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.tf">
<span class="sig-name descname"><span class="pre">tf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.tf" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as dict of TensorFlow Tensors following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.torch">
<span class="sig-name descname"><span class="pre">torch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.torch" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as dict of PyTorch Tensors following execute()</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.type">
<span class="sig-name descname"><span class="pre">type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type_str</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a type object by parsing the &#8216;type_str&#8217; string</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.union_type">
<span class="sig-name descname"><span class="pre">union_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">members</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.union_type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a union type object from &#8216;members&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.unregister">
<span class="sig-name descname"><span class="pre">unregister</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.unregister" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Unregister the view name</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.unregister_filesystem">
<span class="sig-name descname"><span class="pre">unregister_filesystem</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.unregister_filesystem" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Unregister a filesystem</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.values">
<span class="sig-name descname"><span class="pre">values</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.values" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object from the passed values</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyConnection.view">
<span class="sig-name descname"><span class="pre">view</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMiner.DataMinerPyConnection</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyConnection.view" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a relation object for the named view</p>
</dd>
</dl>

</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">DataMinerPyRelation</span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">pybind11_object</span></code></p>
<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.aggregate">
<span class="sig-name descname"><span class="pre">aggregate</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggr_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.aggregate" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the aggregate aggr_expr by the optional groups group_expr on the relation</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.alias">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">alias</span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.alias" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Get the name of the current alias</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.any_value">
<span class="sig-name descname"><span class="pre">any_value</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.any_value" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the first non-null value from a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.apply">
<span class="sig-name descname"><span class="pre">apply</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">function_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">function_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">function_parameter</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.apply" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Compute the function of a single column or a list of columns by the optional groups on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.arg_max">
<span class="sig-name descname"><span class="pre">arg_max</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">arg_column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">value_column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.arg_max" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Finds the row with the maximum value for a value column and returns the value of that row for an argument column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.arg_min">
<span class="sig-name descname"><span class="pre">arg_min</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">arg_column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">value_column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.arg_min" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Finds the row with the minimum value for a value column and returns the value of that row for an argument column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.arrow">
<span class="sig-name descname"><span class="pre">arrow</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.arrow" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as an Arrow Table</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.avg">
<span class="sig-name descname"><span class="pre">avg</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.avg" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the average on a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.bit_and">
<span class="sig-name descname"><span class="pre">bit_and</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.bit_and" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the bitwise AND of all bits present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.bit_or">
<span class="sig-name descname"><span class="pre">bit_or</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.bit_or" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the bitwise OR of all bits present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.bit_xor">
<span class="sig-name descname"><span class="pre">bit_xor</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.bit_xor" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the bitwise XOR of all bits present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.bitstring_agg">
<span class="sig-name descname"><span class="pre">bitstring_agg</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">min</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">max</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.bitstring_agg" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes a bitstring with bits set for each distinct value in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.bool_and">
<span class="sig-name descname"><span class="pre">bool_and</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.bool_and" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the logical AND of all values present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.bool_or">
<span class="sig-name descname"><span class="pre">bool_or</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.bool_or" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the logical OR of all values present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.close">
<span class="sig-name descname"><span class="pre">close</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.close" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Closes the result</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.columns">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">columns</span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.columns" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Return a list containing the names of the columns of the relation.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.count">
<span class="sig-name descname"><span class="pre">count</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.count" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the number of elements present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.create">
<span class="sig-name descname"><span class="pre">create</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.create" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Creates a new table named table_name with the contents of the relation object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.create_view">
<span class="sig-name descname"><span class="pre">create_view</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">replace</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">True</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.create_view" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Creates a view named view_name that refers to the relation object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.cume_dist">
<span class="sig-name descname"><span class="pre">cume_dist</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.cume_dist" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the cumulative distribution within the partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.dense_rank">
<span class="sig-name descname"><span class="pre">dense_rank</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.dense_rank" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the dense rank within the partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.describe">
<span class="sig-name descname"><span class="pre">describe</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.describe" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Gives basic statistics (e.g., min,max) and if null exists for each column of the relation.</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.description">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">description</span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.description" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Return the description of the result</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.df">
<span class="sig-name descname"><span class="pre">df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.df" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a pandas DataFrame</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.distinct">
<span class="sig-name descname"><span class="pre">distinct</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.distinct" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Retrieve distinct rows from this relation object</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.dtypes">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">dtypes</span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.dtypes" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Return a list containing the types of the columns of the relation.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.except_">
<span class="sig-name descname"><span class="pre">except_</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">other_rel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.except_" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create the set except of this relation object with another relation object in other_rel</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.execute">
<span class="sig-name descname"><span class="pre">execute</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.execute" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Transform the relation into a result set</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.explain">
<span class="sig-name descname"><span class="pre">explain</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.ExplainType" title="DataMiner.DataMiner.ExplainType"><span class="pre">DataMiner.DataMiner.ExplainType</span></a></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">'standard'</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">str</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.explain" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.favg">
<span class="sig-name descname"><span class="pre">favg</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.favg" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the average of all values present in a given column using a more accurate floating point summation (Kahan Sum)</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.fetch_arrow_reader">
<span class="sig-name descname"><span class="pre">fetch_arrow_reader</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.RecordBatchReader.html#pyarrow.RecordBatchReader" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.RecordBatchReader</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.fetch_arrow_reader" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and return an Arrow Record Batch Reader that yields all rows</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.fetch_arrow_table">
<span class="sig-name descname"><span class="pre">fetch_arrow_table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.fetch_arrow_table" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as an Arrow Table</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.fetch_df_chunk">
<span class="sig-name descname"><span class="pre">fetch_df_chunk</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">vectors_per_chunk</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.fetch_df_chunk" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch a chunk of the rows</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.fetchall">
<span class="sig-name descname"><span class="pre">fetchall</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.fetchall" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a list of tuples</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.fetchdf">
<span class="sig-name descname"><span class="pre">fetchdf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.fetchdf" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a pandas DataFrame</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.fetchmany">
<span class="sig-name descname"><span class="pre">fetchmany</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.fetchmany" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch the next set of rows as a list of tuples</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.fetchnumpy">
<span class="sig-name descname"><span class="pre">fetchnumpy</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.fetchnumpy" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a Python dict mapping each column to one numpy arrays</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.fetchone">
<span class="sig-name descname"><span class="pre">fetchone</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">tuple</span><span class="p"><span class="pre">]</span></span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.fetchone" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch a single row as a tuple</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.filter">
<span class="sig-name descname"><span class="pre">filter</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">filter_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.filter" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Filter the relation object by the filter in filter_expr</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.first">
<span class="sig-name descname"><span class="pre">first</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.first" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the first value of a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.first_value">
<span class="sig-name descname"><span class="pre">first_value</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.first_value" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the first value within the group or partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.fsum">
<span class="sig-name descname"><span class="pre">fsum</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.fsum" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the sum of all values present in a given column using a more accurate floating point summation (Kahan Sum)</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.geomean">
<span class="sig-name descname"><span class="pre">geomean</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.geomean" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the geometric mean over all values present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.histogram">
<span class="sig-name descname"><span class="pre">histogram</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.histogram" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the histogram over all values present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.insert">
<span class="sig-name descname"><span class="pre">insert</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">values</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.insert" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Inserts the given values into the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.insert_into">
<span class="sig-name descname"><span class="pre">insert_into</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.insert_into" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Inserts the relation object into an existing table named table_name</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.intersect">
<span class="sig-name descname"><span class="pre">intersect</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">other_rel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.intersect" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create the set intersection of this relation object with another relation object in other_rel</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.join">
<span class="sig-name descname"><span class="pre">join</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">other_rel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">condition</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">how</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">'inner'</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.join" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Join the relation object with another relation object in other_rel using the join condition expression in join_condition. Types supported are &#8216;inner&#8217; and &#8216;left&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.lag">
<span class="sig-name descname"><span class="pre">lag</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">offset</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">default_value</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">'NULL'</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">ignore_nulls</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.lag" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the lag within the partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.last">
<span class="sig-name descname"><span class="pre">last</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.last" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the last value of a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.last_value">
<span class="sig-name descname"><span class="pre">last_value</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.last_value" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the last value within the group or partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.lead">
<span class="sig-name descname"><span class="pre">lead</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">offset</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">default_value</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">'NULL'</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">ignore_nulls</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.lead" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the lead within the partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.limit">
<span class="sig-name descname"><span class="pre">limit</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">n</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">offset</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">0</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.limit" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Only retrieve the first n rows from this relation object, starting at offset</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.list">
<span class="sig-name descname"><span class="pre">list</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.list" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Returns a list containing all values present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.map">
<span class="sig-name descname"><span class="pre">map</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">map_function</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Callable</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">schema</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">object</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.map" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Calls the passed function on the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.max">
<span class="sig-name descname"><span class="pre">max</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.max" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the maximum value present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.mean">
<span class="sig-name descname"><span class="pre">mean</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.mean" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the average on a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.median">
<span class="sig-name descname"><span class="pre">median</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.median" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the median over all values present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.min">
<span class="sig-name descname"><span class="pre">min</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.min" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the minimum value present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.mode">
<span class="sig-name descname"><span class="pre">mode</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.mode" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the mode over all values present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.n_tile">
<span class="sig-name descname"><span class="pre">n_tile</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">num_buckets</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.n_tile" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Divides the partition as equally as possible into num_buckets</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.nth_value">
<span class="sig-name descname"><span class="pre">nth_value</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">offset</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">ignore_nulls</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.nth_value" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the nth value within the partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.order">
<span class="sig-name descname"><span class="pre">order</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">order_expr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.order" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Reorder the relation object by order_expr</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.percent_rank">
<span class="sig-name descname"><span class="pre">percent_rank</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.percent_rank" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the relative rank within the partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.pl">
<span class="sig-name descname"><span class="pre">pl</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">DataMiner::PolarsDataFrame</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.pl" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a Polars DataFrame</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.product">
<span class="sig-name descname"><span class="pre">product</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.product" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Returns the product of all values present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.project">
<span class="sig-name descname"><span class="pre">project</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.project" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Project the relation object by the projection in project_expr</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.quantile">
<span class="sig-name descname"><span class="pre">quantile</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">q</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">0.5</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.quantile" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the exact quantile value for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.quantile_cont">
<span class="sig-name descname"><span class="pre">quantile_cont</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">q</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">0.5</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.quantile_cont" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the interpolated quantile value for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.quantile_disc">
<span class="sig-name descname"><span class="pre">quantile_disc</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">q</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">0.5</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.quantile_disc" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the exact quantile value for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.query">
<span class="sig-name descname"><span class="pre">query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">virtual_table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sql_query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.query" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Run the given SQL query in sql_query on the view named virtual_table_name that refers to the relation object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.rank">
<span class="sig-name descname"><span class="pre">rank</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.rank" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the rank within the partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.rank_dense">
<span class="sig-name descname"><span class="pre">rank_dense</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.rank_dense" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the dense rank within the partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.record_batch">
<span class="sig-name descname"><span class="pre">record_batch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.RecordBatchReader.html#pyarrow.RecordBatchReader" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.RecordBatchReader</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.record_batch" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and return an Arrow Record Batch Reader that yields all rows</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.row_number">
<span class="sig-name descname"><span class="pre">row_number</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.row_number" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the row number within the partition</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.select">
<span class="sig-name descname"><span class="pre">select</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.select" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Project the relation object by the projection in project_expr</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.select_dtypes">
<span class="sig-name descname"><span class="pre">select_dtypes</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">types</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.select_dtypes" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Select columns from the relation, by filtering based on type(s)</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.select_types">
<span class="sig-name descname"><span class="pre">select_types</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">types</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.select_types" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Select columns from the relation, by filtering based on type(s)</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.set_alias">
<span class="sig-name descname"><span class="pre">set_alias</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.set_alias" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Rename the relation object to new alias</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.shape">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">shape</span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.shape" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Tuple of # of rows, # of columns in relation.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.show">
<span class="sig-name descname"><span class="pre">show</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">max_width</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">int</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">max_rows</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">int</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">max_col_width</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">int</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">null_value</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Optional</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">render_mode</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.show" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Display a summary of the data</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.sort">
<span class="sig-name descname"><span class="pre">sort</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.sort" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Reorder the relation object by the provided expressions</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.sql_query">
<span class="sig-name descname"><span class="pre">sql_query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">str</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.sql_query" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Get the SQL query that is equivalent to the relation</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.std">
<span class="sig-name descname"><span class="pre">std</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.std" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the sample standard deviation for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.stddev">
<span class="sig-name descname"><span class="pre">stddev</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.stddev" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the sample standard deviation for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.stddev_pop">
<span class="sig-name descname"><span class="pre">stddev_pop</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.stddev_pop" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the population standard deviation for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.stddev_samp">
<span class="sig-name descname"><span class="pre">stddev_samp</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.stddev_samp" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the sample standard deviation for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.string_agg">
<span class="sig-name descname"><span class="pre">string_agg</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">','</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.string_agg" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Concatenates the values present in a given column with a separator</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.sum">
<span class="sig-name descname"><span class="pre">sum</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.sum" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the sum of all values present in a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.tf">
<span class="sig-name descname"><span class="pre">tf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.tf" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as dict of TensorFlow Tensors</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.to_arrow_table">
<span class="sig-name descname"><span class="pre">to_arrow_table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">batch_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">int</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">1000000</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://arrow.apache.org/docs/9.0/python/generated/pyarrow.Table.html#pyarrow.Table" title="(in Apache Arrow v9.0.0)"><span class="pre">pyarrow.lib.Table</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.to_arrow_table" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as an Arrow Table</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.to_csv">
<span class="sig-name descname"><span class="pre">to_csv</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">file_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">na_rep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">header</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quotechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">escapechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">timestamp_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quoting</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">encoding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">overwrite</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">per_thread_output</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">use_tmp_file</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">partition_by</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.to_csv" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Write the relation object to a CSV file in &#8216;file_name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.to_df">
<span class="sig-name descname"><span class="pre">to_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_as_object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference external" href="https://pandas.pydata.org/pandas-docs/version/1.5.1/reference/api/pandas.DataFrame.html#pandas.DataFrame" title="(in pandas v1.5.1)"><span class="pre">pandas.DataFrame</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.to_df" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Execute and fetch all rows as a pandas DataFrame</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.to_parquet">
<span class="sig-name descname"><span class="pre">to_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">file_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">field_ids</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">row_group_size_bytes</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">row_group_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.to_parquet" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Write the relation object to a Parquet file in &#8216;file_name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.to_table">
<span class="sig-name descname"><span class="pre">to_table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">table_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.to_table" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Creates a new table named table_name with the contents of the relation object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.to_view">
<span class="sig-name descname"><span class="pre">to_view</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">view_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">replace</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">True</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.to_view" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Creates a view named view_name that refers to the relation object</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.torch">
<span class="sig-name descname"><span class="pre">torch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">dict</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.torch" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Fetch a result as dict of PyTorch Tensors</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.type">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">type</span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.type" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Get the type of the relation.</p>
</dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.types">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">types</span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.types" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Return a list containing the types of the columns of the relation.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.union">
<span class="sig-name descname"><span class="pre">union</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">union_rel</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.union" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create the set union of this relation object with another relation object in other_rel</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.unique">
<span class="sig-name descname"><span class="pre">unique</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">unique_aggr</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.unique" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Number of distinct values in a column.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.value_counts">
<span class="sig-name descname"><span class="pre">value_counts</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.value_counts" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the number of elements present in a given column, also projecting the original column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.var">
<span class="sig-name descname"><span class="pre">var</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.var" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the sample variance for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.var_pop">
<span class="sig-name descname"><span class="pre">var_pop</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.var_pop" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the population variance for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.var_samp">
<span class="sig-name descname"><span class="pre">var_samp</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.var_samp" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the sample variance for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.variance">
<span class="sig-name descname"><span class="pre">variance</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">column</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">groups</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">window_spec</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">projected_columns</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">''</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.variance" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Computes the sample variance for a given column</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.write_csv">
<span class="sig-name descname"><span class="pre">write_csv</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">file_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">na_rep</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">header</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quotechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">escapechar</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">date_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">timestamp_format</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">quoting</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">encoding</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">overwrite</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">per_thread_output</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">use_tmp_file</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">partition_by</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.write_csv" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Write the relation object to a CSV file in &#8216;file_name&#8217;</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.DataMinerPyRelation.write_parquet">
<span class="sig-name descname"><span class="pre">write_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.DataMinerPyRelation" title="DataMiner.DataMiner.DataMinerPyRelation"><span class="pre">DataMiner.DataMiner.DataMinerPyRelation</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">file_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">compression</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">field_ids</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">row_group_size_bytes</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">row_group_size</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">object</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.DataMinerPyRelation.write_parquet" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Write the relation object to a Parquet file in &#8216;file_name&#8217;</p>
</dd>
</dl>

</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.Error">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">Error</span></span><a class="headerlink" href="#DataMiner.Error" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">Exception</span></code></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.ExplainType">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ExplainType</span></span><a class="headerlink" href="#DataMiner.ExplainType" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">pybind11_object</span></code></p>
<p>Members:</p>
<p>STANDARD</p>
<p>ANALYZE</p>
<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.ExplainType.ANALYZE">
<span class="sig-name descname"><span class="pre">ANALYZE</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;ExplainType.ANALYZE:</span> <span class="pre">1&gt;</span></em><a class="headerlink" href="#DataMiner.ExplainType.ANALYZE" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.ExplainType.STANDARD">
<span class="sig-name descname"><span class="pre">STANDARD</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;ExplainType.STANDARD:</span> <span class="pre">0&gt;</span></em><a class="headerlink" href="#DataMiner.ExplainType.STANDARD" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.ExplainType.name">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">name</span></span><a class="headerlink" href="#DataMiner.ExplainType.name" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.ExplainType.value">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">value</span></span><a class="headerlink" href="#DataMiner.ExplainType.value" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.Expression">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">Expression</span></span><a class="headerlink" href="#DataMiner.Expression" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">pybind11_object</span></code></p>
<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.alias">
<span class="sig-name descname"><span class="pre">alias</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">arg0</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.alias" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a copy of this expression with the given alias.</p>
<dl class="simple">
<dt>Parameters:</dt>
<dd>
<p>name: The alias to use for the expression, this will affect how it can be referenced.</p>
</dd>
<dt>Returns:</dt>
<dd>
<p>Expression: self with an alias.</p>
</dd>
</dl>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.asc">
<span class="sig-name descname"><span class="pre">asc</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.asc" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Set the order by modifier to ASCENDING.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.cast">
<span class="sig-name descname"><span class="pre">cast</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMiner.DataMiner.typing.DataMinerPyType</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.cast" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a CastExpression to type from self</p>
<dl class="simple">
<dt>Parameters:</dt>
<dd>
<p>type: The type to cast to</p>
</dd>
<dt>Returns:</dt>
<dd>
<p>CastExpression: self::type</p>
</dd>
</dl>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.desc">
<span class="sig-name descname"><span class="pre">desc</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.desc" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Set the order by modifier to DESCENDING.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.isin">
<span class="sig-name descname"><span class="pre">isin</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.isin" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Return a IN expression comparing self to the input arguments.</p>
<dl class="simple">
<dt>Returns:</dt>
<dd>
<p>DataMinerPyExpression: The compare IN expression</p>
</dd>
</dl>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.isnotin">
<span class="sig-name descname"><span class="pre">isnotin</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.isnotin" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Return a NOT IN expression comparing self to the input arguments.</p>
<dl class="simple">
<dt>Returns:</dt>
<dd>
<p>DataMinerPyExpression: The compare NOT IN expression</p>
</dd>
</dl>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.isnotnull">
<span class="sig-name descname"><span class="pre">isnotnull</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.isnotnull" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a binary IS NOT NULL expression from self</p>
<dl class="simple">
<dt>Returns:</dt>
<dd>
<p>DataMinerPyExpression: self IS NOT NULL</p>
</dd>
</dl>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.isnull">
<span class="sig-name descname"><span class="pre">isnull</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.isnull" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a binary IS NULL expression from self</p>
<dl class="simple">
<dt>Returns:</dt>
<dd>
<p>DataMinerPyExpression: self IS NULL</p>
</dd>
</dl>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.nulls_first">
<span class="sig-name descname"><span class="pre">nulls_first</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.nulls_first" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Set the NULL order by modifier to NULLS FIRST.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.nulls_last">
<span class="sig-name descname"><span class="pre">nulls_last</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.nulls_last" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Set the NULL order by modifier to NULLS LAST.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.otherwise">
<span class="sig-name descname"><span class="pre">otherwise</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">value</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.otherwise" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Add an ELSE &lt;value&gt; clause to the CaseExpression.</p>
<dl class="simple">
<dt>Parameters:</dt>
<dd>
<p>value: The value to use if none of the WHEN conditions are met.</p>
</dd>
<dt>Returns:</dt>
<dd>
<p>CaseExpression: self with an ELSE clause.</p>
</dd>
</dl>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.show">
<span class="sig-name descname"><span class="pre">show</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">None</span></span></span><a class="headerlink" href="#DataMiner.Expression.show" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Print the stringified version of the expression.</p>
</dd>
</dl>

<dl class="py method">
<dt class="sig sig-object py" id="DataMiner.Expression.when">
<span class="sig-name descname"><span class="pre">when</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">self</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">condition</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em>, <em class="sig-param"><span class="n"><span class="pre">value</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.Expression.when" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Add an additional WHEN &lt;condition&gt; THEN &lt;value&gt; clause to the CaseExpression.</p>
<dl class="simple">
<dt>Parameters:</dt>
<dd>
<p>condition: The condition that must be met.
value: The value to use if the condition is met.</p>
</dd>
<dt>Returns:</dt>
<dd>
<p>CaseExpression: self with an additional WHEN clause.</p>
</dd>
</dl>
</dd>
</dl>

</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.FatalException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">FatalException</span></span><a class="headerlink" href="#DataMiner.FatalException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">DatabaseError</span></code></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.FloatValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">FloatValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.FloatValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.FunctionExpression">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">FunctionExpression</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">function_name</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.Expression" title="DataMiner.DataMiner.Expression"><span class="pre">DataMiner.DataMiner.Expression</span></a></span></span><a class="headerlink" href="#DataMiner.FunctionExpression" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.HTTPException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">HTTPException</span></span><a class="headerlink" href="#DataMiner.HTTPException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.IOException" title="DataMiner.DataMiner.IOException"><code class="xref py py-class docutils literal notranslate"><span class="pre">IOException</span></code></a></p>
<p>Thrown when an error occurs in the httpfs extension, or whilst downloading an extension.</p>
<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.HTTPException.body">
<span class="sig-name descname"><span class="pre">body</span></span><em class="property"><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="pre">str</span></em><a class="headerlink" href="#DataMiner.HTTPException.body" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.HTTPException.headers">
<span class="sig-name descname"><span class="pre">headers</span></span><em class="property"><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="pre">Dict</span><span class="p"><span class="pre">[</span></span><span class="pre">str</span><span class="p"><span class="pre">,</span></span><span class="w"> </span><span class="pre">str</span><span class="p"><span class="pre">]</span></span></em><a class="headerlink" href="#DataMiner.HTTPException.headers" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.HTTPException.reason">
<span class="sig-name descname"><span class="pre">reason</span></span><em class="property"><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="pre">str</span></em><a class="headerlink" href="#DataMiner.HTTPException.reason" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.HTTPException.status_code">
<span class="sig-name descname"><span class="pre">status_code</span></span><em class="property"><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="pre">int</span></em><a class="headerlink" href="#DataMiner.HTTPException.status_code" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.HugeIntegerValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">HugeIntegerValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.HugeIntegerValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.IOException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">IOException</span></span><a class="headerlink" href="#DataMiner.IOException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.OperationalError" title="DataMiner.DataMiner.OperationalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">OperationalError</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.IntegerValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">IntegerValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.IntegerValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.IntegrityError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">IntegrityError</span></span><a class="headerlink" href="#DataMiner.IntegrityError" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">DatabaseError</span></code></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.InternalError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">InternalError</span></span><a class="headerlink" href="#DataMiner.InternalError" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">DatabaseError</span></code></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.InternalException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">InternalException</span></span><a class="headerlink" href="#DataMiner.InternalException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.InternalError" title="DataMiner.DataMiner.InternalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">InternalError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.InterruptException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">InterruptException</span></span><a class="headerlink" href="#DataMiner.InterruptException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">DatabaseError</span></code></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.IntervalValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">IntervalValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.IntervalValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.InvalidInputException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">InvalidInputException</span></span><a class="headerlink" href="#DataMiner.InvalidInputException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.ProgrammingError" title="DataMiner.DataMiner.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.InvalidTypeException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">InvalidTypeException</span></span><a class="headerlink" href="#DataMiner.InvalidTypeException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.ProgrammingError" title="DataMiner.DataMiner.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.LongValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">LongValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.LongValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.NotImplementedException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">NotImplementedException</span></span><a class="headerlink" href="#DataMiner.NotImplementedException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.NotSupportedError" title="DataMiner.DataMiner.NotSupportedError"><code class="xref py py-class docutils literal notranslate"><span class="pre">NotSupportedError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.NotSupportedError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">NotSupportedError</span></span><a class="headerlink" href="#DataMiner.NotSupportedError" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">DatabaseError</span></code></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.NullValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">NullValue</span></span><a class="headerlink" href="#DataMiner.NullValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.OperationalError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">OperationalError</span></span><a class="headerlink" href="#DataMiner.OperationalError" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">DatabaseError</span></code></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.OutOfMemoryException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">OutOfMemoryException</span></span><a class="headerlink" href="#DataMiner.OutOfMemoryException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.OperationalError" title="DataMiner.DataMiner.OperationalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">OperationalError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.OutOfRangeException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">OutOfRangeException</span></span><a class="headerlink" href="#DataMiner.OutOfRangeException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.DataError" title="DataMiner.DataMiner.DataError"><code class="xref py py-class docutils literal notranslate"><span class="pre">DataError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.ParserException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ParserException</span></span><a class="headerlink" href="#DataMiner.ParserException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.ProgrammingError" title="DataMiner.DataMiner.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.PermissionException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">PermissionException</span></span><a class="headerlink" href="#DataMiner.PermissionException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">DatabaseError</span></code></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.ProgrammingError">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ProgrammingError</span></span><a class="headerlink" href="#DataMiner.ProgrammingError" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">DatabaseError</span></code></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.PythonExceptionHandling">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">PythonExceptionHandling</span></span><a class="headerlink" href="#DataMiner.PythonExceptionHandling" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">pybind11_object</span></code></p>
<p>Members:</p>
<p>DEFAULT</p>
<p>RETURN_NULL</p>
<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.PythonExceptionHandling.DEFAULT">
<span class="sig-name descname"><span class="pre">DEFAULT</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;PythonExceptionHandling.DEFAULT:</span> <span class="pre">0&gt;</span></em><a class="headerlink" href="#DataMiner.PythonExceptionHandling.DEFAULT" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.PythonExceptionHandling.RETURN_NULL">
<span class="sig-name descname"><span class="pre">RETURN_NULL</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;PythonExceptionHandling.RETURN_NULL:</span> <span class="pre">1&gt;</span></em><a class="headerlink" href="#DataMiner.PythonExceptionHandling.RETURN_NULL" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.PythonExceptionHandling.name">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">name</span></span><a class="headerlink" href="#DataMiner.PythonExceptionHandling.name" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.PythonExceptionHandling.value">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">value</span></span><a class="headerlink" href="#DataMiner.PythonExceptionHandling.value" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.SequenceException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">SequenceException</span></span><a class="headerlink" href="#DataMiner.SequenceException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">DatabaseError</span></code></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.SerializationException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">SerializationException</span></span><a class="headerlink" href="#DataMiner.SerializationException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.OperationalError" title="DataMiner.DataMiner.OperationalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">OperationalError</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.ShortValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">ShortValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.ShortValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.StarExpression">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">StarExpression</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.StarExpression" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>StarExpression(<a href="#id9"><span class="problematic" id="id10">*</span></a>, exclude: list = []) -&gt; DataMiner.DataMiner.Expression</p></li>
<li><p>StarExpression() -&gt; DataMiner.DataMiner.Expression</p></li>
</ol>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.StringValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">StringValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.StringValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.SyntaxException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">SyntaxException</span></span><a class="headerlink" href="#DataMiner.SyntaxException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.ProgrammingError" title="DataMiner.DataMiner.ProgrammingError"><code class="xref py py-class docutils literal notranslate"><span class="pre">ProgrammingError</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.TimeTimeZoneValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">TimeTimeZoneValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.TimeTimeZoneValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.TimeValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">TimeValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.TimeValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.TimestampMilisecondValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">TimestampMilisecondValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.TimestampMilisecondValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.TimestampNanosecondValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">TimestampNanosecondValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.TimestampNanosecondValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.TimestampSecondValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">TimestampSecondValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.TimestampSecondValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.TimestampTimeZoneValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">TimestampTimeZoneValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.TimestampTimeZoneValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.TimestampValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">TimestampValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.TimestampValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.TransactionException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">TransactionException</span></span><a class="headerlink" href="#DataMiner.TransactionException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.OperationalError" title="DataMiner.DataMiner.OperationalError"><code class="xref py py-class docutils literal notranslate"><span class="pre">OperationalError</span></code></a></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.TypeMismatchException">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">TypeMismatchException</span></span><a class="headerlink" href="#DataMiner.TypeMismatchException" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.DataError" title="DataMiner.DataMiner.DataError"><code class="xref py py-class docutils literal notranslate"><span class="pre">DataError</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.UUIDValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">UUIDValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.UUIDValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.UnsignedBinaryValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">UnsignedBinaryValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.UnsignedBinaryValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.UnsignedIntegerValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">UnsignedIntegerValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.UnsignedIntegerValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.UnsignedLongValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">UnsignedLongValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.UnsignedLongValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.UnsignedShortValue">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">UnsignedShortValue</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.UnsignedShortValue" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <a class="reference internal" href="#DataMiner.Value" title="DataMiner.value.constant.Value"><code class="xref py py-class docutils literal notranslate"><span class="pre">Value</span></code></a></p>
</dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.Value">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">Value</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">object</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">Any</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">DataMinerPyType</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.Value" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">object</span></code></p>
</dd>
</dl>

<dl class="py exception">
<dt class="sig sig-object py" id="DataMiner.Warning">
<em class="property"><span class="pre">exception</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">Warning</span></span><a class="headerlink" href="#DataMiner.Warning" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Bases: <code class="xref py py-class docutils literal notranslate"><span class="pre">Exception</span></code></p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.aggregate">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">aggregate</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">aggr_expr</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">group_expr</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.aggregate" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.alias">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">alias</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">alias</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.alias" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.append">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">append</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">table_name</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.append" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.array_type">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">array_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">type</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">size</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.array_type" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.arrow">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">arrow</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.arrow" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>arrow(rows_per_batch: int = 1000000, <a href="#id11"><span class="problematic" id="id12">*</span></a>, connection: DataMiner.DataMinerPyConnection = None) -&gt; pyarrow.lib.Table</p></li>
</ol>
<p>Fetch a result as Arrow table following execute()</p>
<ol class="arabic simple" start="2">
<li><p>arrow(arrow_object: object, <a href="#id13"><span class="problematic" id="id14">*</span></a>, connection: DataMiner.DataMinerPyConnection = None) -&gt; DataMiner.DataMiner.DataMinerPyRelation</p></li>
</ol>
<p>Create a relation object from an Arrow object</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.begin">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">begin</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.begin" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.checkpoint">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">checkpoint</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.checkpoint" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.close">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">close</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.close" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.commit">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">commit</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.commit" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.connect">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">connect</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">database</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">':memory:'</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">read_only</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">bool</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">config</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">dict</span></span><span class="w"> </span><span class="o"><span class="pre">=</span></span><span class="w"> </span><span class="default_value"><span class="pre">None</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><a class="reference internal" href="#DataMiner.DataMinerPyConnection" title="DataMiner.DataMiner.DataMinerPyConnection"><span class="pre">DataMiner.DataMinerPyConnection</span></a></span></span><a class="headerlink" href="#DataMiner.connect" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Create a DataMiner database instance. Can take a database file name to read/write persistent data and a read_only flag if no changes are desired</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.create_function">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">create_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">function</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">return_type</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.create_function" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.cursor">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">cursor</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.cursor" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.decimal_type">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">decimal_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">width</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">scale</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.decimal_type" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.description">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">description</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.description" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.df">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.df" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Overloaded function.</p>
<ol class="arabic simple">
<li><p>df(<a href="#id15"><span class="problematic" id="id16">*</span></a>, date_as_object: bool = False, connection: DataMiner.DataMinerPyConnection = None) -&gt; pandas.DataFrame</p></li>
</ol>
<p>Fetch a result as DataFrame following execute()</p>
<ol class="arabic simple" start="2">
<li><p>df(df: pandas.DataFrame, <a href="#id17"><span class="problematic" id="id18">*</span></a>, connection: DataMiner.DataMinerPyConnection = None) -&gt; DataMiner.DataMiner.DataMinerPyRelation</p></li>
</ol>
<p>Create a relation object from the DataFrame df</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.distinct">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">distinct</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.distinct" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.dtype">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">dtype</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">type_str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.dtype" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.duplicate">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">duplicate</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.duplicate" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.enum_type">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">enum_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">type</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">values</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.enum_type" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.execute">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">execute</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">multiple_parameter_sets</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.execute" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.executemany">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">executemany</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.executemany" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.extract_statements">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">extract_statements</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.extract_statements" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.fetch_arrow_table">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">fetch_arrow_table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">1000000</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.fetch_arrow_table" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.fetch_df">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">fetch_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.fetch_df" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.fetch_df_chunk">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">fetch_df_chunk</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">vectors_per_chunk</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">1</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.fetch_df_chunk" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.fetch_record_batch">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">fetch_record_batch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">1000000</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.fetch_record_batch" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.fetchall">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">fetchall</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.fetchall" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.fetchdf">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">fetchdf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.fetchdf" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.fetchmany">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">fetchmany</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">size</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">1</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.fetchmany" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.fetchnumpy">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">fetchnumpy</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.fetchnumpy" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.fetchone">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">fetchone</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.fetchone" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.filesystem_is_registered">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">filesystem_is_registered</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.filesystem_is_registered" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.filter">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">filter</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">filter_expr</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.filter" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.from_arrow">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">from_arrow</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">arrow_object</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.from_arrow" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.from_csv_auto">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">from_csv_auto</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">path_or_buffer</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.from_csv_auto" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.from_df">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">from_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.from_df" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.from_parquet">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">from_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">file_glob</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">binary_as_string</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.from_parquet" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.from_query">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">from_query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.from_query" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.from_substrait">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">from_substrait</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">proto</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.from_substrait" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.from_substrait_json">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">from_substrait_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">json</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.from_substrait_json" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.get_substrait">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">get_substrait</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.get_substrait" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.get_substrait_json">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">get_substrait_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.get_substrait_json" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.get_table_names">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">get_table_names</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.get_table_names" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.install_extension">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">install_extension</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">extension</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.install_extension" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.interrupt">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">interrupt</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.interrupt" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.limit">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">limit</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">n</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">offset</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">0</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.limit" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.list_filesystems">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">list_filesystems</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.list_filesystems" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.list_type">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">list_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">type</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.list_type" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.load_extension">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">load_extension</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">extension</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.load_extension" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.map_type">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">map_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">key</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">value</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.map_type" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.order">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">order</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">order_expr</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.order" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.pl">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">pl</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">rows_per_batch</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">1000000</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.pl" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.project">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">project</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">project_expr</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.project" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.query">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">query</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.query" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.query_df">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">query_df</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">virtual_table_name</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">sql_query</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.query_df" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.read_csv">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">read_csv</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">path_or_buffer</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.read_csv" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.read_json">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">read_json</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.read_json" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.read_parquet">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">read_parquet</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">file_glob</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">binary_as_string</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">False</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.read_parquet" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.register">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">register</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">view_name</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">python_object</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.register" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.register_filesystem">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">register_filesystem</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">filesystem</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.register_filesystem" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.remove_function">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">remove_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.remove_function" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.rollback">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">rollback</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.rollback" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.row_type">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">row_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">fields</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.row_type" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.rowcount">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">rowcount</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.rowcount" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.sql">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">sql</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.sql" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.sqltype">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">sqltype</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">type_str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.sqltype" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.string_type">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">string_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">collation</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">''</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.string_type" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.struct_type">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">struct_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">fields</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.struct_type" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.table">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">table</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">table_name</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.table" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.table_function">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">table_function</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span></em>, <em class="sig-param"><span class="n"><span class="pre">parameters</span></span><span class="o"><span class="pre">=</span></span><span class="default_value"><span class="pre">None</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.table_function" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.tf">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">tf</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.tf" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py class">
<dt class="sig sig-object py" id="DataMiner.token_type">
<em class="property"><span class="pre">class</span><span class="w"> </span></em><span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">token_type</span></span><a class="headerlink" href="#DataMiner.token_type" title="Link to this definition">&#182;</a>
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
<dt class="sig sig-object py" id="DataMiner.token_type.comment">
<span class="sig-name descname"><span class="pre">comment</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.comment:</span> <span class="pre">5&gt;</span></em><a class="headerlink" href="#DataMiner.token_type.comment" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.token_type.identifier">
<span class="sig-name descname"><span class="pre">identifier</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.identifier:</span> <span class="pre">0&gt;</span></em><a class="headerlink" href="#DataMiner.token_type.identifier" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.token_type.keyword">
<span class="sig-name descname"><span class="pre">keyword</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.keyword:</span> <span class="pre">4&gt;</span></em><a class="headerlink" href="#DataMiner.token_type.keyword" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.token_type.name">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">name</span></span><a class="headerlink" href="#DataMiner.token_type.name" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.token_type.numeric_const">
<span class="sig-name descname"><span class="pre">numeric_const</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.numeric_const:</span> <span class="pre">1&gt;</span></em><a class="headerlink" href="#DataMiner.token_type.numeric_const" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.token_type.operator">
<span class="sig-name descname"><span class="pre">operator</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.operator:</span> <span class="pre">3&gt;</span></em><a class="headerlink" href="#DataMiner.token_type.operator" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py attribute">
<dt class="sig sig-object py" id="DataMiner.token_type.string_const">
<span class="sig-name descname"><span class="pre">string_const</span></span><em class="property"><span class="w"> </span><span class="p"><span class="pre">=</span></span><span class="w"> </span><span class="pre">&lt;token_type.string_const:</span> <span class="pre">2&gt;</span></em><a class="headerlink" href="#DataMiner.token_type.string_const" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py property">
<dt class="sig sig-object py" id="DataMiner.token_type.value">
<em class="property"><span class="pre">property</span><span class="w"> </span></em><span class="sig-name descname"><span class="pre">value</span></span><a class="headerlink" href="#DataMiner.token_type.value" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.tokenize">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">tokenize</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">query</span></span><span class="p"><span class="pre">:</span></span><span class="w"> </span><span class="n"><span class="pre">str</span></span></em><span class="sig-paren">)</span> <span class="sig-return"><span class="sig-return-icon">&#8594;</span> <span class="sig-return-typehint"><span class="pre">list</span></span></span><a class="headerlink" href="#DataMiner.tokenize" title="Link to this definition">&#182;</a>
</dt>
<dd>
<p>Tokenizes a SQL string, returning a list of (position, type) tuples that can be used for e.g. syntax highlighting</p>
</dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.torch">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">torch</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.torch" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.type">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">type_str</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.type" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.union_type">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">union_type</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">members</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.union_type" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.unregister">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">unregister</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">view_name</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.unregister" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.unregister_filesystem">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">unregister_filesystem</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">name</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.unregister_filesystem" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.values">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">values</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">values</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.values" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.view">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">view</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">view_name</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.view" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>

<dl class="py function">
<dt class="sig sig-object py" id="DataMiner.write_csv">
<span class="sig-prename descclassname"><span class="pre">DataMiner.</span></span><span class="sig-name descname"><span class="pre">write_csv</span></span><span class="sig-paren">(</span><em class="sig-param"><span class="n"><span class="pre">df</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">*</span></span><span class="n"><span class="pre">args</span></span></em>, <em class="sig-param"><span class="o"><span class="pre">**</span></span><span class="n"><span class="pre">kwargs</span></span></em><span class="sig-paren">)</span><a class="headerlink" href="#DataMiner.write_csv" title="Link to this definition">&#182;</a>
</dt>
<dd></dd>
</dl>



<div class="clearer"></div>
</div>
</div>
</div>