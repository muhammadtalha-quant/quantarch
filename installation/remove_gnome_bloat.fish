# @fish-lsp-disable 4004

function remove_gnome_bloat
    sudo pacman -Rns decibels\ 
        epiphany\ 
        gnome-connections\ 
        gnome-contacts\ 
        gnome-maps\ 
        gnome-music\ 
        gnome-remote-desktop\ 
        gnome-tour\ 
        gnome-weather\ 
        orca\ 
        simple-scan\    
        yelp\ 
        malcontent\ 
        gnome-terminal\ 
end
