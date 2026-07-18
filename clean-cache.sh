#!/bin/bash

# Verifica se HOME é válido
if [ -z "$HOME" ] || [ "$HOME" = "/" ]; then
    echo "❌ Erro: variável HOME inválida."
    exit 1
fi

echo "🧹 A limpar caches de $USER..."

# Cache geral
#rm -rf ~/.cache/* 2>/dev/null

# Google Chrome
rm -rf ~/.config/google-chrome/Default/Cache/* 2>/dev/null
rm -rf ~/.config/google-chrome/Default/Code\ Cache/* 2>/dev/null
rm -rf ~/.config/google-chrome/Default/GPUCache/* 2>/dev/null
rm -rf ~/.config/google-chrome/Default/Service\ Worker/CacheStorage/* 2>/dev/null
rm -rf ~/.config/google-chrome/Default/Service\ Worker/ScriptCache/* 2>/dev/null

# Firefox (Snap)
rm -rf ~/snap/firefox/common/.cache/* 2>/dev/null
rm -rf ~/snap/firefox/common/.mozilla/firefox/*/cache2/* 2>/dev/null
rm -rf ~/snap/firefox/common/.mozilla/firefox/*/startupCache/* 2>/dev/null
rm -rf ~/snap/firefox/common/.mozilla/firefox/*/thumbnails/* 2>/dev/null
rm -rf ~/snap/firefox/common/.mozilla/firefox/*/serviceworker* 2>/dev/null

# Slack
rm -rf ~/.config/Slack/Cache/* 2>/dev/null
rm -rf ~/.config/Slack/Code\ Cache/* 2>/dev/null
rm -rf ~/.config/Slack/GPUCache/* 2>/dev/null

# VSCode
rm -rf ~/.config/Code/Cache/* 2>/dev/null
rm -rf ~/.config/Code/CachedData/* 2>/dev/null
rm -rf ~/.config/Code/logs/* 2>/dev/null
rm -rf ~/.config/Code/GPUCache/* 2>/dev/null
rm -rf ~/.config/Code/Service\ Worker/* 2>/dev/null
rm -rf ~/.config/Code/Crashpad/* 2>/dev/null

# Vim
rm -rf ~/.viminfo.tmp 2>/dev/null
rm -rf ~/.vim/.netrwhist 2>/dev/null
rm -rf ~/.vim/swap/* 2>/dev/null
rm -rf ~/.vim/backup/* 2>/dev/null
rm -rf ~/.vim/undo/* 2>/dev/null

# Neovim
rm -rf ~/.local/state/nvim/swap/* 2>/dev/null
rm -rf ~/.local/state/nvim/shada/* 2>/dev/null
rm -rf ~/.cache/nvim/* 2>/dev/null

# Oh My Zsh
rm -f ~/.zcompdump* 2>/dev/null
rm -rf ~/.cache/oh-my-zsh/* 2>/dev/null

# Zsh
rm -f ~/.zcompcache* 2>/dev/null

# Fish
rm -rf ~/.cache/fish/* 2>/dev/null
rm -rf ~/.local/share/fish/generated_completions/* 2>/dev/null

# Oracle VM VirtualBox
rm -rf ~/.config/VirtualBox/*.log* 2>/dev/null
rm -rf ~/.config/VirtualBox/selectorwindow.log* 2>/dev/null
rm -rf ~/.VirtualBox/*.log* 2>/dev/null
rm -rf ~/.cache/VirtualBox/* 2>/dev/null

# pip
rm -rf ~/.cache/pip/* 2>/dev/null

# Poetry
rm -rf ~/.cache/pypoetry/* 2>/dev/null

# pytest
rm -rf .pytest_cache 2>/dev/null
find ~ -xdev -type d -name ".pytest_cache" -prune -exec rm -rf {} + 2>/dev/null

# Python
find ~ -xdev -type d -name "__pycache__" -prune -exec rm -rf {} + 2>/dev/null
find ~ -xdev -type f -name "*.pyc" -delete 2>/dev/null
find ~ -xdev -type f -name "*.pyo" -delete 2>/dev/null

# mypy
find ~ -xdev -type d -name ".mypy_cache" -prune -exec rm -rf {} + 2>/dev/null

# Ruff
find ~ -xdev -type d -name ".ruff_cache" -prune -exec rm -rf {} + 2>/dev/null

# Pytype
find ~ -xdev -type d -name ".pytype" -prune -exec rm -rf {} + 2>/dev/null

# PyTorch
rm -rf ~/.cache/torch/* 2>/dev/null

# Hugging Face
rm -rf ~/.cache/huggingface/* 2>/dev/null

# Matplotlib
rm -rf ~/.cache/matplotlib/* 2>/dev/null

# uv
if command -v uv >/dev/null 2>&1; then
    uv cache clean >/dev/null 2>&1
fi

# npm
rm -rf ~/.npm/_cacache/* 2>/dev/null

# Lixo
rm -rf ~/.local/share/Trash/* 2>/dev/null

echo "✅ Limpeza concluída!"
