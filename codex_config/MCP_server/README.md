
MCP（模型上下文协议）是 Codex 连接外部工具和上下文提供者的标准方式。它特别适用于远程托管系统，如 Figma、Linear、GitHub 或团队依赖的内部知识服务。

当 Codex 需要位于本地仓库之外的功能时，例如问题追踪器、设计工具、浏览器或共享文档系统，请使用 MCP。

可以这样理解：

* Host: Codex  
* Client: the MCP connection inside Codex
* Server: the external tool or context provider

MCP 服务器可以暴露：

* Tools (actions) 
* Resources (readable data)
* Prompts (reusable prompt templates)

这种分离有助于你思考信任和能力边界。有些服务器主要提供上下文，而其他服务器则暴露强大的操作。

在实践中，MCP 在与技能配合使用时通常最有用：

* 一项技能定义了工作流程并命名了要使用的 MCP 工具

