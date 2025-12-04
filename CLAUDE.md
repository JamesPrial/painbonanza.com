# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

MVP blog for painbonanza.com.

## Hosting

- Domain: painbonanza.com (Cloudflare DNS)
- Hosting: GitHub Pages (deployed via GitHub Actions)

## Slash Commands

- `/implement <task>` - Full development workflow: sets up CI/CD (if needed), implements the task, reviews, then commits/pushes/deploys

## Available Agents

- `quick-impl` - Lightweight helper for file modifications and shell commands
- `typescript-craftsman` - TypeScript implementation specialist
- `typescript-code-reviewer` - Code review agent
- `typescript-test-architect` - Test writing specialist
- `ts-test-runner` - Test execution agent
