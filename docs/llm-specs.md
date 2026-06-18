# LLM Model Specifications

## Model Details
- **Name**: Qwen3.5-9B
- **Format**: GGUF (Quantized)
- **Developer**: Alibaba Cloud / Qwen Team
- **Architecture**: Transformer-based LLM

## Inference Setup
- **Runtime**: LM Studio
- **Backend**: Compatible with CPU + CUDA GPU acceleration
- **Hardware Target**: RTX 4050 Laptop (6GB VRAM)

## Model Configuration
- **Temperature**: 0.7
- **Top P**: 0.9
- **Top K**: 50
- **Max Tokens**: 4096
- **Repetition Penalty**: 1.1

## MCP Integration

### Active MCP Servers

- **Context7**: RAG/Context search for LLM conversations ✅ Working
  - API Key: Configured in `.mcp.json`
  - Purpose: Semantic search and context retrieval for benchmark data
  
- **Filesystem**: File system access for logs and reports ✅ Working
  - Access paths: `D:\llm_lab\teste02` and Playwright cache directory
  - Purpose: Read benchmark logs, write analysis reports
  
- **GitHub**: GitHub API integration ✅ Working (deprecated but functional)
  - Purpose: Create issues, pull requests with benchmark results
  - Authentication: Via `GITHUB_TOKEN` environment variable

### Notes on Removed/Unavailable Servers

- **Git MCP**: Not included - using `gh` CLI directly for version control
- **shadcn MCP**: Installation issues encountered - use Context7 MCP for UI tasks instead
- **Aceternity UI MCP**: Can be added later if needed for React/Vue component integration
- **Playwright MCP**: Use Playwright directly (installed globally via npm) for web automation

## Usage Notes
- ⚠️ **Max reasoning time: 5 minutes**
- Break tasks into smaller steps to avoid timeout
- Use incremental commits for each step
