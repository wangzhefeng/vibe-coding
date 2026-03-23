# Codex 任务交接文档

## 1. 任务目标

基于项目根目录 `README.md` 中 `# 4.资料` 的链接，为以下 8 个主题整理知识库，并输出到 `docs/` 下对应主题目录的 `README.md` 中：

- tools
- openclaw
- skills
- claude code
- codex
- mcp
- agent
- rag

### 输出要求

1. 输出格式为 Markdown 文件；
2. 每个主题目录下最终保留一个 `README.md`；
3. 若该主题目录中已有其他 Markdown 文档，需要先解析其内容，再合并补充进 `README.md`；
4. 合并完成后，删除各主题目录下除 `README.md` 之外的其他 Markdown 文件；
5. 如需保存图片，放到 `docs/images/<topic>/` 下并在文中引用；
6. 每次更新项目后，同步更新项目根目录 `README.md`。

## 2. 内容整理策略

本任务已经确认采用以下策略：

- `核心优先`：优先提炼高价值内容，不做逐链接机械摘抄；
- `重复合并`：多篇文章中重复观点统一归纳；
- `官方补全`：原始文章不可访问、信息不完整或容易失真时，用官方文档、源码仓库、论文等一手资料补全；
- `中文输出`：所有对用户可见的整理内容统一使用简体中文；
- `结构统一`：每篇主题 README 至少包含以下部分：
  - 知识介绍
  - 知识原理
  - 知识实践
  - 相关资源
  - 其他重要内容 / 补充内容

## 3. 用户原始要求中的关键点

### 3.1 解析微信公众号文章并完善内容

不是只保留链接，而是要把公众号文章中的：

- 方法论
- 案例经验
- 实践路径
- 常见误区
- 适用边界

整理并融入对应主题知识库。

### 3.2 处理 docs 目录中已有旧文档

需要继续解析 `docs/` 各主题目录中已有的其他 Markdown 文件（除 `README.md` 外），把有效内容吸收进新的 `README.md`，最后清理旧 Markdown 文件，只保留 `README.md`。

## 4. 已完成内容

当前 Windows 机器上的 Codex 已完成以下工作：

### 4.1 已新建/更新的文件

- `docs/tools/README.md`
- `docs/openclaw/README.md`
- `docs/skills/README.md`
- `docs/claude_code/README.md`
- `docs/codex/README.md`
- `docs/mcp/README.md`
- `docs/agent/README.md`
- `docs/rag/README.md`
- 项目根目录 `README.md`

### 4.2 已完成的主题知识库首版整理

已为 8 个主题建立了统一结构的知识库 README，内容以“概念 -> 原理 -> 实践 -> 资源 -> 补充”为主线。

### 4.3 已继续增强的主题

以下 5 个主题已经补充了一轮“微信公众号文章解析与完善”：

- `docs/openclaw/README.md`
- `docs/skills/README.md`
- `docs/claude_code/README.md`
- `docs/mcp/README.md`
- `docs/rag/README.md`

这些增强主要加入了：

- 微信文章的共识总结
- 实践经验归纳
- 社区常见工作流
- 更适合知识库保留的方法论
- 可交叉验证的公开镜像/官方资料

### 4.4 根 README 已更新

项目根目录 `README.md` 已补充：

- 知识库导航入口
- 资料整理策略说明
- 已说明采用“核心优先 + 官方补全 + 重复合并”
- 已说明继续补充了微信公众号文章内容

## 5. 当前尚未完成的事项

Mac 上的 Codex 接手后，请继续完成这些内容：

### 5.1 继续增强剩余主题

以下主题目前仍主要是首版结构化整理，可以继续补公众号/社区经验：

- `tools`
- `codex`
- `agent`

### 5.2 扫描 docs 下已有旧 Markdown

需要实际扫描：

- `docs/tools/`
- `docs/openclaw/`
- `docs/skills/`
- `docs/claude_code/`
- `docs/codex/`
- `docs/mcp/`
- `docs/agent/`
- `docs/rag/`

检查每个主题目录中是否存在除 `README.md` 外的其他 `.md` 文件。

