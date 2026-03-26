# CLAUDE.md

本文件为 Claude Code (claude.ai/code) 在此仓库中工作时提供指引。

## 概述

本仓库是面向"Vibe Coding"工作流的知识库与 AI 工具配置仓库。包含 8 个 AI/Agent 主题的结构化手册、多个 AI 编码代理（Claude Code、Codex、OpenClaw）的配置模板、技能模板以及模型切换脚本。本仓库没有需要构建或测试的传统应用代码。

仓库通过 `uv` 管理为 Python 3.12 项目，包含数据科学依赖（numpy、pandas、scikit-learn 等），但这些依赖当前未被仓库中任何源码实际使用。

## 常用命令

```bash
# 安装/同步依赖
uv sync

# 激活虚拟环境
source .venv/bin/activate  # Unix
.venv\Scripts\activate     # Windows
```

本仓库没有构建、代码检查或测试命令——内容以文档为主。

## 仓库结构

- `docs/` — 8 个主题知识手册，每个主题仅一个 `README.md`，配套 SVG 图示存放在 `docs/images/<topic>/`。主题包括：`agent/`、`claude_code/`、`codex/`、`mcp/`、`openclaw/`、`rag/`、`skills/`、`tools/`
- `claude_code_config/` — Claude Code 工作区配置，含技能模板和 `.claude/skills/` 目录结构
- `codex_config/` — Codex 工作区配置，含中文 `AGENTS.md`、Agent YAML 定义、MCP 文档、子代理模式
- `skills/` — 技能模板与教程，包含 `wangzf-skills/uv_pyenv/`（一个可用的 uv 环境管理技能）
- `model_change/` — 将 Claude Code 的 API 路由到替代供应商的 Shell 脚本（DeepSeek、MiniMax）
- `scripts/` — HAPI 启动脚本，用于多代理 tmux 会话
- `README.md` — 导航枢纽，链接所有知识手册并附推荐阅读顺序

## 约定

- 知识手册遵循统一结构：引言 → 原理 → 实践 → 资源 → 其他重要内容
- 内容策略："核心优先 + 官方补全 + 重复合并"——优先使用官方文档和源码仓库，而非社区文章
- 所有手册内容使用**简体中文**编写
- `codex_config/` 中的 `AGENTS.md` 以中文定义了 Codex 协作规范
- 技能模板遵循以下结构：`SKILL.md`（定义）+ `agents/`（YAML 配置）+ `scripts/`（实现脚本）+ `assets/` + `references/`

## 模型切换脚本

在启动 Claude Code 前，通过以下脚本将请求路由到替代供应商：

```bash
source model_change/deepseek.sh && claude    # DeepSeek
source model_change/minimax-m2.sh && claude   # MiniMax
```

## HAPI 远程开发

`scripts/hapi_vibe_coding_setup.md` 描述了三设备架构：MacBook（AI 开发节点）→ 阿里云（HAPI Hub 中继）→ iPhone（Telegram/Web 控制端）。`scripts/hapi-vibe-up.sh` 用于在 tmux 面板中启动多个 AI 代理。

## 语言

本仓库所有文档和配置内容均为简体中文。技能脚本中的代码注释可能使用英文。
