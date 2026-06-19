#!/bin/bash
# Growth by Design CEO AI Kit — Installer
# https://www.getfreshventures.com/ceo-ai-kit

set -e

echo "╔═══════════════════════════════════════════════════════════════════╗"
echo "║           Growth by Design™ CEO AI Kit Installer                ║"
echo "╚═══════════════════════════════════════════════════════════════════╝"
echo ""

# 1. Ensure Homebrew is installed
if ! command -v brew &> /dev/null; then
  echo "📦 Homebrew not found. Installing Homebrew (required for dependencies)..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  # Add brew to PATH for this session (common paths)
  if [[ -d /opt/homebrew/bin ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
  elif [[ -d /usr/local/bin ]]; then
    export PATH="/usr/local/bin:$PATH"
  fi
fi

# 2. Tap the public repository
echo "🔗 Tapping GetFresh Ventures repository..."
brew tap getfresh-ventures/tap

# 3. Install create-gxd (this automatically installs Node.js if missing)
echo "📥 Installing the CEO AI Kit tools..."
brew install getfresh-ventures/tap/create-gxd

echo ""
echo "🚀 Installation complete! Starting the setup wizard..."
echo ""

# 4. Run the wizard
create-gxd "$@"

