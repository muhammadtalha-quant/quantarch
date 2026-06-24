{ config, pkgs, inputs, ... }:

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
  ];
  
  home.username = "muhammadtalha";
  home.homeDirectory = "/home/muhammadtalha";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
  # base packages
  home.packages = with pkgs; [
    vscode # intended for removal
    localsend
    google-chrome
  ];
}
