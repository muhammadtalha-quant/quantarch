function change_shell 
    printf "\e[0;31mWARNING: THIS WILL REBOOT SYSTEM AFTER SHELL CHANGE COMMANDS ARE RUN !\e[0m\nPRESS ANY KEY TO CONTINUE.....\n"
    read
    chsh -s "$(which fish)" muhammadtalha
    sudo chsh -s "$(which fish)" root
    reboot
end