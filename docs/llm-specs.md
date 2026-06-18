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
- **Context7**: RAG/Context search enabled with API key
- **shadcn**: UI components integration ready
- **Aceternity**: UI components integration ready
- **Playwright**: Web automation testing enabled (Chromium)

## Usage Notes
- ⚠️ **Max reasoning time: 5 minutes**
- Break tasks into smaller steps to avoid timeout
- Use incremental commits for each step
