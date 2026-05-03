function pkginstall --description "Browse and mark packages for installation"
    set -l fzf_opts --layout=reverse-list --multi --preview-window=down:60%
    set -l options R/repo A/aur F/flathub s/single
    argparse $options -- $argv; or return 1
    if set -q _flag_R
        if not set -q _flag_s
            pacman -Slq \
                | fzf $fzf_opts --preview 'pacman -Sii {1}' \
                --header 'ENTER: Install | TAB: Select | Up/Down: Scroll' \
                | xargs -ro sudo pacman -S --needed
        else
            sudo pacman -S --needed "$argv[1]"
        end
    else if set -q _flag_A
        if not set -q _flag_s
            yay -Slq --aur \
                | fzf $fzf_opts --preview 'yay -Sii --aur {1}' \
                --bind 'ctrl-b:preview(yay -Gp {1})' \
                --bind 'alt-b:preview(yay -Sii {1})' \
                --header 'ENTER: Install | TAB: Select | ^B: PKGBUILD | M-B: Info' \
                | xargs -ro yay -S --aur --needed
        else
            yay -S --aur --needed "$argv[1]"
        end
    else if set -q _flag_F
        if not set -q _flag_s
            flatpak remote-ls flathub --app --columns=application \
                | fzf $fzf_opts --preview 'flatpak remote-info flathub {1}' \
                --header 'ENTER: Install | TAB: Select | Up/Down: Scroll' \
                | xargs -ro -n1 flatpak install flathub --or-update
        else
            flatpak install flathub --or-update "$argv[1]"
        end
    else
        printf "Usage: pkginstall <provider> [option]\n\n"
        printf "Arguments:\n"
        printf "  provider    Package source to browse and install from (required)\n\n"
        printf "Providers:\n"
        printf "  -R, --repo           Browse and install from configured pacman repositories\n"
        printf "  -A, --aur            Browse and install from the Arch User Repository\n"
        printf "                       ^B to preview PKGBUILD, M-B to view package info\n"
        printf "  -F, --flathub        Browse and install from Flathub\n\n"
        printf "Keybinds (all providers):\n"
        printf "  TAB                  Select multiple packages\n"
        printf "  ENTER                Install selected packages\n"
        printf "  Up/Down              Scroll list\n"
        printf "Option:\n"
        printf "  -s, --single  <pkg>  Install <pkg> without going into fzf menu\n"
        return 1
    end
end
