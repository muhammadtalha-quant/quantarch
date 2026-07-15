{ ... }: {
    programs.kitty = {
        enable = true;
        settings = {
            remember_window_size = true;
            confirm_os_window_close = 0;
            enable_audio_bell = false;
            scrollback = "never";
            scrollback_lines = 100000;
            enabled_layouts = "splits,stack";
        };
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
