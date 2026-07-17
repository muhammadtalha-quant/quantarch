{
    programs = {
        starship.enable = true;
        zathura.enable = true;
        cava = {
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
        btop = {
            enable = true;
            settings = {
                theme_background = true;
                truecolor = true;
                disable_presets = "Off";
                graph_symbol = "braille";
                update_ms = 100;
            };
        };
        imv.enable = true;
        mpv = {
            enable = true;
            config = {
                cache-default = 4000000;
                force-window = true;
                profile = "gpu-hq";
                ytdl-format = "bestvideo+bestaudio";
            };
        };
        satty.enable = true;
    };
}
