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
  programs.dconf.enable = true;
}
