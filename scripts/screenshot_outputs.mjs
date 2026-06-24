// Screenshot the example HTML outputs to PNGs for the slide deck.
//
// Reusable system — regenerate any time with:
//   npm i playwright-core   # (a headless chromium must be installed; this env has one at /opt/pw-browsers)
//   node scripts/screenshot_outputs.mjs
//
// Add a new target below to capture another HTML file. PNGs land in 01_claude/output/shots/.

import { chromium } from 'playwright-core';
import { fileURLToPath } from 'url';
import fs from 'fs';
import path from 'path';

const repo = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');

function findChrome() {
  if (process.env.PW_CHROME) return process.env.PW_CHROME;
  const base = '/opt/pw-browsers';
  if (fs.existsSync(base)) {
    for (const d of fs.readdirSync(base)) {
      const p = path.join(base, d, 'chrome-linux', 'chrome');
      if (fs.existsSync(p)) return p;
    }
  }
  throw new Error('No chromium found. Set PW_CHROME=/path/to/chrome');
}

const targets = [
  // html source                              -> png output                          width height waitNet settle fullPage
  ['01_claude/output/interactive_tutorial.html', '01_claude/output/shots/interactive_tutorial.png', 820, 720,  true,  3000, false],
  ['01_claude/output/poster.html',               '01_claude/output/shots/poster.png',               860, 1000, false, 500,  true],
];

fs.mkdirSync(path.join(repo, '01_claude/output/shots'), { recursive: true });

const proxy = process.env.HTTPS_PROXY ? { server: process.env.HTTPS_PROXY } : undefined;
const browser = await chromium.launch({
  executablePath: findChrome(),
  headless: true,
  args: ['--no-sandbox', '--disable-dev-shm-usage'],
  proxy,
});

for (const [html, out, width, height, waitNet, settle, fullPage] of targets) {
  const ctx = await browser.newContext({
    viewport: { width, height },
    deviceScaleFactor: 2,
    ignoreHTTPSErrors: true,
  });
  const page = await ctx.newPage();
  const url = 'file://' + path.join(repo, html);
  await page.goto(url, { waitUntil: waitNet ? 'networkidle' : 'load', timeout: 60000 })
    .catch(e => console.error('  goto warning:', e.message));
  await page.waitForTimeout(settle);
  await page.screenshot({ path: path.join(repo, out), fullPage });
  console.log('✅ shot →', out);
  await ctx.close();
}

await browser.close();
console.log('done.');
