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
    scrollback = "never";
    scrollback_lines = 100000;
    enabled_layouts  = "splits,stack";
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
    "ctrl+shift+q" = "close_tab";
    "ctrl+shift+left" = "previous_tab";
    "ctrl+shift+right" = "next_tab";
    "ctrl+shift+enter" = "launch --location=vsplit --cwd=current";
    "ctrl+alt+enter" = "launch --location=hsplit --cwd=current";
    "ctrl+alt+left" =  "resize_window narrower 2";
    "ctrl+alt+right" =  "resize_window wider 2";
    "ctrl+alt+up" =  "resize_window taller 2";
    "ctrl+alt+down" =  "resize_window shorter 2";
    "ctrl+shift+home" =  "resize_window reset";
    "ctrl+left" =  "neighboring_window left";
    "ctrl+right" =  "neighboring_window right";
    "ctrl+up" =  "neighboring_window up";
    "ctrl+down" =  "neighboring_window down";
    "ctrl+shift+equal" = "change_font_size all +2.0";
    "ctrl+shift+minus" = "change_font_size all -2.0";
    "ctrl+shift+backspace" = "change_font_size all 0";
  };
}
