#!/usr/bin/env zsh

copy_dotfiles() {
    echo -e "Copying and Symlinking Zsh Dotfiles\n"
    cp -r zsh ~/.config/
    ln -s ~/.config/zsh/.zshrc ~/.zshrc
    source ~/.zshrc
    echo -e "Successfully Copied and Symlinked Configurations"
}

change_shell() {
    echo -e "Changing Shell"
    chsh -s $(which zsh)
    sudo chsh -s $(which zsh)
    reboot
}

install_ohmyzsh() {
    echo -e "\nInstalling Oh My Zsh\n"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
}

install_omz_plugins() {
    echo -e "Installing necessary zsh plugins\n"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    echo -e "\nPlugins Successfully Installed"
    source ~/.zshrc
}

install_prompt() {
    curl -s https://ohmyposh.dev/install.sh | bash -s
    source ~/.zshrc

}


install_ohmyzsh
echo -e "\n"
copy_dotfiles
echo -e "\n"
install_omz_plugins
echo -e "\n"
install_prompt
echo -e "\n"
change_shell
