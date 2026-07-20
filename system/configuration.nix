{ inputs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        (inputs.import-tree ./modules)
    ];

    environment.sessionVariables = {
        LIBVA_DRIVER_NAME = "iHD";
        EDITOR = "nvim";
        VISUAL = "nvim";
        FLAKE_PATH = "/home/muhammadtalha/dotnix";
        LANG = "en_US.UTF-8";
    };
    time.timeZone = "Asia/Karachi";
    nixpkgs.config.allowUnfree = true;
    system.stateVersion = "26.05";

}
