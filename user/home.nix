{ inputs, ... }:

{

    imports = [
        inputs.nvf.homeManagerModules.default
        inputs.niri-flake.homeModules.niri
        (inputs.import-tree ./modules)
    ];

    programs.home-manager.enable = true;

    home = {
        username = "muhammadtalha";
        homeDirectory = "/home/muhammadtalha";
        pointerCursor.enable = true;
        stateVersion = "26.05";
    };

}
