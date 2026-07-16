{ pkgs, ... }: {
    stylix = {
        overlays.enable = false;
        enable = true;
        base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-dark-medium.yaml";
        polarity = "dark";
        fonts = {
            serif = {
                package = pkgs.inter;
                name = "Inter Variable";
            };

            sansSerif = {
                package = pkgs.inter;
                name = "Inter Variable";
            };

            monospace = {
                package = pkgs.nerd-fonts.jetbrains-mono;
                name = "JetBrainsMono Nerd Font Mono";
            };

            emoji = {
                package = pkgs.noto-fonts-color-emoji;
                name = "Noto Color Emoji";
            };
        };
        icons = {
            enable = true;
            package = pkgs.papirus-icon-theme;
            dark = "Papirus-Dark";
        };
        cursor = {
            name = "catppuccin-macchiato-peach-cursors";
            package = pkgs.catppuccin-cursors;
            size = 24;
        };
    };

}
