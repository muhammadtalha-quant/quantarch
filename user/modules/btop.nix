{ ... }: {
    programs.btop = {
        enable = true;
        settings = {
            theme_background = true;
            truecolor = true;
            disable_presets = "Off";
            graph_symbol = "braille";
            update_ms = 100;
        };
    };
}
