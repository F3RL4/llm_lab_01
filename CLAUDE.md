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
├── CLAUDE.md          # This file - project rules
├── README.md           # Main documentation (update always!)
├── docs/               # Documentation files
│   ├── hardware.md     # Hardware specs
│   ├── llm-specs.md    # Model info (update always!)
│   └── benchmarks.md   # Benchmark results (update always!)
├── config/             # Configuration files
├── tests/              # Test files
├── scripts/            # Utility scripts
└── logs/               # Execution logs
```

## 🤖 Model & Hardware

- **Model**: Qwen/Qwen3.5-9B (GGUF format)
- **Runtime**: LM Studio
- **GPU**: NVIDIA RTX 4050 (6GB VRAM)
- **RAM**: 16GB
- **CPU**: AMD Ryzen 5 7640HS

## 🤖 MCP Servers - AUTO USAGE (ALWAYS AVAILABLE)

**Todos os 5 MCPs estão configurados e funcionando. Use automaticamente conforme necessário:**

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

## 🏷️ Commit Message Format

```
<type>: <description>

Examples:
- "docs: Add benchmark for temperature 0.7"
- "config: Update LM Studio settings for GPU offload"
- "tests: Add accuracy test for math reasoning"
```
