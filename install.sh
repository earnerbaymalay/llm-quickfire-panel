#!/usr/bin/env bash
# LLM Quickfire Panel Installer
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="${HOME}/.local/bin"
AUTOSTART_DIR="${HOME}/.config/autostart"

echo "=== Installing LLM Quickfire Panel ==="
mkdir -p "$BIN_DIR" "$AUTOSTART_DIR"

install -m 755 "$SCRIPT_DIR/bin/quickfire" "$BIN_DIR/quickfire"
install -m 755 "$SCRIPT_DIR/bin/quickfire-theme" "$BIN_DIR/quickfire-theme"
ln -sf "$BIN_DIR/quickfire" "$BIN_DIR/agy-palette"
ln -sf "$BIN_DIR/quickfire" "$BIN_DIR/llm-quickfire-panel"

if [[ -f "$SCRIPT_DIR/config/llm-quickfire-panel.desktop" ]]; then
    install -m 644 "$SCRIPT_DIR/config/llm-quickfire-panel.desktop" "$AUTOSTART_DIR/llm-quickfire-panel.desktop"
fi

# Initialize default theme
"$BIN_DIR/quickfire-theme" ps2-cyber-blue >/dev/null 2>&1 || true

echo "[✓] LLM Quickfire Panel installed to $BIN_DIR"
echo "[✓] Desktop Autostart configured in $AUTOSTART_DIR"
echo "[✓] Launch with: quickfire (or Super key binding)"
