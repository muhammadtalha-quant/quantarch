{...}: {
  programs.cava = {
    enable = true;
    settings = {
      general.framerate = 60;
      general.bars = 0; # fill available space
      general.bar_width = 2;
      general.bar_spacing = 1;
      general.max_height = 100; # total height of terminal
      output.method = "noncurses";
      output.orientation = "bottom";
      color.theme = "noctalia";
    };
  };
  xdg.configFile."cava/themes/noctalia".text = ''
    [color]
    foreground = '#b8bb26'
    
    gradient = 1
    gradient_color_1 = '#444507'
    gradient_color_2 = '#b8bb26'
    gradient_color_3 = '#f6f6d5'
    
    horizontal_gradient = 0
    horizontal_gradient_color_1 = '#444507'
    horizontal_gradient_color_2 = '#b8bb26'
    horizontal_gradient_color_3 = '#f6f6d5'
    horizontal_gradient_color_4 = '#b8bb26'
    horizontal_gradient_color_5 = '#444507'
  '';
}