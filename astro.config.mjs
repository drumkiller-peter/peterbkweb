import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://www.peterbk.com.np',
  integrations: [sitemap()],
  // One small stylesheet: inline it so first paint doesn't wait on an extra request
  build: { inlineStylesheets: 'always' },
});
