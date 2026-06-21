# Qwen Chatbot Assistant - Épicos e User Stories 🚀

## 📖 Sobre este Documento

Este documento contém todos os épicos e user stories para o desenvolvimento do **Chatbot Multi-Purpose** com:
- **Frontend**: Aceternity UI (React + animações impressionantes)
- **Backend**: Python FastAPI (conectado ao LM Studio API)
- **Modelo**: Qwen3.5-9B GGUF

### 📋 Como usar este documento

1. **Leia os épicos** para entender o escopo de cada funcionalidade
2. **Crie Issue no GitHub** para cada Epic (referência: `EPICS.md`)
3. **Desenvolva as USs** em ordem, fechando issues conforme progresso
4. **Atualize sprint-status.yaml** após cada etapa

---

## 🎯 Objetivo do Projeto

Criar um **Chatbot Multi-Purpose** que demonstre as capacidades do Qwen3.5-9B com:
- Interface moderna e impressionante usando Aceternity UI
- Backend robusto em Python FastAPI
- Integração com LM Studio para inferência local
- Dashboard de métricas em tempo real (benchmarking)
- Capacidades expandíveis via MCP servers

---

## 🏗️ Arquitetura do Sistema

```
┌─────────────────────────────────────────────────────┐
│                    Frontend                         │
│              (Aceternity UI + React)                │
│  ┌─────────────┬─────────────┬───────────────────┐  │
│  │   Chat      │  Dashboard  │   Configurações   │  │
│  │   Interface  │   Métricas  │                   │  │
│  └─────────────┴─────────────┴───────────────────┘  │
└─────────────────────────────────────────────────────┘
                    ↓ HTTP/WebSocket
┌─────────────────────────────────────────────────────┐
│                  Backend                            │
│              (Python FastAPI)                       │
│  ┌─────────────┬─────────────┬───────────────────┐  │
│  │   /api/chat │ /metrics    │ /health           │  │
│  │   Streaming  │  Endpoint   │  Check           │  │
│  └─────────────┴─────────────┴───────────────────┘  │
└─────────────────────────────────────────────────────┘
                    ↓ LM Studio API
┌─────────────────────────────────────────────────────┐
│                 Model Layer                         │
│           Qwen3.5-9B (GGUF via LM Studio)          │
│         GPU: RTX 4050 (6GB VRAM) + CPU             │
└─────────────────────────────────────────────────────┘
```

---

## 📋 Como usar este documento

1. **Leia os épicos** para entender o escopo de cada funcionalidade
2. **Crie Issue no GitHub** para cada Epic (referência: `EPICS.md`)
3. **Desenvolva as USs** em ordem, fechando issues conforme progresso
4. **Atualize sprint-status.yaml** após cada etapa

---

## ⏰ Importante: Timeout de 5 Minutos

Devido às limitações do hardware (RTX 4050 + Ryzen 7640HS), **todas as tarefas devem ser desmembradas em partes menores**:
- ✅ Commit frequente após cada etapa
- ✅ Push ao GitHub após cada commit  
- ⏱️ Max reasoning time: 300 segundos
- 📝 Regra de documentação: Toda alteração = Update README + docs

---


---
