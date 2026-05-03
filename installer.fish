!#/usr/bin/env fish

# load every function
for ftn in ./installation/*.fish 
    source $ftn
end

printf "\e[1;31mWARNING !: \e[0m This script will periodically ask for your sudo password so sit and watch !\n"

install_chaotic_aur
install_goodies
remove_gnome_bloat
load_gnome_settings
install_term_essentials
change_shell
