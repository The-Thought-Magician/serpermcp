<div align="center">

# 🔍 Serper MCP Server

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![PyPI](https://img.shields.io/pypi/v/serper-mcp-server.svg)](https://pypi.org/project/serper-mcp-server/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![MCP](https://img.shields.io/badge/MCP-Compatible-green.svg)](https://modelcontextprotocol.io)

**A powerful Model Context Protocol server that brings Google Search capabilities to your LLMs** 🚀

*Maintained by [The-Thought-Magician](https://chiranjeet.app)*

[Features](#-features) • [Installation](#-installation) • [Usage](#-usage) • [Tools](#-available-tools) • [Debugging](#-debugging)

---

</div>

## 📦 Repository

```bash
# HTTPS
git clone https://github.com/The-Thought-Magician/serpermcp.git

# SSH
git clone git@github.com:The-Thought-Magician/serpermcp.git
```

## 🛠️ Available Tools

| Tool | Description | Parameters |
|------|-------------|------------|
| 🔎 `google_search` | General web search | [View Schema](src/serper_mcp_server/schemas.py#L15) |
| 🖼️ `google_search_images` | Image search | [View Schema](src/serper_mcp_server/schemas.py#L15) |
| 🎥 `google_search_videos` | Video search | [View Schema](src/serper_mcp_server/schemas.py#L15) |
| 📍 `google_search_places` | Local places search | [View Schema](src/serper_mcp_server/schemas.py#L20) |
| 🗺️ `google_search_maps` | Maps & locations | [View Schema](src/serper_mcp_server/schemas.py#L24) |
| ⭐ `google_search_reviews` | Business reviews | [View Schema](src/serper_mcp_server/schemas.py#L34) |
| 📰 `google_search_news` | News articles | [View Schema](src/serper_mcp_server/schemas.py#L15) |
| 🛒 `google_search_shopping` | Product search | [View Schema](src/serper_mcp_server/schemas.py#L45) |
| 📷 `google_search_lens` | Visual search | [View Schema](src/serper_mcp_server/schemas.py#L50) |
| 🎓 `google_search_scholar` | Academic papers | [View Schema](src/serper_mcp_server/schemas.py#L20) |
| 👪 `google_search_parents` | Parent-safe search | [View Schema](src/serper_mcp_server/schemas.py#L56) |
| 💡 `google_search_autocomplete` | Search suggestions | [View Schema](src/serper_mcp_server/schemas.py#L20) |
| 🌐 `webpage_scrape` | Scrape web content | [View Schema](src/serper_mcp_server/schemas.py#L62) |


## 🚀 Installation

### ⚡ Quick Install via Smithery

Install Serper MCP Server for Claude Desktop automatically via [Smithery](https://smithery.ai/server/@the-thought-magician/serper-mcp-server):

```bash
npx -y @smithery/cli install @the-thought-magician/serper-mcp-server --client claude
```

### 🌟 Using `uv` (Recommended)

> **Note:** Make sure you have [`uv`](https://docs.astral.sh/uv/) installed on your system.

**Step 1:** Add to your MCP client configuration or **Claude Desktop** settings (`claude_desktop_config.json`):
    ```json
    {
        "mcpServers": {
            "serper": {
                "command": "uvx",
                "args": ["serper-mcp-server"],
                "env": {
                    "SERPER_API_KEY": "<Your Serper API key>"
                }
            }
        }
    }
    ```

**Step 2:** The server will be downloaded automatically from [PyPI](https://pypi.org/project/serper-mcp-server/) using `uvx` ✨

---

### 📦 Using `pip` for Projects

**Step 1:** Add `serper-mcp-server` to your `requirements.txt`:
```txt
serper-mcp-server
```

**Step 2:** Install dependencies:

```bash
pip install -r requirements.txt
```

**Step 3:** Configure your MCP client:
    ```json
    {
        "mcpServers": {
            "serper": {
                "command": "python3",
                "args": ["-m", "serper_mcp_server"],
                "env": {
                    "SERPER_API_KEY": "<Your Serper API key>"
                }
            }
        }
    }
    ```

---

### 🌍 Global Installation with `pip`

**Step 1:** Install globally:

```bash
pip install serper-mcp-server
# or
pip3 install serper-mcp-server
```

**Step 2:** Add to your MCP client configuration or **Claude Desktop** settings:
    ```json
    {
        "mcpServers": {
            "serper": {
                "command": "python3",
                "args": ["serper-mcp-server"],
                "env": {
                    "SERPER_API_KEY": "<Your Serper API key>"
                }
            }
        }
    }
    ```

---

## 🐛 Debugging

Use the MCP Inspector to debug the server:

### For `uvx` installations:

```bash
npx @modelcontextprotocol/inspector uvx serper-mcp-server
```

### For local development:

```bash
git clone https://github.com/The-Thought-Magician/serpermcp.git
cd serpermcp
npx @modelcontextprotocol/inspector uv run serper-mcp-server -e SERPER_API_KEY=<your_key>
```

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

You are free to:
- ✅ Use commercially
- ✅ Modify
- ✅ Distribute
- ✅ Private use

---

<div align="center">

**Made with ❤️ by [The-Thought-Magician](https://chiranjeet.app)**

⭐ Star this repo if you find it helpful!

</div>
