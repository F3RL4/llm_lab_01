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

## 🏷️ Commit Message Format

```
<type>: <description>

Examples:
- "docs: Add benchmark for temperature 0.7"
- "config: Update LM Studio settings for GPU offload"
- "tests: Add accuracy test for math reasoning"
```
