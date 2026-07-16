{ config, inputs, ... }:

{

    imports = [
        ./modules/fish.nix
        ./modules/starship.nix
        ./modules/fastfetch.nix
        ./modules/ghostty.nix
        ./modules/vcs.nix
        ./modules/eza.nix
        inputs.dms.homeModules.dank-material-shell
        inputs.dms.homeModules.niri
        ./modules/dms.nix
        #./modules/niri.nix
        ./modules/btop.nix
        ./modules/packages.nix
        ./modules/cava.nix
        ./modules/wmutils.nix
        inputs.nvf.homeManagerModules.default
        ./modules/nvim.nix
        ./modules/yazi.nix
        ./modules/zathura.nix
        ./modules/tmux.nix
    ];

    programs.home-manager.enable = true;

    home = {
        username = "muhammadtalha";
        homeDirectory = "/home/muhammadtalha";
        stateVersion = "26.05";
    };

}
