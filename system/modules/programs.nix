{pkgs, ...}: {
  programs.sway = {
    enable = true;
    extraPackages = [];
  };
  programs.fish.enable = true;
  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
    enableSSHSupport = true;
  };
}
