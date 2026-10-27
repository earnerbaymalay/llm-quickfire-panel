# LLM Quickfire Panel ⚡

> **High-Velocity AI HUD, Local LLM Quickfire Launcher & Dynamic Theme Engine for Linux**  
> *Seamless keyboard-first productivity bridging Antigravity CLI, Claude Code, Ollama, and Synapse AI.*

```
   ██████   ██    ██  ██  ██████  ██   ██ ███████ ██ ██████  ███████ 
  ██    ██  ██    ██  ██ ██       ██  ██  ██      ██ ██   ██ ██      
  ██    ██  ██    ██  ██ ██       █████   █████   ██ ██████  █████   
  ██ ▄▄ ██  ██    ██  ██ ██       ██  ██  ██      ██ ██   ██ ██      
   ██████    ██████   ██  ██████  ██   ██ ██      ██ ██   ██ ███████ 
      ▀▀                                                             
```

---

## ⚡ Core Capabilities

1. **Direct Prompt Fire**:
   Type any natural language prompt into the panel and press `Enter`. The query is immediately routed to the active local LLM without requiring menu navigation or prior clicks.

2. **Dynamic Model Discovery & VRAM/RAM Badges**:
   Auto-queries Ollama's local engine (`http://127.0.0.1:11434`) to discover all installed models (`qwen2.5-coder`, `llama3.2`, `dolphin-mistral`, `nous-hermes2`, `qwen-abliterated`). Actively loaded models display a live `[RAM 🟢 Active]` indicator.

3. **Interchangeable Live Theme Engine (`quickfire-theme`)**:
   Switch appearance on the fly via an interactive dropdown:
   - **PlayStation 2 Cyber Blue**: Midnight navy `#00091a`, electric cyan `#00f0ff`, and gold accents.
   - **Catppuccin Mocha**: Deep velvet `#1e1e2e` with soft mauve `#cba6f7`.
   - **Tokyo Night Storm**: Deep indigo `#1a1b26` with electric blue `#7aa2f7` & magenta.
   - **Nord Frost**: Arctic polar night `#2e3440` with glacial frost `#88c0d0`.
   - **Dracula Dark**: Dark slate `#282a36` with vampire purple `#bd93f9` & hot pink.
   - **Cyberpunk 2077**: Night obsidian `#08080c` with electric yellow `#fee801` & cyan.
   - **Synthwave 84**: Retro violet `#241b2f` with neon pink `#f92aad` & cyan.
   *Instantly reskins Rofi and Kitty terminal without restarting active sessions.*

4. **Bi-Directional Multi-Agent Switching**:
   Single-key toggle between **Antigravity CLI** workflows and **Claude Code** agent suites.

5. **Synapse AI Core Integration**:
   Native triggers for `synapse sync`, `synapse doctor`, `synapse hud`, `synapse vibe`, and cross-session agent memory search (`synapse mem`).

6. **Desktop Autostart**:
   Auto-launches seamlessly upon desktop loading with configurable delay for complete compositor handoff.

---

## 🚀 Installation & Setup

```bash
# Clone the repository
git clone git@github.com:earnerbaymalay/llm-quickfire-panel.git
cd llm-quickfire-panel

# Run installer
./install.sh
```

### Keybindings (XFCE / i3 / Sway / Hyprland)

Bind to `Super + Space` or standalone `Super`:

```bash
# Launch default palette
quickfire

# Launch in Claude Code focus
quickfire --claude

# Open Theme Selector dropdown directly
quickfire-theme --menu
```

---

## 📂 Architecture

```
llm-quickfire-panel/
├── bin/
│   ├── quickfire            # Primary Rofi / CLI HUD orchestrator
│   └── quickfire-theme      # Dynamic theme engine for Rofi and Kitty
├── config/
│   └── llm-quickfire-panel.desktop
├── docs/
├── install.sh               # One-step installer
├── pyproject.toml           # Packaging metadata
├── LICENSE                  # MIT License
└── README.md
```

---

## 🛡️ License

MIT License. Designed and maintained by `earnerbaymalay` for EndeavourOS and SynapseOS.
