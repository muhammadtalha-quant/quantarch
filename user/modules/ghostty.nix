{
    stylix.targets.ghostty = {
        fonts.enable = false;
    };
    programs.ghostty = {
        enable = true;
        enableFishIntegration = true;
        settings = {
            font-size = 14;
            font-family = "JetBrainsMono Nerd Font Mono";
            window-decoration = "none";
            confirm-close-surface = false;
            mouse-hide-while-typing = true;
            copy-on-select = "clipboard";
            scrollback-limit = 100000;
            cursor-style = "bar";
            clipboard-read = "allow";
            clipboard-write = "allow";
            keybind = [
                "ctrl+shift+equal=increase_font_size:2"
                "ctrl+shift+minus=decrease_font_size:2"
                "ctrl+shift+backspace=reset_font_size"
                "ctrl+shift+c=copy_to_clipboard"
                "ctrl+shift+v=paste_from_clipboard"
                "ctrl+shift+t=unbind"
                "ctrl+shift+w=unbind"
                "ctrl+shift+o=unbind"
                "ctrl+shift+n=unbind"
                "ctrl+shift+e=unbind"
                "ctrl+shift+i=unbind"
                "ctrl+shift+f=unbind"
                "ctrl+shift+a=unbind"
                "ctrl+a=select_all"
                "ctrl+shift+page_up=scroll_page_up"
                "ctrl+shift+page_down=scroll_page_down"
                "ctrl+shift+home=scroll_to_top"
                "ctrl+shift+end=scroll_to_bottom"
                "ctrl+shift+up=scroll_page_lines:-1"
                "ctrl+shift+down=scroll_page_lines:1"
            ];
        };
    };
}
