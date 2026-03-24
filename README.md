<details><summary>目录</summary><p>

- [1. 模型选择](#1-模型选择)
- [2. Agent 框架选择](#2-agent-框架选择)
- [3. 使用方法总结](#3-使用方法总结)
- [4. 资料](#4-资料)
  - [知识库导航](#知识库导航)
  - [建议阅读顺序](#建议阅读顺序)
  - [资料层级说明](#资料层级说明)
  - [主题资料链接](#主题资料链接)

</p></details>

# 1. 模型选择

1. Anthropic
2. OpenAI
3. MiniMax
4. Kimi
5. DeepSeek
6. QWen

# 2. Agent 框架选择

1. Claude Code
2. Codex
3. OpenClaw

# 3. 使用方法总结

## 3.1 分析一个网页的文章，提取关键信息

1. [一文带你探索性数据分析(EDA)](https://www.jianshu.com/p/9325c9f88ee6)
2. [支持向量机（SVM）是什么意思？](https://www.zhihu.com/question/21094489?sort=created)
3. [Exploratory Data Analysis](https://www.stat.cmu.edu/~hseltman/309/Book/chapter4.pdf)

# 4. 资料

> 当前知识库采用“核心优先 + 官方补全 + 重复合并”的整理策略。对于原始文章中可稳定提炼的内容，做结构化归纳；对于不稳定链接或信息不完整的内容，优先用官方文档、源码仓库、论文或公开镜像补全。

> `docs/` 下 8 个主题目录已统一收敛为“每个主题只保留一个 `README.md`”。本轮已将各主题从结构化综述扩展为专题手册，并为每个主题补充了本地图示资源到 `docs/images/<topic>/`。

## 知识库导航

- [Tools 知识库](docs/tools/README.md)
  Agent 真正“做事”的工具层手册，重点看工具分层、输入输出设计、风险分级与 Scrapling 示例。
- [OpenClaw 知识库](docs/openclaw/README.md)
  适合想把 Agent 接进消息入口、工作区与长期记忆体系的人，重点在 Gateway、部署链路和多工作区演进。
- [Skills 知识库](docs/skills/README.md)
  适合想把经验沉淀为可触发、可评估资产的人，重点在 Skill 生命周期、结构设计和 `skill-creator` 方法论。
- [Claude Code 知识库](docs/claude_code/README.md)
  适合在 Anthropic 生态里做终端闭环开发的人，重点在任务闭环、子代理边界和新手验证模板。
- [Codex 知识库](docs/codex/README.md)
  适合想把 OpenAI 编码代理用到工程任务中的人，重点在 Prompt 结构、`AGENTS.md`、计划模式与验证链路。
- [MCP 知识库](docs/mcp/README.md)
  适合理解 Agent 如何标准化连接外部工具和资源的人，重点在角色模型、生命周期和 `Stdio vs SSE`。
- [Agent 知识库](docs/agent/README.md)
  适合建立 Agent 系统设计心智模型的人，重点在 workflow / agent 区分、评估和失败恢复。
- [RAG 知识库](docs/rag/README.md)
  适合理解知识 grounding 全链路的人，重点在解析、切块、召回、重排、引用和评估。

## 建议阅读顺序

如果你想系统建立 Agent 相关知识，推荐顺序如下：

1. [Agent](docs/agent/README.md)
2. [Tools](docs/tools/README.md)
3. [Skills](docs/skills/README.md)
4. [MCP](docs/mcp/README.md)
5. [Claude Code](docs/claude_code/README.md)
6. [Codex](docs/codex/README.md)
7. [OpenClaw](docs/openclaw/README.md)
8. [RAG](docs/rag/README.md)

如果你更偏开发工作流，可优先读：

1. [Claude Code](docs/claude_code/README.md)
2. [Codex](docs/codex/README.md)
3. [Skills](docs/skills/README.md)
4. [MCP](docs/mcp/README.md)

如果你更偏知识系统与企业应用，可优先读：

1. [RAG](docs/rag/README.md)
2. [Agent](docs/agent/README.md)
3. [Tools](docs/tools/README.md)
4. [MCP](docs/mcp/README.md)

## 资料层级说明

当前知识库中的资料来源，按作用分为四层：

- `官方文档`
  定义产品边界、协议角色、最佳实践和稳定概念，是判断观点是否可靠的第一优先级。
- `源码仓库 / 官方博客 / 论文`
  用来补实现形态、设计动机、系统结构和研究演进，适合校验社区说法。
- `社区教程 / 公开镜像 / 案例文章`
  用来吸收方法论、案例经验、落地顺序和常见误区，但需要去重和交叉验证。
- `本知识库整理内容`
  面向学习与落地，把分散链接重组为“概念 -> 原理 -> 实践 -> 决策 -> 风险”的手册结构。

## 主题资料链接

### Tools

* [Python 爬虫: Scrapling](https://github.com/D4Vinci/Scrapling)

### OpenClaw

* [李宏毅：OpenClaw从入门到精通（不跑路）](https://mp.weixin.qq.com/s/E_meqal4BSb1vkUYIqaSpw?click_id=2)
* [从架构到代码：深入理解 OpenClaw 的双源记忆系统](https://mp.weixin.qq.com/s/Ok3VwXft5fvvNWLBL6r2AA)
* [企业养虾🦞（OpenClaw），虾住在哪里比虾本身重要](https://mp.weixin.qq.com/s/8AVv_qX-yTIEGXW9yEaNnQ)
* [免费开源、可本地部署的AI私人助理Clawdbot，保姆级搭建教程来了](https://mp.weixin.qq.com/s/VMl4VMhZrRo3K6lhw3VkhA?click_id=3)
* [Claude Cowork唱罢，开源Clawdbot登场！](https://mp.weixin.qq.com/s/Eg_RnjePQ4Hxaigd02ycVw?click_id=2)
* [用OpenClaw打造一支24小时无休的AI团队，实战来了！](https://mp.weixin.qq.com/s/xdWnWuwau7lQhR0EQiKTVQ)
* [OpenClaw超级速查表](https://mp.weixin.qq.com/s/BtkR7WJTsrweRr3shXVbFg)
* [我搭了一套国产的小龙虾方案，成本可控，还能 24小时自动干活](https://mp.weixin.qq.com/s/3UPQ-hu2FlmqJtl9EaaqQA)

### Skills

* [搞不懂Skills？看看Claude Code内部工程师们是怎么玩的](https://mp.weixin.qq.com/s/sWsv9XeHRwcs3zchu0dnWw?click_id=4)
* [构建 Claude Code 的经验：我们如何使用 Skills](https://mp.weixin.qq.com/s/PEisnE_CzFbexPZMSgmgJA)
* [OpenAI 官方博客：用技能（Skills）加速开源项目维护](https://mp.weixin.qq.com/s/xiGwSmmJiUK4C8FqPWkiXw)
* [多稿合并：从手动比稿到一键 Skill](https://mp.weixin.qq.com/s/3z1vuDD-nXf1q52YDlejcg)
* [最受欢迎的10个小龙虾🦞 skills安装来了！](https://mp.weixin.qq.com/s/5swkxPGK_6PU3g42EFc19A)
* [一文讲清Skills概念与OpenClaw运作机制](https://mp.weixin.qq.com/s/rN2BIwa8fip3MqnzhjYg2Q)
* [这个🦞技能仓库项目火了！几乎涵盖了所有好用的 Skills](https://mp.weixin.qq.com/s/9R5jQsNUV6ANgBMX3tJGVQ)
* [Agent Skills 终极指南：入门、精通、预测](https://zhuanlan.zhihu.com/p/1992272492392380044?share_code=2ubO4NqsZxWB&utm_psn=2000838846183674669)
* [写 skill 全靠感觉？新版 skill-creator 用数据说话](https://mp.weixin.qq.com/s/_GBXYcjSczDIydG0C2StPA)
* [Anthropic 官方发布的 Skill 完全构建指南](https://mp.weixin.qq.com/s/oGNqoBzDqRVIEEuI7N-g5g?s_trans=%2Fl6pLjKgxqSknvJ3sYGeRQ%3D%3D__s&s_channel=4&scene=1&click_id=3)
* [Claude悄悄更新了Skills生成器，这绝对是一次史诗级升级。](https://mp.weixin.qq.com/s/vjMG8i7DwQ7R2B1C4AVQdA?scene=1&click_id=1)
* [一文带你看懂，火爆全网的Skills到底是个啥。](https://mp.weixin.qq.com/s?__biz=MzIyMzA5NjEyMA==&mid=2647678672&idx=1&sn=c3510896d2de19b5c5ab6805c27182e5&scene=21&poc_token=HOVbwWmjjNigeHfVO-ADr00QWbmC_B1MTA1Wp2j4)

### Claude Code

* [Claude Code 官网文档](https://code.claude.com/docs/en/overview)
* [Claude Code GitHub Changelog](https://github.com/anthropics/claude-code/blob/main/CHANGELOG.md)
* [Claude Code in Action](https://anthropic.skilljar.com/claude-code-in-action)
* [Claude Code 最佳实践 - Claude Code Docs](https://code.claude.com/docs/zh-CN/best-practices)
* [从零搓出一个Claude Code，一篇超详细的总结！](https://mp.weixin.qq.com/s/lspwTyzxUnpbw1eHIoqluw)
* [OpenClaw + Claude Code 超强教程：一个人就能搭建完整的开发团队！](https://mp.weixin.qq.com/s/gtxM1f3JmfXqDuxGIa3-ng?click_id=1)
* [分享10个你可能不知道的Claude Code隐藏命令](https://mp.weixin.qq.com/s/XopaISgwzSgoqZctym_Ajg?scene=1)
* [Claude编程的42个实战技巧大全](https://mp.weixin.qq.com/s/_3EFVhVwAKXjatG7e7mOpg)

### Codex

* [Codex 官网文档](https://developers.openai.com/codex)
* [Codex Best Practices](https://developers.openai.com/codex/learn/best-practices)
* [codex可以100%正式接管所有编程工作了吗？](https://www.zhihu.com/question/1999136031413384196/answer/2001285971312940749)

### Agent

* [万字长文深入浅出教你优雅开发复杂AI Agent](https://mp.weixin.qq.com/s/-EVLZLMeJpfRGIZbYOPFbg)

### MCP

* [Smithery - Connect agents to MCPs in minutes](https://smithery.ai)
* [6000字+6个案例：写给普通人的MCP入门指南](https://mp.weixin.qq.com/s/BjsoBsUxCzeqXZq46_nrog)
* [用 MCP 让大模型自动批量解读文献，保姆级教程来了！](https://mp.weixin.qq.com/s/VWlntkxCtB-FLzAistng_w)
* [liaokongVFX/MCP-Chinese-Getting-Started-Guide](https://github.com/liaokongVFX/MCP-Chinese-Getting-Started-Guide)
* [MCP协议详解：一文读懂跨时代的模型上下文协议](https://mp.weixin.qq.com/s/1mwSSSHzkOrYUoaFdG0qJw)
* [7000字详解火爆全网的Claude 模型上下文协议 (MCP)](https://mp.weixin.qq.com/s/cgZoVD0WgmT03VcHlo10dg)
* [最近爆火的MCP(Model Context Protocol)，读这一篇就够了](https://mp.weixin.qq.com/s/ULxokHOn4zVOgiLHf9DQUA)
* [What is the Model Context Protocol (MCP)?](https://modelcontextprotocol.io/docs/getting-started/intro)
* [Introducing the Model Context Protocol](https://www.anthropic.com/news/model-context-protocol)
* [详解 MCP 连接生命周期](https://mp.weixin.qq.com/s/lJHiT-iaecqhcR55fz4G1Q)
* [详解 MCP 传输机制](https://mp.weixin.qq.com/s/gmgo_glOzbvdFwePP1yQ9g)
* [Dive](https://github.com/OpenAgentPlatform/Dive?tab=readme-ov-file#mcp-tips)
* [MCP Servers](https://mcp.so)
* [MCP 广场 · 魔搭社区](https://www.modelscope.cn/mcp)

### RAG

* [OpenRAG Base Chinese Introduction(中文介绍)](https://openrag.notion.site/OpenRAG-Base-Chinese-Introduction-299807c528bc46d9af0d9060dcd46f6b)
* [RAGFlow](https://ragflow.io)
* [【RAG】文本切块新方法Late Chunking，原理及中文实践](https://mp.weixin.qq.com/s/V_4Sxkh01Q-hrBXrv61IFw)
* [行业落地分享：腾讯混元RAG/Agent落地实践](https://mp.weixin.qq.com/s/QvJGDb_8KoKO0PGSVi2wlA)
* [【RAG】如何炼成强大的向量召回模型](https://mp.weixin.qq.com/s/pUE6XRTmbp-xjuBwdnh7OA)
* [RAG全链路的关键模块解析](https://mp.weixin.qq.com/s/BWtUlOQQuzdLXSC63YIO4w)
* [sdiehl/tiny-graphrag](https://github.com/sdiehl/tiny-graphrag)
* [Nipi64310/RAG-Book](https://github.com/Nipi64310/RAG-Book)
* [ragflow deepdoc 中文说明](https://github.com/infiniflow/ragflow/blob/main/deepdoc/README_zh.md)
* [A Comprehensive Review of Retrieval-Augmented Generation (RAG)](https://arxiv.org/pdf/2410.12837)
