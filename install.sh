#!/usr/bin/env bash
# Synapse Palette Installer (Formerly LLM Quickfire Panel)
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="${HOME}/.local/bin"
AUTOSTART_DIR="${HOME}/.config/autostart"

echo "=== Installing Synapse Command Palette ==="
mkdir -p "$BIN_DIR" "$AUTOSTART_DIR"

install -m 755 "$SCRIPT_DIR/bin/synapse-palette" "$BIN_DIR/synapse-palette"
install -m 755 "$SCRIPT_DIR/bin/quickfire-theme" "$BIN_DIR/quickfire-theme"

# Compatibility shims
ln -sf "$BIN_DIR/synapse-palette" "$BIN_DIR/quickfire"
ln -sf "$BIN_DIR/synapse-palette" "$BIN_DIR/synapse-command-palette"
ln -sf "$BIN_DIR/synapse-palette" "$BIN_DIR/agy-palette"
ln -sf "$BIN_DIR/synapse-palette" "$BIN_DIR/llm-quickfire-panel"
ln -sf "$BIN_DIR/quickfire-theme" "$BIN_DIR/synapse-palette-theme"

if [[ -f "$SCRIPT_DIR/config/llm-quickfire-panel.desktop" ]]; then
    install -m 644 "$SCRIPT_DIR/config/llm-quickfire-panel.desktop" "$AUTOSTART_DIR/llm-quickfire-panel.desktop"
fi

# Initialize default theme
"$BIN_DIR/quickfire-theme" ps2-cyber-blue >/dev/null 2>&1 || true

echo "[✓] Synapse Command Palette installed to $BIN_DIR/synapse-palette"
echo "[✓] Compatibility symlinks: quickfire, llm-quickfire-panel, agy-palette"
echo "[✓] Launch with: synapse-palette or quickfire"
