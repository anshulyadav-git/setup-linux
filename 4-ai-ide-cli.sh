#!/bin/bash

# Script to check Node and Python, then install AI CLIs: Codex (GitHub Copilot), Gemini, Claude, Grok

echo "Loading NVM..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo "Checking Node..."
if command -v node &> /dev/null; then
    echo "Node is installed: $(node --version)"
else
    echo "Node is not installed"
fi

echo "Checking Python..."
if command -v python3 &> /dev/null; then
    echo "Python is installed: $(python3 --version)"
else
    echo "Python is not installed"
fi

echo "Installing AI CLIs..."

# Install Claude CLI
npm install -g @anthropic-ai/claude-code

# Install GitHub Copilot CLI (assuming for Codex)
npm install -g @githubnext/github-copilot-cli

# Note: Gemini and Grok CLIs may not be available or require different installation methods

echo "Installation complete. Note: Check documentation for Gemini and Grok CLI availability."