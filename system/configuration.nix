{ config, pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
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
  ];


  time.timeZone = "Asia/Karachi";


  nixpkgs.config.allowUnfree = true;

  
  nix.settings.experimental-features = [ "nix-command" "flakes"];	
  system.stateVersion = "26.05";
}
