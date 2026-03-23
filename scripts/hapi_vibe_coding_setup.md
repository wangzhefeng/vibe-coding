
# HAPI + Claude / Codex / Gemini / OpenCode Vibe Coding 环境方案

## 1. 方案目标

构建一套 **远程 Vibe Coding 开发环境**，实现：

- 本地开发机长期运行 AI 编程工具
- 云服务器作为 HAPI Relay Hub
- iPhone 随时远程控制开发环境
- Telegram / 飞书 / WhatsApp 进行通知提醒

核心组件：

- **HAPI**: https://github.com/tiann/hapi
- Claude CLI
- Codex CLI
- Gemini CLI
- OpenCode
- Cloudflare Tunnel（可选）

---

# 2. 系统架构

系统包含三台设备：

1️⃣ 本地开发机（MacBook Pro）  
2️⃣ 阿里云服务器（114.55.132.13）  
3️⃣ iPhone（远程控制）  

角色如下：

|设备|角色|说明|
|---|---|---|
|MacBook Pro|AI开发节点|运行 Claude/Codex/Gemini/OpenCode + hapi client|
|阿里云服务器|HAPI Hub|消息中继服务器|
|iPhone|控制终端|Telegram Mini App / Web 控制|

---

# 3. 整体工作流程

```

iPhone
   │
   │ Telegram / Web
   ▼
Aliyun Server (HAPI Hub)
   │
   │ HAPI relay
   ▼
MacBook Pro
   │
   ├─ Claude CLI
   ├─ Codex CLI
   ├─ Gemini CLI
   └─ OpenCode
```

---

# 4. 服务器部署 (Aliyun)

服务器信息：

```
114.55.132.13
Ubuntu 22.04
```

## 4.1 安装 Node.js

```
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs
```

## 4.2 安装 hapi

```
npm install -g @twsxtd/hapi
```

## 4.3 配置环境变量

```
export HAPI_LISTEN_HOST=0.0.0.0
export HAPI_LISTEN_PORT=3006
export CLI_API_TOKEN="your_token"
```

## 4.4 启动 Hub

```
hapi hub --relay
```

后台运行推荐：

```
nohup hapi hub --relay > hapi.log 2>&1 &
```

---

# 5. 本地开发机配置 (MacBook Pro)

## 5.1 安装 hapi

```
npm install -g @twsxtd/hapi
```

## 5.2 配置连接服务器

```
export HAPI_API_URL="http://114.55.132.13:3006"
export CLI_API_TOKEN="your_token"
```

## 5.3 安装 AI CLI

### Claude

```
npm install -g @anthropic-ai/claude-code
```

### Codex

```
npm install -g codex
```

### Gemini

```
npm install -g @google/gemini-cli
```

### OpenCode

```
npm install -g opencode-ai
```

---

# 6. 启动方式

进入项目目录：

```
cd ~/vibe-coding-project
```

启动 Codex：

```
codex
```

另一个终端：

```
hapi
```

HAPI 会自动发现 codex session。

---

# 7. iPhone 远程控制

推荐方式：

### Telegram Mini App

配置 Telegram Bot：

```
TELEGRAM_BOT_TOKEN=xxxx
```

启动 hub：

```
hapi hub --relay
```

然后 Telegram 即可远程发送命令。

---

# 8. 可选：Cloudflare Tunnel

避免暴露服务器端口。

安装：

```
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
chmod +x cloudflared
sudo mv cloudflared /usr/local/bin/
```

启动隧道：

```
cloudflared tunnel --url http://localhost:3006
```

---

# 9. 安全建议

推荐：

- 使用 HTTPS
- 使用 Cloudflare Tunnel
- 禁止 root SSH 登录
- 使用防火墙

```
sudo ufw allow 3006
```

---

# 10. 推荐目录结构

```
~/vibe-coding
 ├─ codex-project
 ├─ claude-project
 ├─ gemini-project
 └─ logs
```

---

# 11. 完整开发流程

1️⃣ iPhone 发送任务  
2️⃣ HAPI Hub 接收请求  
3️⃣ Relay 到 MacBook  
4️⃣ Codex / Claude 执行任务  
5️⃣ 结果返回 Telegram / Web  

---

# 12. 最终效果

你可以：

- 用 iPhone 写代码
- AI 自动改代码
- 自动运行任务
- 远程控制 MacBook

实现真正的 **Vibe Coding 工作流**。
