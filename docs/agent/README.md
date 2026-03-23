# Agent 知识库

“Agent” 是近两年 AI 工程里的核心概念之一，但它也是最容易被过度营销、概念泛化的词。本文重点解释：什么是 Agent、什么时候该用、怎样构建才稳。

## 1. 知识介绍

### 1.1 什么是 Agent

结合 Anthropic 的工程文章与当前主流实践，Agent 可以理解为：具备目标驱动、工具调用、环境反馈与多步执行能力的 LLM 系统。

与普通单轮问答相比，Agent 更强调：

- 不只回答，而是执行；
- 不只一次推理，而是多步闭环；
- 不只靠上下文记忆，还依赖工具、检索、状态与反馈。

### 1.2 Workflow 与 Agent 的区别

Anthropic 对两者做了很有价值的区分：

- `Workflow`：模型和工具按照预定义代码路径运行；
- `Agent`：模型在执行中动态决定步骤与工具使用方式。

这一区分非常重要，因为很多所谓 Agent，实际上只是“带几个节点的工作流”。

### 1.3 什么时候适合用 Agent

更适合：

- 步骤数无法提前写死；
- 需要边执行边判断；
- 有明确成功标准；
- 能获得环境反馈；
- 容许一定成本和时延换更高完成度。

不太适合：

- 单次提示就能完成的任务；
- 对时延极度敏感的任务；
- 风险很高但缺乏约束与审计的场景。

## 2. 知识原理

### 2.1 Agent 的基础构件

一个常见 Agent 由以下部分组成：

- `LLM`：负责理解、规划、决策；
- `Tools`：负责读写外部世界；
- `Memory / State`：保存任务状态或长期信息；
- `Retriever`：在需要时取回上下文；
- `Loop`：根据反馈不断迭代；
- `Guardrails`：做权限、安全、停止条件控制。

### 2.2 常见模式

Anthropic 总结了多种常见 agentic pattern：

- Prompt chaining；
- Routing；
- Parallelization；
- Orchestrator-workers；
- Autonomous agents。

实践上，很多高质量系统并不是一上来就做全自治 Agent，而是先从更简单的 workflow 起步，再逐渐提高自主性。

### 2.3 Ground Truth 为什么重要

Agent 要想稳定，必须不断从环境拿到真实反馈，例如：

- 工具返回结果；
- 命令执行输出；
- 测试结果；
- API 返回值；
- 用户确认。

没有 ground truth 的 Agent，往往只是“连续猜测”。

## 3. 知识实践

### 3.1 构建顺序建议

1. 先把单轮 prompt 做到可用；
2. 再加入 retrieval / tools；
3. 再做 workflow；
4. 最后在必要时引入更高自治的 agent loop。

这是比“一上来就堆多代理框架”更稳妥的路径。

### 3.2 适合落地的典型场景

- 编码代理；
- 客服与工单处理；
- 文档研究与汇总；
- 数据分析与报表操作；
- 需要跨工具执行的办公自动化。

### 3.3 最佳实践

- 从简单方案开始，复杂度只在确有收益时增加；
- 给工具写清晰、明确、带边界的说明；
- 为 Agent 设置停止条件、预算与回退策略；
- 保持执行可观测：日志、状态、阶段结果都要能看见；
- 高风险动作引入人工审批。

### 3.4 常见坑

- 把“多轮调用”误当成真正 Agent；
- 过早引入重框架，调试困难；
- 工具定义模糊，模型经常误用；
- 没有评估指标，只看演示效果；
- 没有权限边界，导致副作用风险。

## 4. 相关资源

### 4.1 官方 / 一手资料

- [Anthropic: Building Effective AI Agents](https://www.anthropic.com/research/building-effective-agents/)
- [Anthropic: Building agents with the Claude Agent SDK](https://www.anthropic.com/engineering/building-agents-with-the-claude-agent-sdk/)

### 4.2 根目录资料入口

- `README.md` 中 `# 4.资料 > Agent`

## 5. 其他重要内容

### 5.1 Agent 的核心不是“自动”，而是“闭环”

真正决定成败的通常不是模型是否能“想”，而是系统是否具备：

- 可靠工具；
- 真实反馈；
- 清晰目标；
- 约束与停止机制；
- 评估与复盘。

### 5.2 多代理不是默认更好

多代理能提高并行与分工能力，但也会带来：

- 协调开销；
- 状态同步成本；
- 结果整合复杂度；
- 故障定位难度。

因此应基于任务结构决定，而不是基于流行概念决定。

### 5.3 参考来源

- 官方：Anthropic 的 agent 工程文章
- 社区：根目录 `README.md` 中列出的 Agent 长文
