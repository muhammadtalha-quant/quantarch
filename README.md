# quantarch

> Opinionated Arch Linux post-installation dotfiles & configuration scripts — built around GNOME, Fish shell, and a clean, functional aesthetic.

---

## 📸 Overview

**quantarch** is a personal Arch Linux rice targeting a minimal yet fully usable GNOME desktop. It ships installation scripts, shell configuration, a multi-theme Starship prompt, a custom fastfetch layout, and a set of fzf-powered package management functions — all wired together with a single installer script.

---

## 🖥️ System Info

| Component     | Choice                        |
|---------------|-------------------------------|
| OS            | Arch Linux                    |
| DE            | GNOME (vanilla)               |
| Terminal      | Ptyxis                        |
| Shell         | Fish                          |
| Prompt        | Starship (multi-theme)        |
| Fetch         | Fastfetch                     |
| Font          | JetBrainsMono Nerd Font       |
| Color Scheme  | Dark Pastel / Catppuccin      |
| AUR Helper    | yay (via Chaotic AUR)         |

---

## 🗂️ Repository Structure

```
quantarch/
├── installer.fish                  # Main installer entry point
├── intallation/
│   ├── install_chaotic_aur.fish    # Sets up Chaotic AUR repo
│   ├── install_goodies.fish        # Installs essential packages
│   ├── remove_gnome_bloat.fish     # Removes unwanted GNOME apps
│   ├── load_gnome_settings.fish    # Applies dconf settings
│   └── change_shell.fish           # Sets Fish as default shell
├── dconf/
│   └── gnome_settings.conf         # GNOME dconf configuration dump
├── fastfetch/
│   └── config.jsonc                # Fastfetch layout config
├── fish/
│   ├── config.fish                 # Main Fish entry point
│   ├── fish_variables              # Fish universal variables
│   ├── conf.d/                     # Auto-sourced config modules
│   │   ├── abbr.fish               # Shell abbreviations
│   │   ├── prompt.fish             # Starship prompt loader
│   │   ├── env.fish                # Environment variables
│   │   ├── mkdirc.fish             # mkdir + cd helper
│   │   ├── cacheremove.fish        # Cache cleanup utility
│   │   └── clh.fish                # Command line helper
│   ├── functions/                  # Custom Fish functions
│   │   ├── pkginstall.fish         # fzf-powered package installer
│   │   ├── pkgremove.fish          # fzf-powered package remover
│   │   ├── sysupdate.fish          # System update function
│   │   ├── compress.fish           # Archive compression helper
│   │   ├── uncompress.fish         # Archive extraction helper
│   │   └── als.fish                # Enhanced alias lister
│   └── completions/                # Tab completions for custom functions
├── starship/
│   ├── catppuccin_mocha/           # Catppuccin Mocha theme
│   ├── catppuccin_frappe/          # Catppuccin Frappé theme
│   ├── catppuccin_latte/           # Catppuccin Latte theme
│   ├── gruvbox/                    # Gruvbox theme
│   └── pastel/                     # Custom pastel theme
└── git/
    └── .gitconfig                  # Git configuration
```

---

## ⚡ Installation

> **Prerequisites:** A fresh Arch Linux install with GNOME and `git` available.

```bash
git clone https://github.com/yourusername/quantarch.git
cd quantarch
fish installer.fish
```

The installer will run the following steps in order:

1. **Chaotic AUR** — Adds the Chaotic AUR repo and keys for easy AUR access via `pacman`
2. **Install goodies** — Installs `yay`, `ptyxis`, `localsend`, and `flatseal`
3. **Remove GNOME bloat** — Removes unused GNOME apps (see list below)
4. **Load GNOME settings** — Applies all dconf settings via `gnome_settings.conf`
5. **Change shell** — Sets Fish as the default shell for both user and root, then reboots

> ⚠️ The installer will periodically ask for your sudo password. Stay at your machine during the process.

---

## 🧹 GNOME Debloat

The following packages are removed as part of the setup:

`decibels` `epiphany` `gnome-connections` `gnome-contacts` `gnome-maps` `gnome-music` `gnome-remote-desktop` `gnome-tour` `gnome-weather` `orca` `simple-scan` `yelp` `malcontent` `gnome-terminal`

Ptyxis is used as the replacement terminal.

---

## 🎨 Starship Themes

Five Starship prompt themes are included. The active theme is persisted across sessions via a Fish universal variable (`$FLAVOUR`).

| Theme              | Style                          |
|--------------------|--------------------------------|
| `catppuccin_mocha` | Dark, pastel powerline (default) |
| `catppuccin_frappe`| Muted, warm dark               |
| `catppuccin_latte` | Light mode                     |
| `gruvbox`          | Warm retro amber/green         |
| `pastel`           | Custom soft pastel             |

