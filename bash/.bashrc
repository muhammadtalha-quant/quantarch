# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

fastfetch

# Essential Shell Options
shopt -s autocd       # type a dir name to cd into it without typing cd
shopt -s cdspell      # auto-correct minor typos in cd paths
shopt -s globstar     # ** pattern matches files recursively
shopt -s histappend   # append to ~/.bash_history instead of overwriting
shopt -s checkwinsize # keep terminal size correct after each command

# User configuration
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR=vim
export VISUAL=zeditor

# My custom overrides
sysupdate() {
    case "$1" in
        -F|--system)   yay --noconfirm ;;
        -f|--only-flatpaks) flatpak update -y && flatpak uninstall -y --unused ;;
        -a|--all)           yay --noconfirm && flatpak update -y && flatpak uninstall -y --unused ;;
        *)
            printf "Usage: sysupdate <scope>\n\n"
            printf "Arguments:\n"
            printf "  scope    Determines what gets updated (required)\n\n"
            printf "Scopes:\n"
            printf "  -s, --system    Update only system packages and AUR via yay\n"
            printf "  -f, --only-flatpaks  Update Flatpak apps and remove unused runtimes\n"
            printf "  -a, --all            Update everything: system, AUR, and Flatpaks\n\n"
            printf "Examples:\n"
            printf "  sysupdate -a\n"
            printf "  sysupdate --only-flatpaks\n"
        ;;
    esac
}

install() {
    local fzf_opts=(--layout=reverse-list --multi --preview-window=down:60%)
    case "$1" in
        -r|--repo)
            yay -Slq --repo \
            | fzf "${fzf_opts[@]}" --preview 'yay -Sii --repo {1}' \
            --header 'ENTER: Install | TAB: Select | Up/Down: Scroll' \
            | xargs -ro yay -S --repo --needed ;;
        -a|--aur)
            yay -Slq --aur \
            | fzf "${fzf_opts[@]}" --preview 'yay -Sii --aur {1}' \
            --bind 'ctrl-b:preview(yay -Gp {1})' \
            --bind 'alt-b:preview(yay -Sii {1})' \
            --header 'ENTER: Install | TAB: Select | ^B: PKGBUILD | M-B: Info' \
            | xargs -ro yay -S --aur --needed ;;
        -f|--flathub)
            flatpak remote-ls flathub --app --columns=application \
            | fzf "${fzf_opts[@]}" --preview 'flatpak remote-info flathub {1}' \
            --header 'ENTER: Install | TAB: Select | Up/Down: Scroll' \
            | xargs -ro -n1 flatpak install flathub --or-update ;;
        *)
            printf "Usage: install <provider>\n\n"
            printf "Arguments:\n"
            printf "  provider    Package source to browse and install from (required)\n\n"
            printf "Providers:\n"
            printf "  -r, --repo     Browse and install from configured pacman repositories\n"
            printf "  -a, --aur      Browse and install from the Arch User Repository\n"
            printf "                 ^B to preview PKGBUILD, M-B to view package info\n"
            printf "  -f, --flathub  Browse and install from Flathub\n\n"
            printf "Keybinds (all providers):\n"
            printf "  TAB       Select multiple packages\n"
            printf "  ENTER     Install selected packages\n"
            printf "  Up/Down   Scroll list\n\n"
            printf "Examples:\n"
            printf "  install --repo\n"
            printf "  install -a\n"
        ;;
    esac
}

uninstall() {
    local fzf_opts=(--layout=reverse-list --multi --header 'ENTER: Uninstall | TAB: Select | Up/Down: Scroll')
    case "$1" in
        -s|--system)
            yay -Qq \
            | fzf "${fzf_opts[@]}" \
            | xargs -ro yay -Rns ;;
        -f|--flatpak)
            flatpak list --app --columns=application \
            | fzf "${fzf_opts[@]}" \
            | xargs -ro -n1 flatpak uninstall && flatpak uninstall -y --unused ;;
        *)
            printf "Usage: uninstall <scope>\n\n"
            printf "Arguments:\n"
            printf "  scope    Determines what package set to uninstall from (required)\n\n"
            printf "Scopes:\n"
            printf "  -s, --system   Browse and remove installed system packages (pacman + AUR)\n"
            printf "                 Uses 'yay -Rns' to also remove unneeded dependencies\n"
            printf "  -f, --flatpak  Browse and remove installed Flatpak apps\n"
            printf "                 Unused runtimes are cleaned up automatically\n\n"
            printf "Examples:\n"
            printf "  uninstall -s\n"
            printf "  uninstall --flatpak\n"
        ;;
    esac
}

bashrc() {
    #shellcheck source=/home/muhammadtalha/.bashrc
    case "$1" in
        -r|--reload) source ~/.bashrc ;;
        -e|--edit)   ${EDITOR:-nano} ~/.bashrc && source ~/.bashrc ;;
        -v|--view)   bat ~/.bashrc ;;
        *)
            printf "Usage: bashrc <operation>\n\n"
            printf "Arguments:\n"
            printf "  operation    Action to perform on ~/.bashrc (required)\n\n"
            printf "Operations:\n"
            printf "  -r, --reload  Re-source ~/.bashrc in the current shell session\n"
            printf "  -e, --edit    Open ~/.bashrc in \$EDITOR and auto-reload on exit\n"
            printf "  -v, --view    Pretty-print ~/.bashrc using bat\n\n"
            printf "Examples:\n"
            printf "  bashrc --edit\n"
            printf "  bashrc -r\n"
        ;;
    esac
}

