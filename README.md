# LLM Lab 01 - Local Testing Benchmark

## 🎯 Objetivo

Este projeto serve como **POC/POV (Proof of Concept / Proof of Value)** para testar e benchmarkar a capacidade de execução de modelos LLM locais utilizando hardware específico.

---

## 💻 Hardware Specifications

| Componente | Especificação |
|------------|---------------|
| **CPU** | AMD Ryzen 5 7640HS w/ Radeon 760M Graphics |
| **Architecture** | x86_64 |
| **Instruction Sets** | AVX, AVX2 |
| **GPU** | NVIDIA GeForce RTX 4050 Laptop GPU |
| **VRAM** | 6 GB (6,438,780,928 bytes) |
| **RAM** | 16 GB (16,312,553,472 bytes) |
| **CUDA Driver** | Version 13030 |
| **Compute Capability** | 8.9 |

---

## 🤖 Modelo LLM Utilizado

- **Modelo**: Qwen/Qwen3.5-9B
- **Formato**: GGUF (Quantized)
- **Runtime**: LM Studio (compatível com CPU e CUDA)
- **Tipo de Compatibilidade**: GPU-supported via CUDA

---

## 📋 Limitações e Considerações Importantes

⚠️ **Timeout de Reasoning: 5 minutos**

Devido às limitações de hardware, todas as tarefas devem ser desmembradas em partes menores para evitar timeout de 5 minutos no reasoning.

- **Max reasoning time**: 5 minutes (300 seconds)
- **Strategy**: Break down complex tasks into smaller, independent steps
- **Commit frequency**: Each step should be committed and pushed separately

### 📝 Regra de Documentação (OBRIGATÓRIO)

**Antes de qualquer commit, atualize:**

1. **README.md** - Documente progresso do POC/POV
2. **docs/llm-specs.md** - Especificações do modelo e mudanças
3. **docs/benchmarks.md** - Novos resultados de benchmarking

> ✅ **Regra**: Toda alteração = Atualizar README + docs relevantes!

---

## 🛠️ Stack Tecnológico

- **LLM Runtime**: LM Studio
- **Model Format**: GGUF
- **Inference Engine**: Compatible with CPU (AVX2) + CUDA (GPU)
- **Version Control**: Git + GitHub CLI
- **MCP Servers**: Context7, Filesystem, GitHub ✅

## 🤖 MCP (Model Context Protocol) Configuration

### Installed MCP Servers

| MCP Server | Purpose | Status |
|------------|---------|--------|
| `context7` | RAG/Context search for LLM conversations | ✅ Working |
| `filesystem` | File system access for reading logs and writing reports | ✅ Working |
| `github` | GitHub API for creating issues, PRs with benchmark results | ✅ Working (deprecated but functional) |

### MCP Servers Details

**1. Context7 MCP** - RAG/Context Search
```json
{
  "command": "npx",
  "args": ["-y", "@upstash/context7-mcp", "--api-key", "{CONTEXT7_TOKEN:-}"]
}
```

**2. Filesystem MCP** - File System Access
```json
{
  "command": "npx",
  "args": ["-y", "@modelcontextprotocol/server-filesystem", "D:\\llm_lab\\teste02", "C:\\Users\\Ferla\\AppData\\Local\\ms-playwright"]
}
```

**3. GitHub MCP** - GitHub API Integration
```json
{
  "command": "npx",
  "args": ["-y", "@modelcontextprotocol/server-github", "--token", "${GITHUB_TOKEN:-}"]
}
```

### Notes on Removed Servers

- **Git MCP**: Not included - using `gh` CLI directly for version control operations
- **shadcn MCP**: Installation issues encountered - use Context7 MCP for UI component tasks instead
- **Aceternity UI MCP**: Can be added later if needed for React/Vue component integration

### Setup Instructions

```bash
# Node.js is installed (v24.16.0)
node --version  # Verify installation

# View MCP configuration
cat .mcp.json   # View current configuration

# All MCP servers are configured and ready to use via claude config
```

---

## 📊 Métricas de Benchmark

---

## 📁 Estrutura do Projeto

```
llm_lab_01/
├── CLAUDE.md                    # Diretrizes do Claude (CRÍTICO!)
├── README.md                    # Este arquivo - update sempre!
├── docs/                        # Documentação completa
│   ├── hardware.md              # Detalhes do hardware
│   ├── llm-specs.md            # Especificações do modelo
│   └── benchmarks.md            # Resultados de benchmarking
├── config/                      # Configurações
│   ├── lmstudio-config.yaml    # Config LM Studio
│   └── inference-config.json   # Config inferência
├── tests/                       # Testes e benchmarks
│   ├── performance_tests/      # Testes de performance
│   └── accuracy_tests/          # Testes de precisão
├── scripts/                     # Scripts utilitários
└── logs/                        # Logs de execução
```

---

## 🚀 Instalação e Setup

### Pré-requisitos

1. **LM Studio**: Baixe em https://lmstudio.ai
2. **Git**: Para versionamento do projeto
3. **GitHub CLI**: Para commits automatizados

### Configuração Inicial

```bash
# Clone o repositório
git clone <repo-url>

# Instale LM Studio e carregue o modelo Qwen/Qwen3.5-9B GGUF
```

---

## 📊 Métricas de Benchmark

Este projeto servirá como benchmark para:

- [ ] **Latência de inferência** - Tempo por token
- [ ] **Throughput** - Tokens/segundo
- [ ] **Qualidade de respostas** - Accuracy em tarefas específicas
- [ ] **Uso de recursos** - CPU/GPU/RAM consumption
- [ ] **Context window performance** - Desempenho com diferentes tamanhos

---

## 📝 Como Contribuir

1. Fork deste repositório
2. Crie um branch para sua feature/teste
3. Faça seus testes e documente resultados
4. Commit e push (lembre-se: commits pequenos!)
5. Abra um pull request

---

## 🏷️ Tags de Status

- `🔬 research` - Experimentos e pesquisa
- `✅ benchmarked` - Testado e documentado
- `⚠️ timeout-risk` - Risco de timeout (> 300s)
- `💻 cpu-only` - Rodando apenas em CPU
- `🎮 gpu-accelerated` - Usando GPU CUDA

---

## 📞 Contato

- **Owner**: F3RL4
- **Repository**: https://github.com/F3RL4/llm_lab_01

---

## ⚖️ License

Este projeto é mantido para fins de benchmark e teste local.

---

## 📊 Status do POC

- ✅ Projeto inicializado com estrutura completa
- ✅ Hardware documentado (Ryzen 5 7640HS + RTX 4050 6GB)
- ✅ Modelo configurado: Qwen3.5-9B GGUF via LM Studio
- ✅ Configurações de inferência definidas
- ✅ Node.js instalado (v24.16.0)
- ✅ MCP Servers conectados e prontos para uso
- ⏳ **Próximo**: Criar testes de benchmark e validação

---

> 💡 **Dica**: Sempre que fizer um commit, verifique se a tarefa atual está dentro do limite de 5 minutos de reasoning!
