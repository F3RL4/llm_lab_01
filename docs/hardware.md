# Hardware Specifications

## CPU
- **Model**: AMD Ryzen 5 7640HS w/ Radeon 760M Graphics
- **Architecture**: x86_64
- **Instruction Sets**: AVX, AVX2

## GPU
- **Model**: NVIDIA GeForce RTX 4050 Laptop GPU
- **VRAM**: 6 GB (6.44 GB)
- **CUDA Driver**: v13030
- **Compute Capability**: 8.9

## Memory
- **RAM**: 16 GB (16.3 GB)
- **Total Memory**: ~22.75 GB

## Software Stack

### Core Runtime
- **Node.js**: v24.16.0 ✅
- **npm**: Latest
- **LM Studio**: Installed (for GGUF model inference)
- **GitHub CLI**: `gh` for version control operations

### MCP Servers Configuration

**🟢 ALL 5 MCP SERVERS OPERATIONAL:**

| Server | Status | Purpose |
|--------|--------|---------|
| **context7** | ✅ Connected | RAG/Context search for semantic queries and benchmark data |
| **filesystem** | ✅ Connected | File system access for logs, reports, project files |
| **github** | ✅ Connected | GitHub API for issues, PRs with benchmark results |
| **shadcn** | ✅ Connected | shadcn/ui v4 components - UI development tasks |
| **aceternityui** | ✅ Connected | Aceternity UI components - React/Vue animations and UI elements |

### MCP Usage Guidelines

- **ALL MCP SERVERS AUTOMATICALLY AVAILABLE** via `.mcp.json` configuration
- Use `context7` for semantic search, context retrieval, benchmark queries
- Use `filesystem` for file operations in project directory
- Use `github` for API operations (issues, PRs)
- Use `shadcn` for UI component code and demos
- Use `aceternityui` for React/Vue component integration

## Compatibility

- ✅ GGUF format models (Qwen3.5-9B)
- ✅ CPU inference with AVX2 support
- ✅ GPU acceleration via CUDA (RTX 4050)
- ✅ ALL 5 MCP servers fully operational (Context7, Filesystem, GitHub, shadcn, Aceternity UI)
