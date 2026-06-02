#!/usr/bin/env fish

function bootstrap
    function __remove_preinstalled_garbage__ 
        sudo pacman -Rnsc wofi dunst dolphin uwsm vim 
    end
    function __install_chaotic_aur__
        sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
        sudo pacman-key --lsign-key 3056513887B78AEB
        sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
        sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
        echo -e "[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf 2>&1 >/dev/null
    end

    function __install_dotfiles__
        for dir in (eza --color=never --only-dirs)
            stow -S $dir
        end
        fisher update
    end
    if gum confirm "Do you want the repository Chaotic AUR should be configured ?"
        __install_chaotic_aur__
    end
    __remove_preinstalled_garbage__
    __install_dotfiles__
    functions -e __remove_preinstalled_garbage__
    functions -e __install_chaotic_aur__
    functions -e __install_dotfiles
end

bootstrap