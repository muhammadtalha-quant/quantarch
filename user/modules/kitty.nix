{...}: {
  programs.kitty.enable = true;
  programs.kitty.font = {
    name = "JetBrainsMono Nerd Font Mono";
    size = 14;
  };
  programs.kitty.settings = {
    remember_window_size = true;
    background_opacity = 0.8;
    confirm_os_window_close = 0;
    enable_audio_bell = false;
    srollback = "never";
    srollback_lines = 100000;
  };
  programs.kitty.themeFile =  "GruvboxMaterialDarkHard";
  programs.kitty.enableGitIntegration = true;
  programs.kitty.keybindings = {
    "ctrl+shift+c" = "copy_to_clipboard";
    "ctrl+shift+v" = "paste_from_clipboard";
    "ctrl+shift+up" = "scroll_line_up";
    "ctrl+shift+down" = "scroll_line_down";
    "page_up" = "scroll_page_up";
    "page_down" = "scroll_page_down";
    "ctrl+shift+t" = "new_tab";
    "ctrl+shift+q" = "clost_tab";
    "ctrl+shift+left" = "previous_tab";
    "ctrl+shift+right" = "next_tab";
    "ctrl+shift+equal" = "change_font_size all +2.0";
    "ctrl+shift+minus" = "change_font_size all -2.0";
    "ctrl+shift+backspace" = "change_font_size all 0";
  };
}