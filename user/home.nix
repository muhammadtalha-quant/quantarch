{ inputs, ... }:

{

    imports = [
        inputs.dms.homeModules.dank-material-shell
        inputs.dms.homeModules.niri
        inputs.nvf.homeManagerModules.default
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
