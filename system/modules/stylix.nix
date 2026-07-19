{ pkgs, ... }: {
    stylix = {
        overlays.enable = false;
        enable = true;
        base16Scheme = {
            base00 = "282828";
            base01 = "3c3836";
            base02 = "504945";
            base03 = "665c50";
            base04 = "bdae93";
            base05 = "d5c4a1";
            base06 = "ebdbb2";
            base07 = "fbf1c7";
            base08 = "fb4934";
            base09 = "fe8019";
            base0A = "fabd2f";
            base0B = "b8bb26";
            base0C = "5f6c1f";
            base0D = "b8bb26";
            base0E = "96bda2";
            base0F = "d65d0e";
        };
        polarity = "dark";
        fonts = {
            serif = {
                package = pkgs.noto-fonts;
                name = "NotoSans";
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
            name = "Capitaine Cursors (Gruvbox)";
            package = pkgs.capitaine-cursors-themed;
            size = 26;
        };
    };
}
