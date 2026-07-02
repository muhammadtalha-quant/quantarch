{pkgs, inputs,  ...}: {
  programs.sway = {
    enable = true;
    package = pkgs.swayfx;
    xwayland.enable = true;
    extraPackages = [ ];
  };
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
  programs.fish.enable = true;
  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
    enableSSHSupport = true;
  };
  programs.noctalia-greeter = {
    enable = true;
    package = inputs.noctalia-greeter.packages.${pkgs.stdenv.hostPlatform.system}.default;
  
    # Optional configuration
    greeter-args = "";
    settings = {
      cursor = {
        theme = "Capitaine Cursors (Gruvbox)";
        size = 28;
      };
      keyboard = {
        layout = "us";
      };
    };
  };
  programs.gpu-screen-recorder.enable = true;
}
