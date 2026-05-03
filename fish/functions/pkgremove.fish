function pkgremove --description "Browse and mark packages for deletion"
    set -l fzf_opts --layout=reverse-list --multi --header 'ENTER: Uninstall | TAB: Select | Up/Down: Scroll'
    set -l options S/system F/flatpak s/single
    argparse $options -- $argv; or return 1
    if set -q _flag_S
        if not set -q _flag_s
            yay -Qq \
                | fzf $fzf_opts \
                | xargs -ro yay -Rns
        else
            yay -Rns "$argv[1]"
        end
    else if set -q _flag_F
        if not set -q _flag_s
            flatpak list --app --columns=application \
                | fzf $fzf_opts \
                | xargs -ro -n1 flatpak uninstall
        else
            flatpak uninstall "$argv[1]"
        end
        flatpak uninstall -y --unused
    else
        printf "Usage: pkgremove <scope>\n"
        printf "       pkgremove <scope> [-s|--single] <pkg>\tTo remove <pkg> directly\n\n"
        printf "Arguments:\n"
        printf "  scope    Determines what package set to uninstall from (required)\n\n"
        printf "Scopes:\n"
        printf "  -S, --system   Browse and remove installed system packages (pacman + AUR)\n"
        printf "                 Uses 'yay -Rns' to also remove unneeded dependencies\n"
        printf "  -F, --flatpak  Browse and remove installed Flatpak apps\n"
        printf "                 Unused runtimes are cleaned up automatically\n\n"
        return 1
    end

end
