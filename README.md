# kattakath.github.io

[![CI status](https://github.com/kattakath/kattakath.github.io/actions/workflows/ci.yml/badge.svg)](https://github.com/kattakath/kattakath.github.io/actions/workflows/ci.yml)
[![GitHub Pages deploy status](https://github.com/kattakath/kattakath.github.io/actions/workflows/pages.yml/badge.svg)](https://github.com/kattakath/kattakath.github.io/actions/workflows/pages.yml)
[![kattakath.com availability](https://img.shields.io/website?url=https%3A%2F%2Fkattakath.com)](https://kattakath.com)
[![License](https://img.shields.io/github/license/kattakath/kattakath.github.io)](LICENSE)

kattakath.com: a family landing page, plain static HTML deployed by GitHub Pages with no build step

This is the `kattakath` organization's Pages repo. It is the source of truth for the site.

## Install

Nothing to install. There is no build step, no framework and no bundler, on purpose: Pages
serves the files as they are.

To preview locally, serve the repo root with any static server, for example
`python3 -m http.server`.

## Usage

| Path | What it is |
| --- | --- |
| `index.html` | The home page: one self-contained file with its CSS, JS and images inlined |
| `about/`, `privacy-policy/`, `terms-of-service/` | The other pages, one `index.html` each |
| `assets/` | Files the policy pages share |
| `CNAME` | The custom domain, `kattakath.com` |
| `.github/workflows/pages.yml` | Deploys the repo root to Pages on every push to `main` |

To change the site:

1. Edit the page.
2. Push to `main`.
3. `pages.yml` deploys it. Each run shows under **Actions** and in the `github-pages` environment.

`pages.yml` removes the repo tooling (`flake.nix`, `flake.lock`, `LICENSE` and the editor and
dev-container files) before it uploads, so those are never served. Add a new tooling file to
that `rm` line, or it goes live.

The default Pages URL, <https://kattakath.github.io>, serves the same site whatever the custom
domain's DNS state.

## Contributing

Open an issue or a pull request. CI runs on every pull request, and one required check, `gate`,
must pass.

## License

[CC-BY-4.0](LICENSE)
