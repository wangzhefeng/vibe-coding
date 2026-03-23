# Tools 知识库

本文聚焦 `Scrapling`，并把它放回到更大的抓取工具体系里理解：什么时候适合用它、它与传统爬虫栈有什么不同、如何在项目里安全地落地。

## 1. 知识介绍

### 1.1 什么是 Scrapling

Scrapling 是一个面向现代 Web 抓取场景的 Python 框架，目标是把“页面获取、动态渲染、反爬绕过、元素定位、批量爬取”放到一套统一接口里。它既能做单次请求，也能做完整 crawl。

和传统“`requests + BeautifulSoup`”的组合相比，Scrapling 更强调三件事：

- 动态页面与浏览器驱动能力；
- 更强的反检测与会话管理；
- 页面结构变化后，尽量继续找到原目标元素。

### 1.2 适用场景

- 目标站点有较多 JS 渲染；
- 目标站点存在 Cloudflare 等反爬策略；
- 页面结构经常微调，固定 CSS/XPath 容易失效；
- 需要从单页面脚本逐步升级为多页面、并发、可恢复爬虫。

### 1.3 与相近工具的区别

| 工具 | 更适合 | 局限 |
| --- | --- | --- |
| `requests + BeautifulSoup` | 静态页面、快速原型 | 动态渲染与反爬能力弱 |
| `Scrapy` | 大规模规则化抓取 | 浏览器自动化和隐身抓取需要额外拼装 |
| `Playwright` | 浏览器自动化、测试、复杂交互 | 自己搭数据抽取、选择器恢复、批量抓取体系 |
| `Scrapling` | 动态抓取 + 反爬 + 自适应定位 + crawl 一体化 | 学习成本高于轻量库，浏览器模式资源占用更高 |

## 2. 知识原理

### 2.1 核心能力分层

根据官方仓库与文档，Scrapling 可以分成 4 层：

1. `Parser`：负责高性能解析、CSS/XPath/文本等多种选择方式；
2. `Fetcher`：负责 HTTP 请求、动态浏览器抓取、隐身抓取；
3. `Session`：负责 cookie、状态、代理、会话复用；
4. `Spider`：负责并发 crawl、暂停恢复、流式产出、阻断重试。

### 2.2 自适应抓取的核心思路

Scrapling 的一个关键卖点，是“页面结构变化后自动重定位元素”。可以把它理解成：

- 首次抓取时保存元素特征；
- 后续抓取时，不只依赖原始选择器；
- 结合文本、相邻结构、属性、相似度等线索重新匹配目标元素。

这类机制本质上是在“硬编码选择器”之外，增加一层“相似元素检索”。它不能保证 100% 正确，但对页面小改版有较强韧性。

### 2.3 获取模式

Scrapling 主要有三种抓取路径：

- `Fetcher`：偏轻量 HTTP 获取；
- `DynamicFetcher`：基于浏览器渲染的动态获取；
- `StealthyFetcher`：在浏览器自动化基础上强化反检测。

因此它不是简单的解析库，而是“抓取入口 + DOM 解析 + 抽取策略”的统一抽象。

## 3. 知识实践

### 3.1 安装与最小示例

```bash
pip install scrapling
```

如果需要 fetcher / 浏览器能力：

```bash
pip install "scrapling[fetchers]"
scrapling install
```

最小示例：

```python
from scrapling.fetchers import Fetcher

page = Fetcher.get("https://quotes.toscrape.com/")
quotes = page.css(".quote .text::text").getall()
print(quotes)
```

### 3.2 动态页面与隐身抓取

```python
from scrapling.fetchers import StealthyFetcher

page = StealthyFetcher.fetch(
    "https://example.com",
    headless=True,
    network_idle=True,
)
items = page.css(".product", auto_save=True)
```

适合以下情况：

- 页面内容依赖 JS；
- 站点对请求头、TLS 指纹、浏览器环境更敏感；
- 需要先“拿到能稳定访问页面的能力”，再做数据抽取。

### 3.3 从单页脚本升级到 Spider

当需求从“抓一个页面”升级到“持续 crawl 多个页面”时，建议切换到 Spider 模式：

- 支持并发、限速、按域名节流；
- 支持 pause / resume；
- 支持结果流式输出，适合长任务。

### 3.4 实战建议

- 先用轻量模式验证字段，再切浏览器模式，避免不必要成本；
- 对关键字段同时保留“主选择器 + 兜底文本特征”；
- 将代理、cookie、headers、节流策略和提取逻辑分离；
- 对高风险站点优先做小样本验证，不要一开始就高并发跑全站。

### 3.5 常见坑

- 把浏览器抓取当作默认方案，成本和稳定性都可能变差；
- 过度依赖自适应定位，不做人工抽样校验；
- 未区分“采集失败”和“页面为空”；
- 未处理 robots、登录权限、目标站点合规要求。

## 4. 相关资源

### 4.1 官方 / 一手资料

- [Scrapling GitHub](https://github.com/D4Vinci/Scrapling)
- [Scrapling 文档](https://scrapling.readthedocs.io/en/latest/)

### 4.2 项目内资料入口

- 根目录 `README.md` 中 `# 4.资料 > Tools`

## 5. 其他重要内容

### 5.1 选型建议

- 只抓静态页面：优先轻量库；
- 需要浏览器交互：Playwright / Scrapling 都可，若更偏“抓取工程化”，Scrapling 更顺手；
- 需要长期维护的采集任务：Scrapling 的 session、spider、adaptive 能明显降低维护成本。

### 5.2 合规与风险

- 抓取前先确认站点服务条款、robots、登录权限和数据使用边界；
- 对带账号、验证码、个人数据的场景提高审计强度；
- 采集链路中避免把敏感 cookie、token、代理配置写进仓库。

### 5.3 参考来源

- 官方：Scrapling GitHub / ReadTheDocs
- 仓库资料：根目录 `README.md` 中列出的 Scrapling 链接
