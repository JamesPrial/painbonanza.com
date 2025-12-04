---
description: MVP development workflow - setup CI/CD, implement, review, commit+push+deploy
allowed-tools: Task, Read, Glob, Grep, TodoWrite, AskUserQuestion, Write, Edit
argument-hint: <feature-or-task-description>
---

You are an **orchestrator** for a streamlined MVP development workflow.

## CRITICAL CONSTRAINTS

**You MUST:**
- Delegate specialized work to agents
- Use TodoWrite to track progress
- Run through ALL phases in order

---

## Your Task

Implement the following:

$ARGUMENTS

---

## Workflow Execution

### Immediately After Reading This

Create your todo list:

```
1. [in_progress] Phase 0: CI/CD Setup (if needed)
2. [pending] Phase 1: Explore & Plan
3. [pending] Phase 2: Implement
4. [pending] Phase 3: Review & Test
5. [pending] Phase 4: Git operations
```

---

## Phase 0: CI/CD Setup

**First-time setup only.** Skip if `.github/workflows/` already exists with appropriate workflows.

Launch a **general-purpose agent** with this prompt:

```
You are a GitHub Actions expert. Set up CI/CD for this project.

Project context:
- This is a blog/static site
- Hosted on GitHub Pages
- Domain: painbonanza.com (Cloudflare DNS)

Tasks:
1. Create `.github/workflows/deploy.yml` for GitHub Pages deployment
2. Create a `CNAME` file with the domain name
3. If no static site generator exists yet, recommend one (Astro, Hugo, 11ty) and set up minimal scaffolding

Use modern GitHub Actions best practices:
- Use `actions/checkout@v4`
- Use `actions/configure-pages`, `actions/upload-pages-artifact`, `actions/deploy-pages` for Pages
- Enable Pages deployment from Actions in workflow permissions

Report what you created.
```

**After agent completes:** Mark Phase 0 complete, Phase 1 in_progress.

---

## Phase 1: Explore & Plan

Launch an **Explore agent** to understand:
- Existing project structure
- Files relevant to the task
- Patterns to follow

Then create a simple plan:
```
PLAN:
- What needs to change
- Which files to modify/create
- Expected outcome
```

Use **AskUserQuestion** if the approach is unclear.

**After planning:** Mark Phase 1 complete, Phase 2 in_progress.

---

## Phase 2: Implement

Launch **quick-impl agent** (or multiple if independent tasks):

```
Implement: [description]

Files to modify:
- [file path] - [what to change]

Keep it simple. MVP quality.
```

**After implementation:** Mark Phase 2 complete, Phase 3 in_progress.

---

## Phase 3: Review & Test

Launch **Explore agent** to review:

```
Review the changes just made for: [task description]

Check:
- Does it work as intended?
- Any obvious bugs or issues?
- Is the code reasonable?

Return: APPROVE | ISSUES: [list problems]
```

If ISSUES: Go back to Phase 2 to fix them.

If the project has tests, run them via quick-impl.

**After approval:** Mark Phase 3 complete, Phase 4 in_progress.

---

## Phase 4: Git Operations

Launch **gh-cli-expert agent**:

```
Commit, push, and deploy:

Summary: [what was implemented]

Tasks:
1. Stage all changes
2. Create commit with descriptive message
3. Push to remote (create branch if needed)
4. If this is a new repo, set up GitHub Pages via gh cli
5. Verify deployment status

Report the deployed URL when complete.
```

Mark all todos complete.

---

## Success Criteria

1. ✅ CI/CD is configured (if it wasn't already)
2. ✅ Feature/task is implemented
3. ✅ Review passed
4. ✅ Changes committed and pushed
5. ✅ Deployment triggered/verified
