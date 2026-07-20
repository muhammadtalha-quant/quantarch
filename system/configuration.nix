{ inputs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        (inputs.import-tree ./modules)
        inputs.niri.nixosModules.niri
    ];

    niri-flake.cache.enable = false;
    environment.sessionVariables = {
        LIBVA_DRIVER_NAME = "iHD";
        DMS_DISABLE_MATUGEN = "true";
        DMS_SCREENSHOT_EDITOR = "satty";
        EDITOR = "nvim";
        VISUAL = "nvim";
        FLAKE_PATH = "/home/muhammadtalha/dotnix";
        LANG = "en_US.UTF-8";
    };
    time.timeZone = "Asia/Karachi";
    nixpkgs.config.allowUnfree = true;
    system.stateVersion = "26.05";

}
