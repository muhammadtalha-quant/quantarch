{config, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/hardware.nix
    ./modules/audio.nix
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
    inputs.noctalia-greeter.nixosModules.default
  ];

  time.timeZone = "Asia/Karachi";
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "26.05";

}
