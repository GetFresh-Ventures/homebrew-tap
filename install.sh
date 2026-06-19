#!/bin/bash
# Growth by Design CEO AI Kit — Zero-Dependency Installer
# https://www.getfreshventures.com/ceo-ai-kit

set -e

echo "╔═══════════════════════════════════════════════════════════════════╗"
echo "║           Growth by Design™ CEO AI Kit Installer                ║"
echo "╚═══════════════════════════════════════════════════════════════════╝"
echo ""

# Determine OS and Arch
OS="$(uname -s | tr '[:upper:]' '[:lower:]')"
ARCH="$(uname -m)"

if [[ "$OS" == "darwin" ]]; then
  BINARY_URL="https://github.com/GetFresh-Ventures/homebrew-tap/releases/download/v1.55.0/create-gxd-macos"
else
  echo "❌ This zero-dependency installer currently supports macOS."
  echo "   For Windows, download the executable directly from:"
  echo "   https://github.com/GetFresh-Ventures/homebrew-tap/releases/download/v1.55.0/create-gxd-win.exe"
  exit 1
fi

TMP_BIN="/tmp/create-gxd-installer"

echo "📦 Downloading the installer binary..."
curl -sL "$BINARY_URL" -o "$TMP_BIN"
chmod +x "$TMP_BIN"

echo "🚀 Starting installation wizard..."
echo ""
"$TMP_BIN" "$@"

# Cleanup
rm -f "$TMP_BIN"
