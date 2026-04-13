# Path to your Oh My Zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"
export ZSH_CUSTOM="$ZDOTDIR/ohmyzsh/custom"

if [[ ":$PATH:" != *"/home/$USER/.local/bin"* ]];
then
	export PATH=$PATH:/home/$USER/.local/bin
fi


# theme null; because we are using oh my posh
ZSH_THEME=""

# plugins
plugins=(git
	zsh-autosuggestions
	zsh-syntax-highlighting
	)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR=vim
export VISUAL=zeditor

# My custom overrides

# Updates the whole system (including flatpaks)
alias system-update="yay --noconfirm && flatpak update -y && flatpak uninstall -y --unused"
# Launches a multi-select fzf view for [un]installing packages from extra,core and the AUR.
alias yi="yay -Slq | fzf --layout=reverse-list --multi --preview 'yay -Sii {1}' --preview-window=down:60% --bind 'ctrl-b:preview(yay -Gp {1})' --bind 'alt-b:preview(yay -Sii {1})' --header 'ENTER: Install | TAB: Select | Up/Down: Scroll | ^B: Show PKGBUILD | M-B: Show Information' | xargs -ro yay -S --needed"
alias remyi='yay -Qq | fzf --layout=reverse-list --multi | xargs -ro yay -Rns'
# Launches a multi-select fzf view for [un]installing flatpaks from flathub remote.
alias fpi="flatpak remote-ls flathub --app --columns=application | fzf --layout=reverse-list --multi --preview='flatpak remote-info flathub {1}' --preview-window=down:60% | xargs -ro -n1 flatpak install flathub --or-update"
alias remfpi="flatpak list --app --columns=application | fzf --layout=reverse-list --multi | xargs -ro -n1 flatpak uninstall && flatpak uninstall -y --unused"

# Edit and source .zshrc
alias ezrc="vim ~/.config/zsh/.zshrc && source ~/.config/zsh/.zshrc"

# Alias for ls commands

alias la='ls -Alh'                # show hidden files
alias ls='ls -aFh --color=always' # add colors and file type extensions
alias lx='ls -lXBh'               # sort by extension
alias lk='ls -lSrh'               # sort by size
alias lc='ls -ltcrh'              # sort by change time
alias lu='ls -lturh'              # sort by access time
alias lr='ls -lRh'                # recursive ls
alias lt='ls -ltrh'               # sort by date
alias lm='ls -alh |more'          # pipe through 'more'
alias lw='ls -xAh'                # wide listing format
alias ll='ls -Fls'                # long listing format
alias labc='ls -lap'              # alphabetical sort
alias lf="ls -l | egrep -v '^d'"  # files only
alias ldir="ls -l | egrep '^d'"   # directories only
alias lla='ls -Al'                # List and Hidden Files
alias las='ls -A'                 # Hidden Files
alias lls='ls -l'                 # List

# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Alias chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# Alias for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# Alias necessary commands
alias snano='sudo nano'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -Irv'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias vi='vim'
alias svi='sudo vi'
alias vis='vim "+set si"'
alias lg='lazygit'
alias linutil='curl -fsSL https://christitus.com/linux | sh'

# OMP Prompt Init
eval "$(oh-my-posh init zsh --config "gruvbox")"
