// Regenerates favicon.png, apple-touch-icon.png and og.png from the SVG logo.
// Run with: node scripts/make-images.mjs
import sharp from 'sharp';
import { readFile } from 'node:fs/promises';

const logo = await readFile('public/favicon.svg');

await sharp(logo, { density: 600 }).resize(64, 64).png().toFile('public/favicon.png');

await sharp({ create: { width: 180, height: 180, channels: 4, background: '#141311' } })
  .composite([{ input: await sharp(logo, { density: 600 }).resize(132, 132).png().toBuffer(), top: 24, left: 24 }])
  .png()
  .toFile('public/apple-touch-icon.png');

const og = `
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="630">
  <rect width="1200" height="630" fill="#f5f2ea"/>
  <rect x="80" y="538" width="1040" height="1" fill="#d8d1c1"/>
  <text x="80" y="120" font-family="Menlo, monospace" font-size="22" letter-spacing="2" fill="#5c574c">FLUTTER &amp; PYTHON DEVELOPER · ITAHARI, NEPAL</text>
  <text font-family="Georgia, serif" font-size="76" fill="#1b1a17" letter-spacing="-1.5">
    <tspan x="80" y="260">I build Flutter apps that run</tspan>
    <tspan x="80" y="350">on <tspan font-style="italic" fill="#7a5f1c">every screen</tspan>, and the Python</tspan>
    <tspan x="80" y="440">services they talk to.</tspan>
  </text>
  <text x="80" y="588" font-family="Georgia, serif" font-size="30" fill="#1b1a17">Peter BK</text>
  <text x="1120" y="588" text-anchor="end" font-family="Menlo, monospace" font-size="22" fill="#5c574c">peterbk.com.np</text>
</svg>`;

await sharp({ create: { width: 1200, height: 630, channels: 4, background: '#f5f2ea' } })
  .composite([{ input: Buffer.from(og) }])
  .png()
  .toFile('public/og.png');

console.log('images written');
