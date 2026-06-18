# CLAUDE.md - Project Guidelines

## ⚠️ CRITICAL: 5-Minute Timeout Rule

**MAX REASONING TIME: 5 MINUTES (300 seconds)**

- Every task MUST be broken into smaller sub-tasks
- Commit and push after EACH small step
- Never attempt a single large operation that could timeout
- If a task seems complex, decompose it immediately

## 📝 Documentation Rules (ALWAYS)

**Before committing any changes, update:**

1. **README.md** - Main project documentation (POC status, progress)
2. **docs/llm-specs.md** - Model and LLM specifications
3. **docs/benchmarks.md** - Add new benchmark results/metrics
4. **docs/hardware.md** - Hardware info if changed

**Rule**: Any modification = Update documentation first!

## 🔧 Git Workflow

- Commit frequently after each small step
- Use clear commit messages indicating the part completed
- Always push to GitHub before continuing
- Check GitHub repo status: `https://github.com/F3RL4/llm_lab_01`

## 📁 Project Structure

```
llm_lab_01/
├── CLAUDE.md          # This file - project rules (ALWAYS ENGLISH)
├── README.md           # Main documentation (update always!)
├── docs/               # Documentation files
│   ├── hardware.md     # Hardware specs
│   ├── llm-specs.md    # Model info (update always!)
│   └── benchmarks.md   # Benchmark results (update always!)
├── config/             # Configuration files
├── tests/              # Test files
├── scripts/            # Utility scripts
├── logs/               # Execution logs
├── memory/             # Session memory (persistent across sessions)
│   └── *.md            # Memory files documenting state, decisions, guidance
└── .gitignore          # Git ignore rules (memory tracked!)
```

## 🤖 Model & Hardware

- **Model**: Qwen/Qwen3.5-9B (GGUF format)
- **Runtime**: LM Studio
- **GPU**: NVIDIA RTX 4050 (6GB VRAM)
- **RAM**: 16GB
- **CPU**: AMD Ryzen 5 7640HS

## 🤖 MCP Servers - AUTO USAGE (ALWAYS AVAILABLE)

**All 5 MCPs are configured and working. Use them automatically as needed:**

| MCP Server | Purpose | When to Use |
|------------|---------|-------------|
| `context7` | RAG/Context search for LLM conversations | Always use for retrieving benchmark data, context from logs, or semantic search across project documentation |
| `filesystem` | File system access | Always use for reading/writing logs, reports, and accessing files in `D:\llm_lab\teste02` or Playwright cache |
| `github` | GitHub API integration | Use when creating issues, pull requests, or querying GitHub data programmatically |
| `shadcn` | shadcn/ui v4 components | Use for obtaining component code, demos, metadata for UI development tasks |
| `aceternityui` | Aceternity UI components | Use for React/Vue UI component integration and animations |

### 📋 MCP Usage Guidelines (AUTOMATIC)

- **DO NOT ASK USER TO USE MCPs** - They are available automatically via `.mcp.json` configuration
- **USE CONTEXT7** when you need to search context, retrieve benchmark data, or get information from project documentation
- **USE FILESYSTEM** when you need to read logs, write reports, or access any files in the project
- **USE SHADCN** for UI component queries (get component code, demos, installation info)
- **USE ACETERNITYUI** for React/Vue component integration and animations
- **USE GITHUB** when creating issues/PRs with benchmark results via API

### 🔄 MCP Server Capabilities

1. **Context7 MCP**: Semantic search and context retrieval for benchmark data
   - Use for: "Find all benchmarks for temperature 0.7", "Search logs for errors", etc.
   
2. **Filesystem MCP**: File system access within allowed directories
   - Use for: Reading logs, writing reports, accessing any project files
   
3. **GitHub MCP**: GitHub API integration (create issues, PRs)
   - Use for: "Create issue with benchmark results", "Generate PR for merge"
   
4. **shadcn MCP**: shadcn/ui v4 component library
   - Use for: Getting component code, demos, installation commands
   
5. **Aceternity UI MCP**: Aceternity UI component library (React/Vue)
   - Use for: Getting component info, installation, examples

## 🧠 Session Memory Management (ALWAYS CREATE)

**Project memory files must be created in `memory/` directory to persist facts, guidance, and project state across sessions.**

### When to Create Memory Files:

- **After installing/configuring new MCP servers** - Document which servers are operational
- **When completing complex multi-step tasks** - Record decisions, approaches, and outcomes
- **When encountering errors or blockers** - Document the issue and attempted solutions
- **When making significant architectural decisions** - Capture rationale and trade-offs
- **After major documentation updates** - Link related memory files with cross-references

### Memory File Format:

```markdown
---
name: <short-kebab-case-slug>
description: <one-line summary — used to decide relevance during recall>
metadata:
  type: user | feedback | project | reference
---

<the fact; for feedback/project, follow with **Why:** and **How to apply:** lines. Link related memories with [[their-name]].>
```

### Memory Categories:

- **user** - Who the user is (role, expertise, preferences)
- **feedback** - Guidance on how to work, corrections, confirmed approaches (include why)
- **project** - Ongoing work, goals, constraints not derivable from code/git history
- **reference** - External resources (URLs, dashboards, tickets)

### Cross-Referencing:

- Link related memories liberally with `[[name]]` format
- A link to a non-existent memory is fine - it marks something worth creating later
- Do not save what the repo already records (code structure, past fixes, git history)

## ⏰ Timeout Error Handling (ALWAYS APPLY)

**When encountering "API Error: The operation timed out", automatically continue from where you left off.**

### Automatic Recovery Strategy:

1. **Identify the last completed step** - Review recent commits and task state
2. **Preserve context** - Maintain working directory state if possible
3. **Resume execution** - Proceed as if the user typed "continue"
4. **Document recovery** - Update documentation with what was resumed

### Examples of Recovery:

- If installation timed out → Re-run installation commands from last successful state
- If benchmark generation timed out → Resume from last completed benchmark configuration
- If documentation update timed out → Continue updating remaining sections

**Rule**: Never ask "should I continue?" - automatically resume from the last completed state.

## 🏷️ Commit Message Format

```
<type>: <description>

Examples:
- "docs: Add benchmark for temperature 0.7"
- "config: Update LM Studio settings for GPU offload"
- "tests: Add accuracy test for math reasoning"
```