freeupspace() {
    yay -Scc
    paccache -rk0
    yay -Syy
    flatpak uninstall -y --unused
    rm -rf ~/.var/app/*/cache/*
}

clh() {
    clear
    history -c && history -w
}

# Alias for ls commands

alias ls='eza --icons --color=always'
alias lla='eza -lgaoh --icons --git'                                        # long listing + hidden
alias ll='eza -lgoh --icons --git'                                          # long listing
alias lf='eza -lgaoh --icons --only-files --show-symlinks --git'            # files only
alias ldir='eza -lgaoh --icons --only-dirs --show-symlinks --git'           # directories only
alias la='eza -ah --icons'                                                  # hidden files
alias lt='eza --tree --icons --git'                                         # tree view




# Change directory aliases
alias home='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Alias chmod commands
alias mx='chmod a+x'
alias 000='chmod 000'
alias 644='chmod 644'
alias 666='chmod 666'
alias 755='chmod 755'
alias 777='chmod 777'

# recursive variants
alias 000r='chmod -R 000'
alias 644r='chmod -R 644'
alias 666r='chmod -R 666'
alias 755r='chmod -R 755'
alias 777r='chmod -R 777'

extract() {
    if [[ -z "$1" || "$1" == "--help" ]]; then
        printf "Usage: extract <archive> [destination]\n\n"
        printf "Arguments:\n"
        printf "  archive      Path to the archive file to extract\n"
        printf "  destination  Optional folder to extract into (created if missing)\n"
        printf "               Defaults to current directory if not specified\n\n"
        printf "Supported formats:\n"
        printf "  *.tar        Uncompressed tape archive\n"
        printf "  *.tar.gz     Gzip-compressed archive\n"
        printf "  *.tar.xz     XZ-compressed archive\n"
        printf "  *.zip        Zip archive\n\n"
        printf "Examples:\n"
        printf "  extract archive.tar.gz\n"
        printf "  extract archive.zip ~/projects/myfolder\n"
        return 0
    fi

    local file="$1"
    local dest="${2:-.}"

    if [[ ! -f "$file" ]]; then
        printf "extract: '%s' is not a file\n" "$file"
        return 1
    fi

    [[ -n "$2" ]] && mkdir -p "$dest"

    case "$file" in
        *.tar)     tar -xvf  "$file" -C "$dest" ;;
        *.tar.gz)  tar -xvzf "$file" -C "$dest" ;;
        *.tar.xz)  tar -xvJf "$file" -C "$dest" ;;
        *.zip)     unzip "$file" -d "$dest"      ;;
        *)         printf "extract: unknown format '%s'\n" "$file"; return 1 ;;
    esac
}

compress() {
    if [[ -z "$1" || "$1" == "--help" ]]; then
        printf "Usage: compress <archive> <source> [source ...]\n\n"
        printf "Arguments:\n"
        printf "  archive    Output archive filename — extension determines format\n"
        printf "  source     One or more files or directories to compress\n\n"
        printf "Supported formats:\n"
        printf "  *.tar        Uncompressed tape archive\n"
        printf "  *.tar.gz     Gzip-compressed archive\n"
        printf "  *.tar.xz     XZ-compressed archive (best compression)\n"
        printf "  *.zip        Zip archive\n\n"
        printf "Examples:\n"
        printf "  compress backup.tar.gz file.txt myfolder/\n"
        printf "  compress project.zip src/ README.md\n"
        return 0
    fi

    if [[ $# -lt 2 ]]; then
        printf "compress: at least one source required\n"
        printf "Run 'compress --help' for usage\n"
        return 1
    fi

    local dest="$1"
    shift
    local sources=("$@")

    case "$dest" in
        *.tar)     tar -cvf  "$dest" "${sources[@]}" ;;
        *.tar.gz)  tar -cvzf "$dest" "${sources[@]}" ;;
        *.tar.xz)  tar -cvJf "$dest" "${sources[@]}" ;;
        *.zip)     zip -r    "$dest" "${sources[@]}" ;;
        *)         printf "compress: unknown format '%s'\nRun 'compress --help' for usage\n" "$dest"; return 1 ;;
    esac
}

als() {
    if [[ -z "$1" || "$1" == "--help" ]]; then
        printf "Usage: als <archive>\n\n"
        printf "Lists archive contents without extracting.\n\n"
        printf "Supported formats:\n"
        printf "  *.tar, *.tar.gz, *.tar.xz, *.tar.bz2\n"
        printf "  *.zip\n"
        return 0
    fi

    if [[ ! -f "$1" ]]; then
        printf "als: '%s' is not a file\n" "$1"
        return 1
    fi

    case "$1" in
        *.tar|*.tar.gz|*.tar.xz|*.tar.bz2) tar -tvf "$1" ;;
        *.zip) unzip -l "$1" ;;
        *) printf "als: unknown format '%s'\n" "$1"; return 1 ;;
    esac
}

# Alias necessary commands

alias snano='sudo nano'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -Irv'
alias mkdir='mkdir -p'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias vi='vim'
alias lg='lazygit'
alias linutil='curl -fsSL https://christitus.com/linux | sh'

# OMP Prompt Init
eval "$(oh-my-posh init bash --config ~/prompt.json)"
