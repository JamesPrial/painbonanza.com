# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

MVP blog for painbonanza.com, built with Astro v5 as a static site.

## Build & Dev

- `npm run dev` - Local dev server with hot reload
- `npm run build` - Build static site to `dist/`
- `npm run preview` - Preview production build locally

No test framework is currently configured.

## Architecture

- **Framework:** Astro v5 (static site, no JS framework)
- **Layout:** `src/layouts/Base.astro` - base HTML template, dark theme, scoped CSS
- **Pages:** `src/pages/` - Astro file-based routing (currently just `index.astro`)
- **Static assets:** `public/` - copied as-is to `dist/` (includes `CNAME`, `_headers`)
- **Styling:** Scoped CSS within Astro components, no CSS framework

## Hosting & Deployment

- **Domain:** painbonanza.com (Cloudflare DNS)
- **Server:** GCP Compute Engine VM, webroot at `/var/www/html/`
- **CI/CD:** GitHub Actions (`.github/workflows/deploy.yml`) - pushes to `master` trigger build + SCP deploy to VM
- **Manual deploy:** `deploy.sh` uses `gcloud` CLI as fallback

## Slash Commands

- `/implement <task>` - Full development workflow: sets up CI/CD (if needed), implements the task, reviews, then commits/pushes/deploys
