{pkgs, ...}: {
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = false;
    portalPackage = pkgs.xdg-desktop-portal-hyprland;
  };
  programs.fish.enable = true;
  #programs.starship.enable = true;
  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
    enableSSHSupport = true;
  };
}