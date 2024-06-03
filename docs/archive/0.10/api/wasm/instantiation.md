---
layout: docu
title: Instantiation
---

## Instantiation

dataminer-Wasm has multiple ways to be instantiated depending on the use case.

### `cdn(jsdelivr)`

```ts
import * as DataMiner from '@dataminer/dataminer-wasm';

const JSDELIVR_BUNDLES = dataminer.getJsDelivrBundles();

// Select a bundle based on browser checks
const bundle = await dataminer.selectBundle(JSDELIVR_BUNDLES);

const worker_url = URL.createObjectURL(
  new Blob([`importScripts("${bundle.mainWorker!}");`], {type: 'text/javascript'})
);

// Instantiate the asynchronus version of dataminer-Wasm
const worker = new Worker(worker_url);
const logger = new dataminer.ConsoleLogger();
const db = new dataminer.Asyncdataminer(logger, worker);
await db.instantiate(bundle.mainModule, bundle.pthreadWorker);
URL.revokeObjectURL(worker_url);
```

### `webpack`

```ts
import * as DataMiner from '@dataminer/dataminer-wasm';
import dataminer_wasm from '@dataminer/dataminer-wasm/dist/dataminer-mvp.wasm';
import dataminer_wasm_next from '@dataminer/dataminer-wasm/dist/dataminer-eh.wasm';
const MANUAL_BUNDLES: dataminer.dataminerBundles = {
    mvp: {
        mainModule: dataminer_wasm,
        mainWorker: new URL('@dataminer/dataminer-wasm/dist/dataminer-browser-mvp.worker.js', import.meta.url).toString(),
    },
    eh: {
        mainModule: dataminer_wasm_next,
        mainWorker: new URL('@dataminer/dataminer-wasm/dist/dataminer-browser-eh.worker.js', import.meta.url).toString(),
    },
};
// Select a bundle based on browser checks
const bundle = await dataminer.selectBundle(MANUAL_BUNDLES);
// Instantiate the asynchronus version of dataminer-Wasm
const worker = new Worker(bundle.mainWorker!);
const logger = new dataminer.ConsoleLogger();
const db = new dataminer.Asyncdataminer(logger, worker);
await db.instantiate(bundle.mainModule, bundle.pthreadWorker);
```

### `vite`

```ts
import * as DataMiner from '@dataminer/dataminer-wasm';
import dataminer_wasm from '@dataminer/dataminer-wasm/dist/dataminer-mvp.wasm?url';
import mvp_worker from '@dataminer/dataminer-wasm/dist/dataminer-browser-mvp.worker.js?url';
import dataminer_wasm_eh from '@dataminer/dataminer-wasm/dist/dataminer-eh.wasm?url';
import eh_worker from '@dataminer/dataminer-wasm/dist/dataminer-browser-eh.worker.js?url';

const MANUAL_BUNDLES: dataminer.dataminerBundles = {
    mvp: {
        mainModule: dataminer_wasm,
        mainWorker: mvp_worker,
    },
    eh: {
        mainModule: dataminer_wasm_eh,
        mainWorker: eh_worker,
    },
};
// Select a bundle based on browser checks
const bundle = await dataminer.selectBundle(MANUAL_BUNDLES);
// Instantiate the asynchronus version of dataminer-wasm
const worker = new Worker(bundle.mainWorker!);
const logger = new dataminer.ConsoleLogger();
const db = new dataminer.Asyncdataminer(logger, worker);
await db.instantiate(bundle.mainModule, bundle.pthreadWorker);
```

## Statically Served

It is possible to manually download the files from <https://cdn.jsdelivr.net/npm/@dataminer/dataminer-wasm/dist/>.

```ts
import * as DataMiner from '@dataminer/dataminer-wasm';

const MANUAL_BUNDLES: dataminer.dataminerBundles = {
    mvp: {
        mainModule: 'change/me/../dataminer-mvp.wasm',
        mainWorker: 'change/me/../dataminer-browser-mvp.worker.js',
    },
    eh: {
        mainModule: 'change/m/../dataminer-eh.wasm',
        mainWorker: 'change/m/../dataminer-browser-eh.worker.js',
    },
};
// Select a bundle based on browser checks
const bundle = await dataminer.selectBundle(JSDELIVR_BUNDLES);
// Instantiate the asynchronous version of dataminer-Wasm
const worker = new Worker(bundle.mainWorker!);
const logger = new dataminer.ConsoleLogger();
const db = new dataminer.Asyncdataminer(logger, worker);
await db.instantiate(bundle.mainModule, bundle.pthreadWorker);
```