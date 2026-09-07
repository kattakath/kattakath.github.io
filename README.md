# kattakath.github.io

The **Kattakath family landing page** — the site served at
[kattakath.com](https://kattakath.com).

This is the canonical GitHub **organization Pages** repo for the `kattakath` org.

## What's in here

| Path | What it is |
|---|---|
| `index.html` | The **entire site.** One self-contained file — all CSS, JS, fonts and assets are inlined. No external `<script src>` and no external `<link rel=stylesheet>`. |
| `CNAME` | The custom domain: `kattakath.com`. |
| `.github/workflows/pages.yml` | Deploys the repo root to GitHub Pages on every push to `main`. |

**There is no build step, no framework and no bundler** — and there should not be
one. The page is a plain static file; Pages serves it verbatim.

## Where the content came from

The source of truth for this page **used to be** the private `nix-personal` flake, at
`sites/landing/index.html`, served from the self-hosted Raspberry Pi (`nixpi`) behind a
Cloudflare Tunnel. This repo is now that source of truth.

## How to edit

1. Edit `index.html`.
2. Commit and push to `main`.
3. The `Deploy to GitHub Pages` workflow builds and deploys automatically.

Deployments are visible under the repo's **Actions** tab and in the
`github-pages` environment.

## Domain

- Custom domain: **kattakath.com** (set via `CNAME` and the repo's Pages settings).
- Default Pages URL: <https://kattakath.github.io> — always serves this page,
  regardless of the custom domain's DNS state.
