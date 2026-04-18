# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

fastfetch

# User configuration
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR=vim
export VISUAL=zeditor

# My custom overrides
sysupdate() {
    case "$1" in
        -F|--no-flatpaks)    yay --noconfirm ;;
        -f|--only-flatpaks)  flatpak update -y && flatpak uninstall -y --unused ;;
        -a|--all)         yay --noconfirm && flatpak update -y && flatpak uninstall -y --unused ;;
        *)
            printf "Usage: sysupdate [scope]\n\n"
            printf "Scopes:\n"
            printf "  -F, --no-flatpaks    Update system packages only\n"
            printf "  -f, --only-flatpaks  Update flatpaks only\n"
            printf "  -a, --all            Update everything\n"
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
            printf "Providers:\n"
            printf "  -r, --repo      Install from configured repositories\n"
            printf "  -a, --aur       Install from the AUR\n"
            printf "  -f, --flathub   Install from Flathub\n"
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
            printf "Scopes:\n"
            printf "  -s, --system    Uninstall system packages (including AUR)\n"
            printf "  -f, --flatpak   Uninstall flatpaks\n"
        ;;
    esac
}


bashrc() {
    #shellcheck source=/home/muhammadtalha/.bashrc
    case "$1" in
        -r|--reload) source ~/.bashrc ;;
        -e|--edit)   ${EDITOR:-nvim} ~/.bashrc && source ~/.bashrc ;;
        -v|--view)   bat ~/.bashrc ;;
        *)
            printf "Usage: bashrc <operation>\n\n"
            printf "Operations:\n"
            printf "  -r, --reload   Reload bashrc\n"
            printf "  -e, --edit     Edit and auto-reload bashrc\n"
            printf "  -v, --view     Print bashrc\n"
        ;;
    esac
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

# Alias for archives
alias mktar='tar -cvf'
alias mkgz='tar -cvzf'
alias mktxz='tar -cvJf'          # xz compression
alias untar='tar -xvf'
alias ungz='tar -xvzf'
alias unxz='tar -xvJf'           # xz extraction
alias lstar='tar -tvf'           # list contents without extracting

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