### 5.3 合并旧 Markdown 内容

对每个旧 Markdown：

- 读取内容
- 判断哪些内容有价值
- 去重
- 将有价值内容并入对应主题 `README.md`
- 保留统一结构与术语风格

### 5.4 清理旧 Markdown

在确认内容已合并后：

- 删除各主题目录下除 `README.md` 外的其他 Markdown 文件
- 最终每个主题目录下只剩 `README.md`

### 5.5 README 收尾

合并清理完成后，重新检查并更新项目根目录 `README.md`，确保：

- 导航正确
- 资料说明准确
- 如目录结构变化，说明同步更新

## 6. 已有内容的质量与风格约束

继续写作时请遵守：

- 保持简体中文；
- 不要把知识库写成“链接摘抄”；
- 优先写“能帮助理解与落地的知识”；
- 避免长篇直接引用原文；
- 优先使用概述、归纳、流程化表达；
- 适当补充 Mermaid 图；
- 若补图，统一存放到 `docs/images/<topic>/`；
- 不做无关重构；
- 保持每篇文档结构一致，避免风格漂移。

## 7. 已参考或建议继续参考的资料类型

### 7.1 官方 / 一手资料优先

在无法稳定访问原始链接时，优先参考：

- 官方文档
- GitHub 官方仓库
- 官方 changelog / release
- 研究论文
- 官方博客 / 公告

### 7.2 已在内容中用到的公开资料方向

包括但不限于：

- OpenClaw Docs / GitHub
- Claude Code Docs / GitHub / Releases
- OpenAI Codex Docs / OpenAI 博客
- MCP 官方文档 / Anthropic 公告
- RAGFlow / OpenRAG / RAG 综述论文
- 一些公众号文章的公开镜像或转译页

## 8. 该线程中的环境问题（重要）

Windows 上当前 Codex 线程无法继续执行本地命令，原因如下：

- `shell_command` 工具调用全部失败；
- 失败点发生在 PowerShell 启动阶段，而不是具体命令执行阶段；
- 新线程中也复现；
- 错误中持续出现 `8009001d`；
- 因此无法安全扫描 `docs/` 目录，也无法完成旧文档合并和文件删除。

### 已确认事实

- 在系统终端里执行 `powershell -Command "Get-Location"` 是成功的；
- 说明系统 PowerShell 本体未必损坏；
- 更像是 Codex Windows 当前会话/桥接层问题；
- 因此建议转移到 Mac 上继续执行剩余任务。

## 9. Mac 上接手时建议的首个执行步骤

1. 打开仓库；
2. 读取：
   - 本文件 `handoff_codex.md`
   - 项目根目录 `README.md`
   - `docs/` 下各主题目录现有 Markdown
3. 先扫描 `docs/` 下各主题目录中除 `README.md` 外的所有 Markdown 文件；
4. 列出计划合并和删除的文件；
5. 逐主题完成：
   - 内容吸收
   - README 补强
   - 旧 Markdown 删除
6. 更新根目录 `README.md`
7. 最后输出：
   - 变更文件
   - 核心改动
   - 验证命令与结果
   - 风险与后续建议

## 10. 可直接给 Mac 上 Codex 的提示词

请先阅读：
1. `handoff_codex.md`
2. 项目根目录 `README.md`
3. `docs/` 下各主题目录中的现有 Markdown 文档

然后继续执行以下任务：

- 继续完善 `tools/openclaw/skills/claude_code/codex/mcp/agent/rag` 8 个主题的知识库；
- 重点吸收微信公众号文章中的方法论、案例经验与实践主线；
- 解析 `docs/` 各主题目录下除 `README.md` 之外的其他 Markdown 文档，将有效内容合并进对应 `README.md`；
- 最终各主题目录下只保留 `README.md`；
- 同步更新项目根目录 `README.md`。

要求：

- 使用简体中文；
- 采用“核心优先 + 官方补全 + 重复合并”；
- 先扫描并汇报将合并/删除哪些 Markdown 文件，再执行；
- 完成后输出：
  - 变更文件
  - 核心改动
  - 验证命令与结果
  - 风险与后续建议
