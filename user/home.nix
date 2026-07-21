{ inputs, ... }:

{

    imports = [
        inputs.nvf.homeManagerModules.default
        inputs.noctalia.homeModules.default
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
