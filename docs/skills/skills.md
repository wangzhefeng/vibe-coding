<details><summary>目录</summary><p>

- [Anthropic: Claude Skills](#anthropic-claude-skills)
    - [什么是 Skills](#什么是-skills)
    - [Skill 介绍](#skill-介绍)
        - [Skills 是什么：从概念来源到运作原理](#skills-是什么从概念来源到运作原理)
        - [如何理解 Skill](#如何理解-skill)
    - [Skill 使用](#skill-使用)
        - [安装 Claude Code](#安装-claude-code)
        - [Claude Code 模型](#claude-code-模型)
            - [MiniMax-M2 模型](#minimax-m2-模型)
        - [安装并使用 Skills](#安装并使用-skills)
        - [如何找到好用的 Skills ?](#如何找到好用的-skills-)
    - [制作 Skill](#制作-skill)
    - [什么时候应该用 Skills](#什么时候应该用-skills)
        - [1.发现自己在向 AI 反复解释同一件事](#1发现自己在向-ai-反复解释同一件事)
        - [某些任务需要特定知识、模板、材料才能做好](#某些任务需要特定知识模板材料才能做好)
        - [发现一个任务要多个流程协同完成](#发现一个任务要多个流程协同完成)
    - [资料](#资料)
</p></details>

# Anthropic: Claude Skills

## 什么是 Skills


## Skill 介绍

> 巧借通用 Agent 内核，只靠 Skills 设计，就能低成本创造具有通用 AI 智能上限的垂直 Agent 应用。
> 
> 一个好 Skill 能发挥的智能效果，甚至能轻松等同、超越完整的 AI 产品。任何不懂技术的人，都能开发属于自己的 Skills。

### Skills 是什么：从概念来源到运作原理

2025 年 10 月中旬，Anthropic 正式发布 Claude Skills。
两个月后，Agent Skills 作为开放标准被进一步发布，意在引导一个新的 AI Agent 开发生态。
OpenAI、Github、VS Code、Cursor 均已跟进。

为了更好的理解，你可以把 Skills 理解为“通用 Agent 的扩展包”：
Agent 可通过加载不同的 Skills 包，来具备不同的专业知识、工具使用能力，稳定完成特定任务。

最常见的疑惑是：这和 MCP 有什么区别？

* MCP 是一种开放标准的协议，关注的是 AI 如何以统一方式调用外部的工具、数据和服务，本身不定义任务逻辑或执行流程。
* Skill 则教 Agent 如何完整处理特定工作，它将执行方法、工具调用方式以及相关知识材料，
  封装为一个完整的能力扩展包，使 Agent 具备稳定、可复用的做事方法。

以 Anthropic 官方 Skills 为例：

* `PDF`：包含 PDF 合并、拆分、文本提取等代码脚本，教会 Agent 如何处理 PDF 文件 - 提取文本，
  创建新的 PDF、合并或拆分文档。
* `Brand-guidelines`：包含品牌设计规范、Logo 资源等，Agent 设计网站、海报时，
  可参考 Skill 内的设计资源，自动遵循企业设计规范。
* `Skill-Creator`：把创建 Skill 的方法打包成元 Skill，让 AI 发起 Skill 创建流程，
  引导用户创建出符合需求的高水准 Skill。

但 Skills 的价值上限，远不止于此。它应该是一种极其泛用的新范式，从垂直 Agent 到 AI 产品开发：
借用通用 Agent 内核，零难度创造具备通用 AI 智能的垂直 Agent 应用。

### 如何理解 Skill

Anthropic 说：Skills 是模块化的能力，扩展了 Agent 的功能。
每个 Skill 都打包了 LLM 指令、元数据、可选资源（脚本、模板等），
Agent 会在需要时自动使用他们。

更直观的解释：Skill 就像给 Agent 准备的工作交接 SOP 大礼包。想象你要把一项工作交给新同事，若不准口口相传，
只靠文档交接（而且你想一次性交接完成，以后不被打扰），你会准备什么？

* 任务的执行 SOP 与必要背景知识（这件事大致怎么做）
* 工具的使用说明（用什么软件、怎么操作）
* 要用到的模板、素材（历史案例、格式规范）
* 可能遇到的问题、规范、解决方案（细节指引补充）

Skill 的设计架构，几乎是交接大礼包的数字版本：

![img](images/skill2.png)

在 Skill 中，指令文档用于灵活指导，代码用于可靠性调用，资源用于事实查找与参考。

当 Agent 运行某个 Skill 时，就会：

1. 以 `SKILL.md` 为第一指引
2. 结合任务情况，判断何时需要调用代码脚本（`scripts`）、翻阅参考文档（`references`）、使用素材资源（`assets`）
3. 通过“规划-执行-观察”的交错式反馈循环，完成任务目标

当然，Skill 也可以用来扩展 Agent 的工具、MCP 使用边界，通过文档与脚本，
也可以教会 Agent 连接并使用特定的外部工具、MCP 服务。

## Skill 使用

### 安装 Claude Code



```bash
$ claude --version
```

### Claude Code 模型

现在大部分国产模型都已经支持了 Skill 的使用与创建。

#### MiniMax-M2 模型

替换 MiniMax-M2 模型，可以在终端内输入：

```
# minimax-m2.sh
export ANTHROPIC_BASE_URL=https://api.minimaxi.com/anthropic
export ANTHROPIC_AUTH_TOKEN=【换成你的 API KEY】
export ANTHROPIC_SMALL_FAST_MODEL=MiniMax-M2
export ANTHROPIC_DEFAULT_SONNET_MODEL=MiniMax-M2
export ANTHROPIC_DEFAULT_OPUS_MODEL=MiniMax-M2
export ANTHROPIC_DEFAULT_HAIKU_MODEL=MiniMax-M2
claude
```

该操作在当前终端窗口中，将要用的模型临时改为目标模型。关掉该窗口后，则需再次发送该命令，重新指定模型 API 与 Key。

> MiniMax Coding Plan 的 API Key，
> 可以到 https://platform.minimaxi.com/user-center/payment/coding-plan 获取。
> 
> Coding Plan 总共有 3 档，分别是 9.9（首月）/49/119 ，每 5 小时提供 40/100/300 次 Prompt 额度。
> 大概是 Claude 原本模型的 8% 价格，整体 TPS > 100，实际体感生成速度很快。
> 
> 开始前记得在这里订阅套餐 https://platform.minimaxi.com/subscribe/coding-plan
>
> 轻量任务选 Starter 就行。
>
> M2 宣称有极强的长文本处理，以及在复杂任务中的自我纠错和任务恢复能力。


### 安装并使用 Skills

> - (1) 正式使用 Claude Code 之前，建议在任意目录下创建一个空文件夹，比如叫test，再在终端内切换到对应文件目录；
> - (2) 然后在终端输入 `claude`，就可以启动 CC 了；
> - (3) 这一步能把 Claude Code 的后续 AI 行为，都局限在该目录，减小对本地电脑其他文件的影响。

1. 在安装 Skill 之前，你需要先获取需要的 Skill 文件包。
    - 比如官方 Skills 仓库：https://github.com/anthropics/skills/tree/main，里面就有很多已经做好的 Skills。
    - 你可以让 Claude Code 替你自动安装 Skill，比如在 CC 中发送 `安装 skill，skill 项目地址为：<skill 项目地址>`。
2. 也可以手动下载 Skill，把文件包解压后，放在 skills 安装目录下：
    - 可以在当前项目文件夹的 `/.claude/skills/` 目录下，放入要安装的 skill 文件包

    ![img](images/skill1.png)

    - 也可以选择全局目录 `~/.claude/skills/`（所有项目都能共享放在全局目录的 Skill）
3. 完成安装后，记得重启 Claude Code 退出终端再打开就行，或者双击 `ctrl+c` 终止 Claude Code 进程）
4. 要使用 Skill 时，
    - 只要在装好后的 Claude Code 中，发送 `开始使用 <skill 名称>`；
    - 或者用户消息与 skill 元数据的描述匹配，就能自动调用 Skills，执行任务。

### 如何找到好用的 Skills ?

在面向 to C 用户（也就是自己日常使用）时，以上的方法有两个问题：

1. 使用步骤确实比日常的 APP 复杂不少
2. 比较难找到想用的 Skills

**常规方法** 是找规模比较大的第三方 Skills 市场：https://skillsmp.com/zh。
但不难发现，现有大部分的 Skills 公开市场，没有完善的评价和精选体系，
所有 Skill 缺少合理的分类与排序机制，导致很难找到需要的 Skills。
可以看到仅靠 star 排序，是非常难找到合适的精选 Skill 的。

**Mulerun** 最近就在研究解决这个问题，

* 在打造全球性的 Agent 市场，支持创作者在平台上开发并上架 Skill、N8N 等形式的 AI Agent
* 会帮助 Agent 创作者做全球分发、增长（类似 Agent 向的 APP Store），且上架 Mulerun 后，
  Agent 能被其他用户付费使用
* Mulerun 也即将支持 Agent Skills 生态，还会有个好功能：
  一键运行并测试 github 上公开的 skill repo（也就是省掉了 Claude Code 那样配置 Skill 的步骤）
* 另外，还会引入自动评分、精选的 Skills 发现机制，帮助用户能够更好地找到自己需要的优质 Skills

## 制作 Skill

如果你按照上文，学会了 Skill 安装与使用，那制作第一个 Skill 将会无比容易。
我们需要用到 Anthropic 官方的一个 skill：`skill-creator`
顾名思义，用来帮你自动开发 Skill 的 Skill。

1. 首先是安装 `skill-creator`，
   skill 项目地址在：https://github.com/anthropics/skills/tree/main/skills/skill-creator，
   安装过程请 Claude Code 来帮忙自动安装：

```bash
$ 安装 skill, skill 项目地址为：https://github.com/anthropics/skills/tree/main/skills/skill-creator
```

2. 安装完成后，即可调用 skill-creator 自动创建需要的 skill。比如，发送创建需求给 Claude Code：
    - `创建新的 skill，能自动吧用户指定的 pdf 转成 word 文档`，
      Claude Code 自动调用 `skill-creator`，编写 `SKILL.md` 与 `pdf2word 脚本`
    - `创建 skill，能按照我写文章的行文风格写文章`
    - `创建 skill，能自动整理近期 XX 领域的新闻日报`
3. 安装自己做好的 skill
    - 上述方式做出来的 skill，会默认是 `xx.skill` 格式，会与 zip 或文件夹格式略有区别。
      是 `skill-creator` 创建的 skill 压缩格式。直接使用 Claude Code 安装即可；
        - `安装 skill，地址：...`
    - 如果是文件夹或者 zip，那就按上文的介绍，手动解压放到对应 skills 目录即可。

## 什么时候应该用 Skills

什么场景值得“用 Skill 来解决”、“开发一个 Skill”？
这个问题对于普通用户优化 AI 工作流程，开发者找 Skills Agent 创业机会，同样重要。
根据 Anthropic 官方博客建议，与实际理解，梳理了 3 种明显的时机：

### 1.发现自己在向 AI 反复解释同一件事

最典型的信号是：为了完成某个任务，在多轮对话中，需要不断向 AI 解释一件事应该怎么做。

比如：

```
“帮我写一份技术文档”
“不对，我们公司的技术文档格式是这样的……”
“还有，代码示例要按这个模板来……”
“上次不是说了吗，章节标题要三级标题……”
“帮我分析这个数据”
“先把 ＞ XX 的异常值筛掉”
“不对，应该用中位数，不是平均值”
“图表要按我们公司文档的配色方案……”
```

这时候就该想到：与其每次都解释一遍，不如把这些规则打包成一个 Skill，一次创建永久复用。

### 某些任务需要特定知识、模板、材料才能做好

有时候是 AI 的通用能力够了，但缺“特定场景的知识材料”。

典型场景：

* 技术文档写作：需要参考代码规范、术语表，使用文档模板
* 品牌设计：需要参考品牌手册、色彩规范，使用 Logo 资源
* 数据分析：需要参考指标定义、计算公式，使用报表模板……

这些都是 `通用 Agent + 垂直知识` 的典型场景：人提供材料，Agent 才能具备场景 Context。

在 Skill 包里放对应的知识材料，比如把模板、规范、案例放到 Skill 的 `assets/`、`reference/` 目录，
或者直接描述在 `SKILL.md` 中，Agent 就能一次性输出符合任务需要的精准结果。

### 发现一个任务要多个流程协同完成

有些任务更加复杂，往往需要“组合多个流程”才能完成。

* 竞品分析报告：检索竞品数据 + 数据分析 + 制作 PPT
* 内容生产：收集参考资料 + 学习风格 + 大纲协作 + 正文写作

把这类任务中每个环节的指令文档、可执行脚本、参考材料、可用资源打包成单个或多个 Skill 也是不错的 AI 解决方法。

让Agent 根据任务描述，智能调用不同的 Skill 模块，通过“规划-执行-观察”的交错式行动，
一次性完成原本需要多个流程协同完成的复杂任务。

## 资料

* [Agent Skills 终极指南：入门、精通、预测](https://zhuanlan.zhihu.com/p/1992272492392380044?share_code=2ubO4NqsZxWB&utm_psn=2000838846183674669)
    * https://skillsmp.com/zh
    * https://github.com/anthropics/skills/tree/main/skills/skill-creator
    * https://github.com/JimLiu/baoyu-skills/tree/main
* [A complete guide to building skills for Claude](https://claude.com/blog/complete-guide-to-building-skills-for-claude)
* [The Complete Guide to Building Skills for Claude](https://resources.anthropic.com/hubfs/The-Complete-Guide-to-Building-Skill-for-Claude.pdf?hsLang=en)
* [Anthropic 首个公开的 Skills 构建指南](https://mp.weixin.qq.com/s/PcyKi5q8zT-tJ_9rzgKSqg)





