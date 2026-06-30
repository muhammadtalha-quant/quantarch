{pkgs, ...}: 
{
  home.packages = with pkgs; [
    vscode # intended for removal
    localsend
    google-chrome
    nautilus
    wl-clipboard
  ];
}