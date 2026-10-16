# peterbk.com.np

Personal portfolio for Peter BK. Static site built with [Astro](https://astro.build). The only client-side JavaScript is the light/dark theme toggle, which follows the OS setting until the visitor picks a theme and then remembers it.

## Develop

```sh
npm install
npm run dev      # http://localhost:4321
npm run build    # outputs to dist/
npm run preview  # serve dist/ locally
```

## Editing content

All text lives in `src/data/profile.ts`: summary, projects, experience, skills, education.
The page template is `src/pages/index.astro`; styles and design tokens are in `src/styles/global.css`.

To update the résumé, replace `public/Peter-BK-Resume.pdf` (keep the filename).

If you change the headline, also update the text in `scripts/make-images.mjs` and run
`node scripts/make-images.mjs` to regenerate the social preview image (`public/og.png`).

## Deploy

`.github/workflows/deploy.yml` builds and publishes to GitHub Pages on every push to `master`.
`public/CNAME` documents the custom domain `www.peterbk.com.np` (the domain itself is set in the repo's Pages settings).

In the repository settings, **Pages → Source** must be set to **GitHub Actions**.
