import sitemap from "@astrojs/sitemap";
import tailwind from "@astrojs/tailwind";
import {
	defineConfig
} from "astro/config";

import partytown from '@astrojs/partytown';
import robotsTxt from "astro-robots-txt";

// https://astro.build/config
export default defineConfig({
	site: import.meta.env.DEV ?
		"http://localhost:4321" :
		"https://dataminer.site/",
	integrations: [
		tailwind(),
		sitemap(),
		robotsTxt(),
		partytown({
			config: {
				forward: ["dataLayer.push"],
			},
		})
	],
});