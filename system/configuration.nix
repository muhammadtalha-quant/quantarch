{ config, inputs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./modules/hardware.nix
        ./modules/audio.nix
        ./modules/stylix.nix
        ./modules/services.nix
        ./modules/users.nix
        ./modules/bootloader.nix
        ./modules/programs.nix
        ./modules/packages.nix
        ./modules/networking.nix
        ./modules/firewall.nix
        ./modules/i18n.nix
        ./modules/nix.nix
        ./modules/nh.nix
        ./modules/xdg.nix
        inputs.niri.nixosModules.niri
    ];

    environment.sessionVariables = {
        LIBVA_DRIVER_NAME = "iHD";
        DMS_DISABLE_MATUGEN = "true";
        EDITOR = "nvim";
        VISUAL = "nvim";
        FLAKE_PATH = "/home/muhammadtalha/dotnix";
        LANG = "en_US.UTF-8";
    };
    time.timeZone = "Asia/Karachi";
    nixpkgs.config.allowUnfree = true;
    system.stateVersion = "26.05";

}
