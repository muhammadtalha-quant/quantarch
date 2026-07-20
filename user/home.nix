{ config, inputs, ... }:

{

    imports = [
        ./modules/fish.nix
        ./modules/fastfetch.nix
        ./modules/ghostty.nix
        ./modules/starship.nix
        ./modules/vcs.nix
        ./modules/eza.nix
        inputs.dms.homeModules.dank-material-shell
        inputs.dms.homeModules.niri
        ./modules/dms.nix
        ./modules/niri.nix
        ./modules/packages.nix
        ./modules/programs.nix
        inputs.nvf.homeManagerModules.default
        ./modules/nvim.nix
        ./modules/yazi.nix
        ./modules/tmux.nix
    ];

    programs.home-manager.enable = true;

    home = {
        username = "muhammadtalha";
        homeDirectory = "/home/muhammadtalha";
        pointerCursor.enable = true;
        stateVersion = "26.05";
    };

}
