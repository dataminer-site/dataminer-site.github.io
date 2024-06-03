---
layout: docu
title: Instantiation
---

## Instantiation

DataMiner-Wasm has multiple ways to be instantiated depending on the use case.

### `cdn(jsdelivr)`

```ts
import * as DataMiner from '@DataMiner/DataMiner-wasm';

const JSDELIVR_BUNDLES = DataMiner.getJsDelivrBundles();

// Select a bundle based on browser checks
const bundle = await DataMiner.selectBundle(JSDELIVR_BUNDLES);

const worker_url = URL.createObjectURL(
  new Blob([`importScripts("${bundle.mainWorker!}");`], {type: 'text/javascript'})
);

// Instantiate the asynchronus version of DataMiner-Wasm
const worker = new Worker(worker_url);
const logger = new DataMiner.ConsoleLogger();
const db = new DataMiner.AsyncDataMiner(logger, worker);
await db.instantiate(bundle.mainModule, bundle.pthreadWorker);
URL.revokeObjectURL(worker_url);
```

### `webpack`

```ts
import * as DataMiner from '@DataMiner/DataMiner-wasm';
import DataMiner_wasm from '@DataMiner/DataMiner-wasm/dist/DataMiner-mvp.wasm';
import DataMiner_wasm_next from '@DataMiner/DataMiner-wasm/dist/DataMiner-eh.wasm';
const MANUAL_BUNDLES: DataMiner.DataMinerBundles = {
    mvp: {
        mainModule: DataMiner_wasm,
        mainWorker: new URL('@DataMiner/DataMiner-wasm/dist/DataMiner-browser-mvp.worker.js', import.meta.url).toString(),
    },
    eh: {
        mainModule: DataMiner_wasm_next,
        mainWorker: new URL('@DataMiner/DataMiner-wasm/dist/DataMiner-browser-eh.worker.js', import.meta.url).toString(),
    },
};
// Select a bundle based on browser checks
const bundle = await DataMiner.selectBundle(MANUAL_BUNDLES);
// Instantiate the asynchronus version of DataMiner-Wasm
const worker = new Worker(bundle.mainWorker!);
const logger = new DataMiner.ConsoleLogger();
const db = new DataMiner.AsyncDataMiner(logger, worker);
await db.instantiate(bundle.mainModule, bundle.pthreadWorker);
```

### `vite`

```ts
import * as DataMiner from '@DataMiner/DataMiner-wasm';
import DataMiner_wasm from '@DataMiner/DataMiner-wasm/dist/DataMiner-mvp.wasm?url';
import mvp_worker from '@DataMiner/DataMiner-wasm/dist/DataMiner-browser-mvp.worker.js?url';
import DataMiner_wasm_eh from '@DataMiner/DataMiner-wasm/dist/DataMiner-eh.wasm?url';
import eh_worker from '@DataMiner/DataMiner-wasm/dist/DataMiner-browser-eh.worker.js?url';

const MANUAL_BUNDLES: DataMiner.DataMinerBundles = {
    mvp: {
        mainModule: DataMiner_wasm,
        mainWorker: mvp_worker,
    },
    eh: {
        mainModule: DataMiner_wasm_eh,
        mainWorker: eh_worker,
    },
};
// Select a bundle based on browser checks
const bundle = await DataMiner.selectBundle(MANUAL_BUNDLES);
// Instantiate the asynchronus version of DataMiner-wasm
const worker = new Worker(bundle.mainWorker!);
const logger = new DataMiner.ConsoleLogger();
const db = new DataMiner.AsyncDataMiner(logger, worker);
await db.instantiate(bundle.mainModule, bundle.pthreadWorker);
```

## Statically Served

It is possible to manually download the files from <https://cdn.jsdelivr.net/npm/@DataMiner/DataMiner-wasm/dist/>.

```ts
import * as DataMiner from '@DataMiner/DataMiner-wasm';

const MANUAL_BUNDLES: DataMiner.DataMinerBundles = {
    mvp: {
        mainModule: 'change/me/../DataMiner-mvp.wasm',
        mainWorker: 'change/me/../DataMiner-browser-mvp.worker.js',
    },
    eh: {
        mainModule: 'change/m/../DataMiner-eh.wasm',
        mainWorker: 'change/m/../DataMiner-browser-eh.worker.js',
    },
};
// Select a bundle based on browser checks
const bundle = await DataMiner.selectBundle(JSDELIVR_BUNDLES);
// Instantiate the asynchronous version of DataMiner-Wasm
const worker = new Worker(bundle.mainWorker!);
const logger = new DataMiner.ConsoleLogger();
const db = new DataMiner.AsyncDataMiner(logger, worker);
await db.instantiate(bundle.mainModule, bundle.pthreadWorker);
```
