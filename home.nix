{ config, pkgs, ... }:

{
  
  home.username = "muhammadtalha";
  home.homeDirectory = "/home/muhammadtalha";

  home.stateVersion = "26.05"; 

  
  programs.home-manager.enable = true;

  
  home.packages = with pkgs; [
    vscode
    localsend
    google-chrome
  ];
}