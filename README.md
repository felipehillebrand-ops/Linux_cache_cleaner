# 🧹 Linux Cache Cleaner 2.0

A lightweight Bash script to safely remove common cache and temporary files on Linux **without requiring `sudo`**.

Linux Cache Cleaner 2.0 supports modern development environments, including Python, AI tools, browsers, IDEs, shells, and virtualization software.

---

# ✨ What's New in Version 2.0

- 🐍 Added Python development cache cleanup
- 🤖 Added Hugging Face cache cleanup
- ⚡ Added `uv` cache cleanup
- 📦 Added Poetry cache cleanup
- 🔥 Added PyTorch cache cleanup
- 🎨 Added Matplotlib cache cleanup
- 🧪 Added pytest, mypy, Ruff and Pytype caches
- 🐟 Added Fish shell cache cleanup
- 🖥️ Added Vim and Neovim cleanup
- 💻 Added Oracle VM VirtualBox log cleanup
- 🛡️ Added safety checks before execution
- ✅ Compatible with standard (non-root) Linux users

---

# 📦 What Gets Cleaned

## Browsers

### Google Chrome
- Cache
- Code Cache
- GPU Cache
- Service Worker Cache

### Firefox (Snap)
- Cache
- Startup Cache
- Thumbnails
- Service Worker Cache

---

## Development Tools

### Slack
- Cache
- Code Cache
- GPU Cache

### Visual Studio Code
- Cache
- CachedData
- Logs
- GPU Cache
- Service Worker
- Crashpad

### Vim
- Temporary files
- Swap files
- Backup files
- Undo files

### Neovim
- Cache
- Swap files
- ShaDa

### Oracle VM VirtualBox
- Log files
- Cache

---

## Python

- pip
- Poetry
- PyTorch
- Hugging Face
- Matplotlib
- `__pycache__`
- `.pytest_cache`
- `.mypy_cache`
- `.ruff_cache`
- `.pytype`

---

## Shells

### Zsh
- zcompdump
- zcompcache

### Oh My Zsh
- Cache

### Fish
- Cache
- Generated completions

---

## Package Managers

### uv
- Package cache (official cleanup command)

### npm
- Package cache

---

## System

- Trash (`~/.local/share/Trash`)

---

# 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/felipehillebrand-ops/linux-cache-cleaner.git
cd linux-cache-cleaner
```

Make the script executable:

```bash
chmod +x clean-cache.sh
```

Run it:

```bash
./clean-cache.sh
```

---

# ⚠️ Safety

This script:

- ✅ does **not** require `sudo`
- ✅ only removes cache and temporary files
- ✅ does **not** remove project source code
- ✅ does **not** remove Python virtual environments (`.venv`, `venv`)
- ✅ does **not** remove VirtualBox virtual machines

Some applications may start slightly slower after the first launch because caches will be rebuilt automatically.

---

# 🐧 Compatibility

Tested on:

- Ubuntu

The script should also work on most Debian-based Linux distributions.

---

# 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

# 👨‍💻 Author

**Felipe José Hillebrand**

GitHub: https://github.com/felipehillebrand-ops
