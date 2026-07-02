{pkgs, ...}: 
{
  home.packages = with pkgs; [
    vscode # intended for removal
    google-chrome
    nautilus
    wl-clipboard
  ];
}
