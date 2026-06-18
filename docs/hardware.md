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

**Active & Working:**
- **Context7**: ✅ RAG/Context search for LLM conversations
- **Filesystem**: ✅ File system access for logs and reports
- **GitHub**: ✅ GitHub API integration (deprecated but functional)

**Notes on Unavailable:**
- Git MCP: Not included - using `gh` CLI directly
- shadcn MCP: Installation issues encountered
- Aceternity UI MCP: Can be added later if needed
- Playwright MCP: Use Playwright directly (npm global install)

## Compatibility
- ✅ GGUF format models (Qwen3.5-9B)
- ✅ CPU inference with AVX2 support
- ✅ GPU acceleration via CUDA (RTX 4050)
- ✅ MCP servers fully operational (Context7, Filesystem, GitHub)
