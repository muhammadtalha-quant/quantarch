function sysupdate --description "Update all packages of the selected domain"
    switch "$argv[1]"
        case -s --system
            yay --noconfirm
        case -f --only-flatpaks
            flatpak update -y
            flatpak uninstall -y --unused
        case '*' # defaylt behaviour; update everything
            yay --noconfirm
            flatpak update -y
            flatpak uninstall -y --unused
    end
end