### Switching themes

```fish
set_prompt                  # Opens fzf picker to choose interactively
set_prompt gruvbox          # Switch directly by name
```

The prompt displays: OS icon → username → directory → git branch/status → language versions → conda/docker context → time → command duration.

---

## 📦 Package Management Functions

### `pkginstall` — fzf-powered installer

Browse and install packages interactively with live previews.

```fish
pkginstall -R              # Browse pacman repos
pkginstall -A              # Browse AUR (Ctrl+B: preview PKGBUILD, Alt+B: info)
pkginstall -F              # Browse Flathub
pkginstall -R -s vim       # Install a specific package directly
```

### `pkgremove` — fzf-powered uninstaller

```fish
pkgremove -S               # Browse and remove system packages (pacman + AUR)
pkgremove -F               # Browse and remove Flatpak apps
pkgremove -S -s vim        # Remove a specific package directly
```

> `pkgremove -S` uses `yay -Rns` to also clean up unneeded dependencies. `pkgremove -F` auto-removes unused runtimes.

---

## 🐟 Fish Shell — Abbreviations

42 abbreviations are configured across these categories:

**ls / eza**
| Abbr    | Expands to                                          |
|---------|-----------------------------------------------------|
| `ls`    | `eza --icons --color=always`                        |
| `ll`    | `eza -lgoh --icons --git`                           |
| `lla`   | `eza -lgaoh --icons --git`                          |
| `lt`    | `eza --tree --icons --git`                          |
| `lf`    | Files only with symlinks                            |
| `ldir`  | Dirs only with symlinks                             |

**Navigation**
| Abbr   | Expands to    |
|--------|---------------|
| `home` | `cd ~`        |
| `..`   | `cd ..`       |
| `...`  | `cd ../..`    |
| `....` | `cd ../../..` |

**Core utils** — `cp`, `mv`, `rm` all have safety flags by default (`-rv`, `-v`, `-Irv`). Sudo variants also available (`sucp`, `sumv`, `surm`).

**Other** — `lg` (lazygit), `vi` (vim), `cls` (clear), `ping` (always `-c 10`), and more.

---

## 🖥️ Fastfetch Layout

Custom two-section layout with powerline arrows:

```
 HARDWARE INFORMATION ▶
├─ MTB   <Motherboard>
├─ CPU   <Processor>
├─ GPU   <Graphics Card>
├─ RAM   <Memory>
└─ RES   <Display Resolution>

 SOFTWARE INFORMATION ▶
├─ OS    <Operating System>
├─ KER   <Kernel>
├─ WM    <Window Manager>
├─ SH    <Shell>
├─ TER   <Terminal>
├─ PKG   <Package Count>
└─ UPT   <Uptime>

  ■ ■ ■ ■ ■ ■ ■ ■  (color palette)
```

Hardware section in **red**, software section in **cyan**.

---

## ⚙️ GNOME Settings Highlights

Key settings applied via dconf:

- **Color scheme:** Dark (system-wide prefer-dark)
- **Fonts:** JetBrainsMono Nerd Font across UI, documents, and monospace
- **Hot corners:** Disabled
- **Battery percentage:** Shown in top bar
- **Touchpad:** Two-finger scrolling enabled
- **Privacy:** Camera disabled, temp files auto-cleaned after 7 days

**Keybindings:**
| Shortcut              | Action                          |
|-----------------------|---------------------------------|
| `Super + Q`           | Close window                    |
| `Super + Shift + 1-4` | Move window to workspace 1–4    |
| `F1`                  | Open run dialog                 |

---

## 📋 Dependencies

| Package              | Purpose                          |
|----------------------|----------------------------------|
| `fish`               | Shell                            |
| `starship`           | Prompt                           |
| `fastfetch`          | System fetch                     |
| `eza`                | Modern `ls` replacement          |
| `fzf`                | Fuzzy finder (used in pkg funcs) |
| `yay`                | AUR helper                       |
| `ptyxis`             | Terminal emulator                |
| `lazygit`            | TUI git client                   |
| `localsend`          | LAN file sharing (AirDrop-like)  |
| `flatseal`           | Flatpak permission manager       |
| JetBrainsMono Nerd Font | Font                          |

---

## 📝 Notes

- The default Starship theme on shell start is `catppuccin_mocha`. Override by setting `$FLAVOUR` before launching Fish.
- `change_shell.fish` sets Fish for **both** your user and root, then reboots automatically.
- `user_credentials.json` is listed in `.gitignore` and is never tracked.

---

## 📄 License

Personal configuration — feel free to use or adapt anything here.
