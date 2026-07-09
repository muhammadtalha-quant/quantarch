{pkgs, inputs,  ...}: {
  programs.sway = {
    enable = true;
    package = pkgs.sway;
    wrapperFeatures.gtk = true;
    xwayland.enable = true;
    extraPackages = [ ];
  };
  programs.fish.enable = true;
  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
    enableSSHSupport = true;
  }; 
  programs.gpu-screen-recorder.enable = true;
  programs.dconf.enable = true;
}
