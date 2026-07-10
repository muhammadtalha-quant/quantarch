{
    programs.kitty = {
        enable = true;
        font = {
            name = "JetBrainsMono Nerd Font Mono";
            size = 14;
        };
        settings = {
            remember_window_size = true;
            background_opacity = 0.95;
            confirm_os_window_close = 0;
            enable_audio_bell = false;
            scrollback = "never";
            scrollback_lines = 100000;
            enabled_layouts = "splits,stack";
        };
        # this is vanilla gruvbox theme; yanked from noctalia shell templates
        extraConfig = ''
            color0 #282828
            color1 #cc241d
            color2 #98971a
            color3 #d79921
            color4 #458588
            color5 #b16286
            color6 #689d6a
            color7 #a89984
            color8 #928374
            color9 #fb4934
            color10 #b8bb26
            color11 #fabd2f
            color12 #83a598
            color13 #d3869b
            color14 #8ec07c
            color15 #ebdbb2
            cursor                #ebdbb2
            cursor_text_color     #282828
            background            #282828
            foreground            #ebdbb2
            selection_foreground  #ebdbb2
            selection_background  #665c54
            active_border_color   #b8bb26
            inactive_border_color #3c3836
            url_color             #b8bb26
            active_tab_foreground   #282828
            active_tab_background   #b8bb26
            inactive_tab_foreground #ebdbb2
            inactive_tab_background #3c3836
            cursor_trail_color      #ebdbb2
        '';
        enableGitIntegration = true;
        keybindings = {
            "ctrl+shift+c" = "copy_to_clipboard";
            "ctrl+shift+v" = "paste_from_clipboard";
            "ctrl+shift+up" = "scroll_line_up";
            "ctrl+shift+down" = "scroll_line_down";
            "page_up" = "scroll_page_up";
            "page_down" = "scroll_page_down";
            "ctrl+shift+t" = "no_op";
            "ctrl+shift+q" = "no_op";
            "ctrl+shift+left" = "no_op";
            "ctrl+shift+right" = "no_op";
            "ctrl+shift+enter" = "no_op";
            "ctrl+shift+w" = "no_op";
            "ctrl+shift+equal" = "change_font_size all +2.0";
            "ctrl+shift+minus" = "change_font_size all -2.0";
            "ctrl+shift+backspace" = "change_font_size all 0";
        };
    };
}
