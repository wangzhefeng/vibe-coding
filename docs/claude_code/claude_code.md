<details><summary>目录</summary><p>

- [Anthropic: Claude Code](#anthropic-claude-code)
    - [Claude Code 安装](#claude-code-安装)
        - [Agent 安装](#agent-安装)
        - [Agent 使用](#agent-使用)
- [Anthropic: Cowork](#anthropic-cowork)
</p></details>

# Anthropic: Claude Code

Claude Code 官方推出的[入门课程](https://anthropic.skilljar.com/claude-code-in-action)，免费！有空补学习一下

内容包括：

1. 使用 Claude Code 的核心工具进行文件操作、命令执行和代码分析。
2. 通过 `/init`、`Claude.md` 文件以及 (`@`) 引用来高效管理上下文。
3. 利用多种快捷键和命令来控制对话流程。
4. 在需要更深入分析的复杂任务中启用 Plan Mode 和 Thinking Mode。
5. 创建自定义命令，用于自动化重复性的开发工作流。
6. 通过 MCP 服务器扩展 Claude Code，引入浏览器自动化等能力。
7. 配置 GitHub 集成，实现自动化的 PR 审查和 Issue 处理。
8. 编写 hooks，为 Claude Code 添加额外的行为和能力。

## Claude Code 安装

### Agent 安装

世界顶级的 Claude Code Sub Agents，这里全是“生产环境可用”(production-ready) 的 Claude Code Sub Agents。
以下是直接要求 Claude Code 帮我们安装：

```
https://github.com/wshobson/agents 
把这些Agents 全部安装到我的 ClaudeCodeClI 里, 跳过重复的
```

### Agent 使用

1. 在 Claude Code 完成复杂任务时，充分调度专业对口的 Agent 来协助完成任务，可以最大程度节省我们的时间、
   提升代码质量、提升有效产出。唯一的副作用是耗时太长，不推荐。

```
用尽量多的 Agent 检查我们的项目, 只检查, 不修改代码
```

1. 在正常的使用场景中，我们可以先让 Claude Code 判断，某个具体任务、到底需要用到哪些专业对口的 Agent？
   先给出 Agents 调度方案，我们确认或者补充后，再执行。

```
我想要分析我们当前项目的算法性能，你建议我们使用哪些 Agents 来做？先和我讨论 Agents 调度方案，和我确认后，再执行。
```



# Anthropic: Cowork

* [Getting started with Cowork](https://support.claude.com/en/articles/13345190-getting-started-with-cowork)

