{
    stylix.targets.starship.enable = false;
    programs.starship = {
        enable = true;
        presets = [ "catppuccin-powerline" ];
        # custom overrides
        settings = {
            os.symbols.NixOS = " ";
            palette = "catppuccin_macchiato";
        };
    };
}
