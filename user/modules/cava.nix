{ ... }: {
    programs.cava = {
        enable = true;
        settings = {
            general = {
                framerate = 60;
                bars = 0; # fill available space
                bar_width = 2;
                bar_spacing = 1;
                max_height = 100; # total height of terminal
            };
            output = {
                method = "noncurses";
                orientation = "bottom";
            };
        };
    };
}

