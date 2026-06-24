{pkgs, ...}: {
  programs.sway = {
    enable = true;
    xwayland.enable = true;
    extraPackages = [ pkgs.autotiling ];
  };
  programs.fish.enable = true;
  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
    enableSSHSupport = true;
  };
}
