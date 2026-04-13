#!/usr/bin/env zsh

install_chaoticaur() {
    sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
    sudo pacman-key --lsign-key 3056513887B78AEB
    sudo pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
    sudo pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
    print "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf > /dev/null 2>&1
    sudo pacman -Syy --needed --noconfirm konsave
}

copy_dotfiles() {
    print "Copying and Symlinking Zsh Dotfiles\n"
    cp -r zsh ~/.config/
    ln -s ~/.config/zsh/.zshrc ~/.zshrc
    source ~/.zshrc
    print "Successfully Copied and Symlinked Configurations"
}

change_shell() {
    print "Changing Shell"
    chsh -s $(which zsh)
    sudo chsh -s $(which zsh)
    reboot
}

install_ohmyzsh() {
    print "\nInstalling Oh My Zsh\n"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
}

install_omz_plugins() {
    print "Installing necessary zsh plugins\n"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    print "\nPlugins Successfully Installed"
    source ~/.zshrc
}

install_gitconfig() {
    print "\nInstalling your custom .gitconfig\n"
	cp git/.gitconfig ~/
	print "Successfully installed .gitconfig in your home\n"
}

install_prompt() {
    curl -s https://ohmyposh.dev/install.sh | bash -s
    source ~/.zshrc
}

install_chaoticaur
print
install_ohmyzsh
print
copy_dotfiles
print
install_omz_plugins
print
install_prompt
print
install_gitconfig
print
change_shell
