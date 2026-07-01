{ config, inputs, ... }:

{

  imports = [
      ./modules/fish.nix
      ./modules/starship.nix
      ./modules/fastfetch.nix
      ./modules/kitty.nix
      ./modules/vcs.nix
      ./modules/eza.nix
      inputs.noctalia.homeModules.default
      ./modules/noctalia.nix
      ./modules/sway.nix
      ./modules/btop.nix
      ./modules/packages.nix
      ./modules/cava.nix
      ./modules/wmutils.nix
      ./modules/styling.nix
  ];
  
  home.username = "muhammadtalha";
  home.homeDirectory = "/home/muhammadtalha";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
 
}
