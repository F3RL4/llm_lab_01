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

### 🟢 ALL 5 MCP SERVERS CONNECTED & OPERATIONAL

| MCP Server | Status | Purpose |
|------------|--------|---------|
| **context7** | ✅ Connected | RAG/Context search for semantic queries and benchmark data retrieval |
| **filesystem** | ✅ Connected | File system access for logs, reports, and project files |
| **github** | ✅ Connected | GitHub API for issues, PRs with benchmark results |
| **shadcn** | ✅ Connected | shadcn/ui v4 components (UI development) |
| **aceternityui** | ✅ Connected | Aceternity UI components (React/Vue animations) |

### MCP Server Capabilities

1. **context7** - Context Search & RAG
   - Semantic search across project documentation
   - Retrieve benchmark data and context from logs
   - Cross-reference previous test results

2. **filesystem** - File System Access
   - Read/write files in `D:\llm_lab\teste02`
   - Access Playwright cache directory
   - Generate reports and analysis documents

3. **github** - GitHub API Integration
   - Create issues with benchmark findings
   - Generate pull requests for code changes
   - Query repository metadata programmatically

4. **shadcn** - shadcn/ui v4 Components
   - Get component source code and demos
   - Retrieve installation commands and metadata
   - Access UI component documentation

5. **aceternityui** - Aceternity UI Components
   - React/Vue component library integration
   - Animated UI components (Framer Motion)
   - Installation info and usage examples

## Usage Notes

- ⚠️ **Max reasoning time: 5 minutes (300 seconds)**
- Break tasks into smaller steps to avoid timeout
- Use incremental commits for each step

## 📋 Project Structure - EPICS & User Stories

### EPICS.md
Located at `qwen-chatbot-assistant/EPICS.md` - Contains all detailed User Stories for the Chatbot Multi-Purpose project with:
- Core Chat Interface (Aceternity UI)
- Dashboard Metrics (Real-time benchmarking)
- Settings & Configuration Management
- MCP Server Integration

### Sprint Tracking
Progress tracked in `sprint-status.yaml` - Updated after each development step.

### GitHub Workflow
1. Create Issue for each Epic in GitHub
2. Develop User Stories incrementally
3. Close Epic issue with implementation details
4. Continue to next Epic

---

## 🚀 Current Development Phase: ETAPA 2
- Creating detailed User Stories for each Epic
- Defining acceptance criteria for each story
- Preparing sprint tracking documentation
